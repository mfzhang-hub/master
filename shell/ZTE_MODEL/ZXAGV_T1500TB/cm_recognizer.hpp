#ifndef LX_CMRecognizer_HPP
#define LX_CMRecognizer_HPP

#ifdef _WIN32
#ifdef LX_LIB_EXPORTS
#define  LX_EXPORT __declspec(dllexport)
#else
#define  LX_EXPORT __declspec(dllimport)
#endif

#else
#define  LX_EXPORT
#endif

#include <string>
#include <vector>
using recognizer_log = void(*)(std::string, int, void*);

namespace CM {

	struct CameraParams {
		std::string log_path;  //日志文件，存放异常的相关数据
		std::string path;  //本模块文件存放路径，算法初始化需要的文件都放在这个路径下，算法人员自己维护
	};
	
	//两侧机器人坐标，单位m
	struct RobotPose {
		float x_left;
		float y_left;
		float z_left;
		float x_right;
		float y_right;
		float z_right;
	};

	//左右两侧为一组功能，需实例化一个类，使用一个参数路径
	class LX_EXPORT CMRecognizer {
	public:
		CMRecognizer();
		~CMRecognizer() {};
	public:
		//输入路径，完成相机和参数初始化
		bool initial_alg(const CameraParams& config_file);
		
		//日志回调函数
		void set_logfun(recognizer_log call_back_fun, void* usr_data);

		//采集标定数据
		//先在示教位置采集，再按照设定采集几个位置的数据
		//rob_pose输入机器人当前位置坐标，frame_ID=0表示示教位置。其他参数无效
		bool getCameraPose(RobotPose& cam_pose, RobotPose& rob_pose, bool is_teach, int frame_ID = -1);
		
		//采集完数据，开始标定。
		bool calibrate_alg();

		bool calibrate_alg(std::vector<RobotPose> robot_poses,
			std::vector<RobotPose> camera_poses, RobotPose teach_robot_pose, RobotPose teach_camera_pose);

		//输入当前机器人坐标current_pose，输出目标坐标target_pose，frame_ID无效
		float run_alg(RobotPose current_pose, RobotPose& target_pose, int frame_ID = -1);
	};

}
#endif  //#ifndef LX_CMRecognizer_HPP
