
#ifndef _EGAPI_H_
#define _EGAPI_H_

#define EAGLE_API_VERSION	"2.3_1210"

#ifndef LX_API

#ifdef WIN32
#ifndef _WIN32
#define _WIN32
#endif
#endif

#ifdef _WIN32
#ifdef LX_EAGLE_EXPORTS
#define  LX_EXPORT __declspec(dllexport)
#else
#define  LX_EXPORT __declspec(dllimport)
#endif 

#define LX_STDC __stdcall
#else
#define  LX_EXPORT

#if defined(__i386__)
#define LX_STDC __attribute__((stdcall))
#else
#define LX_STDC 
#endif
#endif

#if defined(__cplusplus)
#define LX_EXTC extern "C"
#else
#define LX_EXTC
#endif

typedef enum LX_STATE
{
	LX_SUCCESS = 0,
	LX_ERROR = -1,
}LX_STATE;

#define LX_API LX_EXTC LX_EXPORT LX_STATE LX_STDC
#endif

typedef enum OpenMode
{
	OpenByIndex = 0,
	OpenByID = 1,
	OpenByIP = 2
}OpenMode;

struct lx_device_info
{
	char	id[32];
	char	ip[32];
	char	sn[32];
	char	mac[32];
	char	version[32];
	bool	is_uvc;
};

//功能：查找eagle系列相机
//参数：[in]type		查找模式 0：所有设备 1：USB设备 2：网络设备
//		[out]count  查找到的相机数量
LX_API EG_GetDeviceList(int& count, int type);

//功能：获取相机信息，需先调用EG_GetDeviceList
//参数：[in]index  设备索引，不超过相机查找到的相机数量
//		[out]info  对应的相机信息，参考lx_device_info
LX_API EG_GetDeviceInfo(int index, lx_device_info& info);

//功能：连接相机，网络设备连接前需确认本机IP与设备IP设置正确
//参数：[in][out]index  连接正常设置为非负值，用于设备标识，连接失败，设置为-1
//		[in]type	0：以索引方式连接，需先调用WK_GetDeviceList, param参数无效
//					1：按相机ID连接，需先调用WK_GetDeviceList, param为相机ID
//					2：按IP地址连接，param为相机IP
LX_API EG_OpenDevice(int& index, const char* param, OpenMode type);

//功能: 关闭设备
//参数：[in]index  设备索引
LX_API EG_CloseDevice(int index);

//功能: 打开数据流
//参数：[in]index  设备索引
LX_API EG_StartStream(int index);

//功能: 关闭数据流
//参数：[in]index  设备索引
LX_API EG_StopStream(int index);

//功能: 获取深度图像分辨率
//参数：[in]index  设备索引
//		[out]height 
//		[out]width 
LX_API EG_GetSize(int index, int& height, int& width);

//功能: 获取RGB图像分辨率
//参数：[in]index  设备索引
//		[out]height 
//		[out]width 
//		[out]rgb_channels  1：灰度图像，3：rgb图像
LX_API EG_GetColorSize(int index, int& rgb_height, int& rgb_width, int& rgb_channels);

//功能: 获取最新一帧数据
//参数：[in]index  设备索引
LX_API EG_GetNewFrame(int index);

//功能: 深度图像滤波，此函数在EG_GetNewFrame之后使用
//参数：[in]index  设备索引
//		[in]filter_level	滤波等级，filter_level<0时使用filter.json文件配置的参数，路径参考EG_SetParamPath，等价于EG_Filter_Custom
//							filter_level范围0-1，值越大，滤波越强，0表示不滤波
LX_API EG_Filter(int index, float filter_level = 0.5);

//功能: 获取深度图像，须先调用EG_GetNewFrame
//参数：[in]index  设备索引
//		[out]depth 数据指针，大小为width*height*sizeof(short)，内部维护，无需释放
LX_API EG_GetDepth(int index, unsigned short** depth);

//功能: 获取强度图像，须先调用EG_GetNewFrame
//参数：[in]index  设备索引
//		[out]amp 数据指针，大小为width*height*sizeof(short)，内部维护，无需释放
LX_API EG_GetAmp(int index, unsigned short** amp);

