#ifndef __LXTOFCAMERA_H__
#define __LXTOFCAMERA_H__
    

#include <ros/ros.h>
#include "image_transport/image_transport.h"  

class LxI2_25_Camera
{
public:
    LxI2_25_Camera();
    ~LxI2_25_Camera();

    void run();

private:
  	struct cameraInfo{
		int device_no;
		int w, h;
		int rgb_w, rgb_h,rgb_channles;
		int count;
	};
private:
   
	ros::NodeHandle nh_;
    image_transport::ImageTransport it_;
    image_transport::Publisher pubColor_;

    ros::Publisher pubCameraInfo;

    std::string camera_frame_id_;

    std::string str_param_file_path_;
    std::string str_log_path;
    std::string str_log_path2;
    std::string filter_param_file_path;
    cameraInfo info;
};

#endif
