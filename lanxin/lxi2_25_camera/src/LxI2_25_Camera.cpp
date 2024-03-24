#include "LxI2_25_Camera.h"
#include <sensor_msgs/PointCloud2.h>

#include "cv_bridge/cv_bridge.h"  
#include "sensor_msgs/image_encodings.h"  
#include "sensor_msgs/CameraInfo.h"
#include <opencv2/opencv.hpp>
#include <time.h>
#include <chrono>
#include <thread>

#include "../EgApi.h"
#include "../EgInternal.h"

using namespace std;
const float EPSINON = 0.00001;
int ID_Check = 0;
#define IS_ZERO(d) (abs(d) < EPSINON)

static char err[512];
#define checkEG(val) if(val==LX_ERROR){      \
	EG_GetLastError(err, 512);\
	abort();	\
	}

//0xFFFFFF11 : 指令使能
//0xAAAA : 控制补光灯
//0x4F4F : 设置ROI
//		： 设置曝光时间
unsigned short enablePara[] = {0xFFFF,0xFF11};

unsigned short enableFlash[][2] ={
	 {0xAAAA,0x0000},//关闭补光灯
	 {0xAAAA,0x1100},//内部补光灯闪亮
	 {0xAAAA,0x2200},//内部补光灯常亮
	 {0xAAAA,0x0011},//外部补光灯闪亮
	 {0xAAAA,0x0022},//外部补光灯常亮
};
unsigned short setROI[][2] ={
	 {0x0f01,0x0000},//上
	 {0x0f02,0x0000},//下
	 {0x0f03,0x0000},//左
	 {0x0f04,0x0000},//右
};

unsigned short setExpore[][2] = {{0x4f4f,0x0010},{0x4f4f,0x003F}};//曝光时间

void  setROI__(int device_no,int rate)
{

	if(rate < 1 && rate > 10) return ;

	int width = 1280;
	int height = 1024;

	int roi_w = (width - width/rate)/2;
	int roi_h = (height - height/rate)/2;


	setROI[0][1] = roi_h;
	setROI[1][1] = height -roi_h;
	setROI[2][1] = roi_w;
	setROI[3][1] = width -roi_w;

	EG_SetRegister(device_no,setROI[0],2);
	EG_SetRegister(device_no,setROI[1],2);
	EG_SetRegister(device_no,setROI[2],2);
	EG_SetRegister(device_no,setROI[3],2);
};

LxI2_25_Camera::LxI2_25_Camera()
: nh_("~"),it_(nh_)
{

	std::string frame_id_base;
	this->nh_.param<std::string>("frame_id_base", frame_id_base, "~");
	this->nh_.param<std::string>("param_file_path", str_param_file_path_, "~");
	std::string ip;
	this->nh_.param<std::string>("ip", ip, "");

	EG_SetInfoOutput(0,1,"");

	if(ip.empty()){
		int count=0;
		checkEG(EG_GetDeviceList(count, 0));
		if(!count){		
			exit(1);
		}
		info.device_no=0;
		checkEG(EG_OpenDevice(info.device_no, "", OpenByIndex));	

	}else{
		checkEG(EG_OpenDevice(info.device_no, ip.c_str(), OpenByIP));	
	}
	camera_frame_id_ = frame_id_base + "_link";

	EG_SetParamPath(info.device_no, str_param_file_path_.c_str());
	
	EG_GetSize(info.device_no, info.h, info.w);		
	EG_GetColorSize(info.device_no, info.rgb_h, info.rgb_w, info.rgb_channles);
	checkEG(EG_StartStream(info.device_no));

	//cout<<"enablePara:"<<endl;	
	EG_SetRegister(info.device_no,enablePara,2);
	usleep(1000);

	EG_SetRegister(info.device_no,enableFlash[1],2);
	usleep(1000);

	//setROI__(info.device_no,1);
	//usleep(1000);

	//EG_SetRegister(info.device_no,setExpore[1],2);//max time
	//usleep(1000);

	// init pcl visualization
	pubColor_= it_.advertise(frame_id_base +"_rgb", 1);
	pubCameraInfo = nh_.advertise<sensor_msgs::CameraInfo>(frame_id_base+"_camera_info", 1);
}

LxI2_25_Camera::~LxI2_25_Camera()
{
	ROS_INFO(">>> LxTofCamera::~LxTofCamera()");
	checkEG(EG_StopStream(info.device_no));
	EG_CloseDevice(info.device_no);
}

void LxI2_25_Camera::run()
{
	ros::Rate r(30);
	int fmcout = 0;
	std::ostringstream s;
	s.fill('0');

	while (ros::ok())
	{
		clock_t start, stop;
		start = clock();

		if (EG_GetNewFrame(info.device_no)==LX_ERROR
			) {
			EG_GetLastError(err, 512);
			std::cout << err << std::endl;
			std::this_thread::sleep_for(std::chrono::milliseconds(10));
			continue;
		}
		// EG_Filter_Custom(info.device_no);

		// float intr[9];
		// EG_GetIntricParam(info.device_no,intr);
		// sensor_msgs::CameraInfo camereInfo_;
		// camereInfo_.header.frame_id="intrinsic_depth";
		// camereInfo_.width=info.w;
		// camereInfo_.height=info.h;
		// camereInfo_.D=std::vector<double>{intr[4],intr[5],intr[6],intr[7],intr[8]};
		// camereInfo_.K=boost::array<double,9>{intr[0],0,intr[2],
		// 								 0,intr[1],intr[3],
		// 								 0,0,1};
		// camereInfo_.P=boost::array<double,12>{intr[0],0,intr[2],0,
		// 								 0,intr[1],intr[3],0,
		// 								 0,0,1,0};
		// pubCameraInfo.publish(camereInfo_);

		if(info.rgb_channles>0){
			uchar* color_ptr;
			EG_GetColor(info.device_no,&color_ptr);
			if(info.rgb_channles==3){
				cv::Mat color(cv::Size(info.rgb_w,info.rgb_h),CV_8UC3,color_ptr);
				sensor_msgs::ImagePtr msg_color = cv_bridge::CvImage(std_msgs::Header(), "8UC3", color).toImageMsg();
				pubColor_.publish(msg_color);
			}else if(info.rgb_channles==1){
				cv::Mat color(cv::Size(info.rgb_w,info.rgb_h),CV_8UC1,color_ptr);
				sensor_msgs::ImagePtr msg_color = cv_bridge::CvImage(std_msgs::Header(), "mono8", color).toImageMsg();
				pubColor_.publish(msg_color);
			}
		}

		stop = clock();		

		r.sleep();
		ros::spinOnce();
	}
}
