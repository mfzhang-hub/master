// Generated by gencpp from file lxind_msgs/GetFootprintSize.msg
// DO NOT EDIT!


#ifndef LXIND_MSGS_MESSAGE_GETFOOTPRINTSIZE_H
#define LXIND_MSGS_MESSAGE_GETFOOTPRINTSIZE_H

#include <ros/service_traits.h>


#include <lxind_msgs/GetFootprintSizeRequest.h>
#include <lxind_msgs/GetFootprintSizeResponse.h>


namespace lxind_msgs
{

struct GetFootprintSize
{

typedef GetFootprintSizeRequest Request;
typedef GetFootprintSizeResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct GetFootprintSize
} // namespace lxind_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::lxind_msgs::GetFootprintSize > {
  static const char* value()
  {
    return "f86522e647336fb10b55359fe003f673";
  }

  static const char* value(const ::lxind_msgs::GetFootprintSize&) { return value(); }
};

template<>
struct DataType< ::lxind_msgs::GetFootprintSize > {
  static const char* value()
  {
    return "lxind_msgs/GetFootprintSize";
  }

  static const char* value(const ::lxind_msgs::GetFootprintSize&) { return value(); }
};


// service_traits::MD5Sum< ::lxind_msgs::GetFootprintSizeRequest> should match 
// service_traits::MD5Sum< ::lxind_msgs::GetFootprintSize > 
template<>
struct MD5Sum< ::lxind_msgs::GetFootprintSizeRequest>
{
  static const char* value()
  {
    return MD5Sum< ::lxind_msgs::GetFootprintSize >::value();
  }
  static const char* value(const ::lxind_msgs::GetFootprintSizeRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::lxind_msgs::GetFootprintSizeRequest> should match 
// service_traits::DataType< ::lxind_msgs::GetFootprintSize > 
template<>
struct DataType< ::lxind_msgs::GetFootprintSizeRequest>
{
  static const char* value()
  {
    return DataType< ::lxind_msgs::GetFootprintSize >::value();
  }
  static const char* value(const ::lxind_msgs::GetFootprintSizeRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::lxind_msgs::GetFootprintSizeResponse> should match 
// service_traits::MD5Sum< ::lxind_msgs::GetFootprintSize > 
template<>
struct MD5Sum< ::lxind_msgs::GetFootprintSizeResponse>
{
  static const char* value()
  {
    return MD5Sum< ::lxind_msgs::GetFootprintSize >::value();
  }
  static const char* value(const ::lxind_msgs::GetFootprintSizeResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::lxind_msgs::GetFootprintSizeResponse> should match 
// service_traits::DataType< ::lxind_msgs::GetFootprintSize > 
template<>
struct DataType< ::lxind_msgs::GetFootprintSizeResponse>
{
  static const char* value()
  {
    return DataType< ::lxind_msgs::GetFootprintSize >::value();
  }
  static const char* value(const ::lxind_msgs::GetFootprintSizeResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // LXIND_MSGS_MESSAGE_GETFOOTPRINTSIZE_H
