// Generated by gencpp from file lxind_msgs/GetRealData.msg
// DO NOT EDIT!


#ifndef LXIND_MSGS_MESSAGE_GETREALDATA_H
#define LXIND_MSGS_MESSAGE_GETREALDATA_H

#include <ros/service_traits.h>


#include <lxind_msgs/GetRealDataRequest.h>
#include <lxind_msgs/GetRealDataResponse.h>


namespace lxind_msgs
{

struct GetRealData
{

typedef GetRealDataRequest Request;
typedef GetRealDataResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct GetRealData
} // namespace lxind_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::lxind_msgs::GetRealData > {
  static const char* value()
  {
    return "569dabf260434c7ed4d7ddae51e72989";
  }

  static const char* value(const ::lxind_msgs::GetRealData&) { return value(); }
};

template<>
struct DataType< ::lxind_msgs::GetRealData > {
  static const char* value()
  {
    return "lxind_msgs/GetRealData";
  }

  static const char* value(const ::lxind_msgs::GetRealData&) { return value(); }
};


// service_traits::MD5Sum< ::lxind_msgs::GetRealDataRequest> should match 
// service_traits::MD5Sum< ::lxind_msgs::GetRealData > 
template<>
struct MD5Sum< ::lxind_msgs::GetRealDataRequest>
{
  static const char* value()
  {
    return MD5Sum< ::lxind_msgs::GetRealData >::value();
  }
  static const char* value(const ::lxind_msgs::GetRealDataRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::lxind_msgs::GetRealDataRequest> should match 
// service_traits::DataType< ::lxind_msgs::GetRealData > 
template<>
struct DataType< ::lxind_msgs::GetRealDataRequest>
{
  static const char* value()
  {
    return DataType< ::lxind_msgs::GetRealData >::value();
  }
  static const char* value(const ::lxind_msgs::GetRealDataRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::lxind_msgs::GetRealDataResponse> should match 
// service_traits::MD5Sum< ::lxind_msgs::GetRealData > 
template<>
struct MD5Sum< ::lxind_msgs::GetRealDataResponse>
{
  static const char* value()
  {
    return MD5Sum< ::lxind_msgs::GetRealData >::value();
  }
  static const char* value(const ::lxind_msgs::GetRealDataResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::lxind_msgs::GetRealDataResponse> should match 
// service_traits::DataType< ::lxind_msgs::GetRealData > 
template<>
struct DataType< ::lxind_msgs::GetRealDataResponse>
{
  static const char* value()
  {
    return DataType< ::lxind_msgs::GetRealData >::value();
  }
  static const char* value(const ::lxind_msgs::GetRealDataResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // LXIND_MSGS_MESSAGE_GETREALDATA_H
