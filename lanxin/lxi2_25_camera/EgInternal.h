
#ifndef __LX_INTERNAL_H_
#define __LX_INTERNAL_H_
#include <vector>
#include <memory>
#include <stdint.h>
#include <string>
#include "EgApi.h"

typedef enum MODE {
	MODE_GRAYSCALE,
	MODE_DEPTH,
	MODE_DCS
}MODE;

using std::vector;
using ushort_ptr = unsigned short*;
struct vec_ptr {
	std::shared_ptr< ushort_ptr> ptr;
	size_t size;
};

//filter
//filter_names:		params:
//"median"			[r]
//"mode"			[interval threshold]
//"floodfill"		[distance_k distance_b threshold]
//"rmFlyPix"		[r k1 k0]
//"smoothdepth"		[iter_times beta enhence]
//rm_area			[x0 y0 x1 y1]如有多个区域可多次调用
LX_API EG_Filter_(int index, std::vector<std::string> filter_names, std::vector<std::vector<float>> params);

typedef  void  ( *EG_CALLBACK_FUNC) (bool fram_state, unsigned short* depth_ptr, unsigned short* amp_ptr);
//功能: 注册回调函数
//参数：[in]index  设备索引
LX_API EG_RegCallbackFunc(int index, EG_CALLBACK_FUNC func);
LX_API EG_unRegCallbackFunc(int index);


//LX_API EG_MedianFilter(int index, unsigned short** depth,int r);
//LX_API zhongshuFilter(int index, unsigned short** depth,int radius ,unsigned short  interval,int minCount);
//LX_API RmFlyPixelFilter(int index, unsigned short** depth,int radius, float k1, float k0);
//LX_API FloodFillFilter(int index, unsigned short** depth,float  max_dist,int threshold,float max_dist_k=1);
//LX_API PixelMerge(int index, unsigned short** depth);
//LX_API ScaleFilter(int index, unsigned short** depth);

//internal debug
LX_API EG_SetMode(int index, MODE mode);
LX_API EG_SwitchCalib(int index, bool enable);
LX_API EG_HDRFusion(int index, bool enable);
LX_API EG_GetRawData(int index, vec_ptr& depth, vec_ptr& amp);
LX_API EG_GetRays(int index,float** rays);
//功能: EG_RectifyDepth之后，EG_GetDepth为校正之后深度图，此函数不受影响，仅输出原始图，供调试
LX_API EG_GetRawDepth(int index, unsigned short** depth);
LX_API EG_GetRawColor(int index, unsigned char ** color);
LX_API EG_GetFeedBackRawData(int index, char* data);
LX_API EG_GetDeviceStatus(const char* cameraid, int& status_code);
LX_API EG_GetRegisterStatus(int index, int& success);

//download params
LX_API EG_SetRegister(int index,unsigned short* data, size_t data_size);
LX_API EG_SetCameraProp(int index, const char * mac, const char * remoteip, const char * port,
	const char * cameraid, const char * serialnumber, bool is_update_params = true);
LX_API EG_UpdateDistanceCoeff(int index);
LX_API EG_UpdateDistanceCoeff2(int index,const char * calib_img_dir);
LX_API EG_UpdateSicixieboCoeff(int index, const char * calib_img_dir);
LX_API EG_UpdateTemperatureCoeff(int index,const char * fileName);
LX_API EG_UpdateIntergrationCoeff(int index, const char* fileName);
//get params
LX_API EG_GetHighIntergrationTime(int index,uint32_t * intr_time);
LX_API EG_GetLowIntergrationTime(int index,uint32_t * intr_time);
LX_API EG_GetFrequency(int index, double& hz) ;
LX_API EG_GetDLL(int index, uint32_t& dll) ;
LX_API EG_GetTemperature(int index, float& temp);


//function EG_GetIntricParam
//param：[in]index
//		[in out] intr 	get depth camera Intrinsic and distortion  
//						input a pointer to float[9]		
//						array will be filled like this [fx,fy,cx,cy,k1,k2,t1,t2,k3]
LX_API EG_GetIntricParam(int index, float* intr);

//function EG_GetRGBIntricParam
//param：[in]index		
//		[out] intr	get rgb camera Intrinsic and distortion  
//					input a pointer to float[9]		
//					array will be filled like this [fx,fy,cx,cy,k1,k2,t1,t2,k3]
LX_API EG_GetRGBIntricParam(int index, float* intr);

//function EG_GetExtricParam
//param：[in]index		
//		[out] intr	get transfrom vector from depth camera to rgb camera
//					input a pointer to float[6]		
//					array will be filled like this [angleaxis_x,angleaxis_y,angleaxis_z,tx,ty,tz]
LX_API EG_GetExtricParam(int index, float* intr);

#endif