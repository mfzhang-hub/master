// Generated by gencpp from file lxind_msgs/SendDist.msg
// DO NOT EDIT!


#ifndef LXIND_MSGS_MESSAGE_SENDDIST_H
#define LXIND_MSGS_MESSAGE_SENDDIST_H

#include <ros/service_traits.h>


#include <lxind_msgs/SendDistRequest.h>
#include <lxind_msgs/SendDistResponse.h>


namespace lxind_msgs
{

struct SendDist
{

typedef SendDistRequest Request;
typedef SendDistResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct SendDist
} // namespace lxind_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::lxind_msgs::SendDist > {
  static const char* value()
  {
    return "acff7fda0c683c872875f5c4b069f124";
  }

  static const char* value(const ::lxind_msgs::SendDist&) { return value(); }
};

template<>
struct DataType< ::lxind_msgs::SendDist > {
  static const char* value()
  {
    return "lxind_msgs/SendDist";
  }

  static const char* value(const ::lxind_msgs::SendDist&) { return value(); }
};


// service_traits::MD5Sum< ::lxind_msgs::SendDistRequest> should match 
// service_traits::MD5Sum< ::lxind_msgs::SendDist > 
template<>
struct MD5Sum< ::lxind_msgs::SendDistRequest>
{
  static const char* value()
  {
    return MD5Sum< ::lxind_msgs::SendDist >::value();
  }
  static const char* value(const ::lxind_msgs::SendDistRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::lxind_msgs::SendDistRequest> should match 
// service_traits::DataType< ::lxind_msgs::SendDist > 
template<>
struct DataType< ::lxind_msgs::SendDistRequest>
{
  static const char* value()
  {
    return DataType< ::lxind_msgs::SendDist >::value();
  }
  static const char* value(const ::lxind_msgs::SendDistRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::lxind_msgs::SendDistResponse> should match 
// service_traits::MD5Sum< ::lxind_msgs::SendDist > 
template<>
struct MD5Sum< ::lxind_msgs::SendDistResponse>
{
  static const char* value()
  {
    return MD5Sum< ::lxind_msgs::SendDist >::value();
  }
  static const char* value(const ::lxind_msgs::SendDistResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::lxind_msgs::SendDistResponse> should match 
// service_traits::DataType< ::lxind_msgs::SendDist > 
template<>
struct DataType< ::lxind_msgs::SendDistResponse>
{
  static const char* value()
  {
    return DataType< ::lxind_msgs::SendDist >::value();
  }
  static const char* value(const ::lxind_msgs::SendDistResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // LXIND_MSGS_MESSAGE_SENDDIST_H
