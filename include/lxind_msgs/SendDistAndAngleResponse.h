// Generated by gencpp from file lxind_msgs/SendDistAndAngleResponse.msg
// DO NOT EDIT!


#ifndef LXIND_MSGS_MESSAGE_SENDDISTANDANGLERESPONSE_H
#define LXIND_MSGS_MESSAGE_SENDDISTANDANGLERESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace lxind_msgs
{
template <class ContainerAllocator>
struct SendDistAndAngleResponse_
{
  typedef SendDistAndAngleResponse_<ContainerAllocator> Type;

  SendDistAndAngleResponse_()
    {
    }
  SendDistAndAngleResponse_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }







  typedef boost::shared_ptr< ::lxind_msgs::SendDistAndAngleResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::lxind_msgs::SendDistAndAngleResponse_<ContainerAllocator> const> ConstPtr;

}; // struct SendDistAndAngleResponse_

typedef ::lxind_msgs::SendDistAndAngleResponse_<std::allocator<void> > SendDistAndAngleResponse;

typedef boost::shared_ptr< ::lxind_msgs::SendDistAndAngleResponse > SendDistAndAngleResponsePtr;
typedef boost::shared_ptr< ::lxind_msgs::SendDistAndAngleResponse const> SendDistAndAngleResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::lxind_msgs::SendDistAndAngleResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::lxind_msgs::SendDistAndAngleResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace lxind_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'lxind_msgs': ['/home/zhangchunlei/lxind_ws/src/lxind_msgs/msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::lxind_msgs::SendDistAndAngleResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::lxind_msgs::SendDistAndAngleResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::lxind_msgs::SendDistAndAngleResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::lxind_msgs::SendDistAndAngleResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::lxind_msgs::SendDistAndAngleResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::lxind_msgs::SendDistAndAngleResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::lxind_msgs::SendDistAndAngleResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::lxind_msgs::SendDistAndAngleResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::lxind_msgs::SendDistAndAngleResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "lxind_msgs/SendDistAndAngleResponse";
  }

  static const char* value(const ::lxind_msgs::SendDistAndAngleResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::lxind_msgs::SendDistAndAngleResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
";
  }

  static const char* value(const ::lxind_msgs::SendDistAndAngleResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::lxind_msgs::SendDistAndAngleResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SendDistAndAngleResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::lxind_msgs::SendDistAndAngleResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::lxind_msgs::SendDistAndAngleResponse_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // LXIND_MSGS_MESSAGE_SENDDISTANDANGLERESPONSE_H