//功能: 获取rgb图像，须先调用EG_GetNewFrame
//参数：[in]index  设备索引
//		[out]color 数据指针，大小为rgb_width*rgb_height*rgb_channel，内部维护，无需释放
LX_API EG_GetColor(int index, unsigned char** color);

//功能: 获取点云，须先调用EG_GetNewFrame
//参数：[in]index  设备索引
//		[out]color 数据指针，大小为tof_width*tof_height*sizeof(float)*3，内部维护，无需释放
LX_API EG_GetXYZ(int index, float** xyz);

//功能: 保存点云，须先调用EG_GetXYZ
//参数：[in]index  设备索引
//		[in]filename  文件名，支持txt,ply和pcd格式。txt格式按图像顺序保存所有数据，ply和pcd仅保存非零数据
LX_API EG_SaveXYZ(int index, const char* filename);

//功能: 升级固件
//参数：[in]index  设备索引
//		[in]filename  固件文件名
LX_API EG_FirmwareUpgrade(int index, const char* filename);

//功能: 设置相机IP和端口，如EG_SetCameraIp(index,"192.168.1.8",9800);
//参数：[in]index  设备索引
//		[in]ip IP
//		[in]port 端口，除9801
LX_API EG_SetCameraIp(int index, const char* ip, int port = 9800);

//功能: 深度图像与rgb图像对齐
//参数：[in]index		设备索引
//		[in]rectify		false：原始坐标系，深度图像和rgb图像带畸变
//						true: 深度图像对齐到rgb图像，都不带畸变
LX_API EG_RectifyDepth(int index, bool rectify);

//功能: 设置有效的信号强度，超出此范围则深度值为0
//参数：[in]index  设备索引
//		[in]minAmp  有效强度最小值
//		[in]maxAmp  有效强度最大值
LX_API EG_SetMinMaxAmp(int index, int minAmp, int maxAmp);

//功能: 设置积分时间，相机为HDR曝光模式，默认高低曝光为4:1
//参数：[in]index  设备索引
//		[in]high_exposure_us
//		[in]low_exposure_us 
LX_API EG_SetExposure(int index, double high_exposure_us, double low_exposure_us);

//功能: 获取当前积分时间
//参数：[in]index  设备索引
//		[out]high_exposure_us
//		[out]low_exposure_us 
LX_API EG_GetExposure(int index, double& high_exposure_us, double& low_exposure_us);

//功能: 获取相机帧率，为后台采集的实际帧率，不等于EG_GetNewFrame的频率
//参数：[in]index  设备索引
//		[out]fps  每秒采集帧率
LX_API EG_GetFPS(int index, int& fps);

//功能: 获取上次错误提示，每个EG_接口返回LX_ERROR时会更新
//参数：[in]index  设备索引
//param：[out]err		错误信息
//		[in]max_size	字符串最大长度，防止越界
LX_API EG_GetLastError(char* err, int max_size);

//功能: 设置打印信息等级
//参数：[in]print_level	0：verbose	所有调试信息
//						1：info		重要调试信息
//						2：error		仅输出错误信息
//      [in]enable_screen_print	是否在窗口打印
//		[in]log_path			log文件保存路径，默认为程序执行路径
LX_API EG_SetInfoOutput(int print_level = 2, bool enable_screen_print = false, const char * log_path = "");

//功能: 允许用户输出调试信息到log文件
//参数：[in]str 	要输出的字符串，'\0'结尾
LX_API EG_LOG(const char * str);

//功能: 获取API版本号
//参数：[out]version		API版本号
LX_API EG_GetApiVersion(char * version);


//*******废弃函数，保留仅兼容旧版******//
//设置参数路径，旧版相机需要参数文件
LX_API EG_SetParamPath(int index, const char* filepath);

//等同于调用EG_Filter(index,-1);使用参数文件filter.json的参数滤波
LX_API EG_Filter_Custom(int index);

#endif
