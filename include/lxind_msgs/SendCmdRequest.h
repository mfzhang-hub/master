// Generated by gencpp from file lxind_msgs/SendCmdRequest.msg
// DO NOT EDIT!


#ifndef LXIND_MSGS_MESSAGE_SENDCMDREQUEST_H
#define LXIND_MSGS_MESSAGE_SENDCMDREQUEST_H


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
struct SendCmdRequest_
{
  typedef SendCmdRequest_<ContainerAllocator> Type;

  SendCmdRequest_()
    : cmd()  {
    }
  SendCmdRequest_(const ContainerAllocator& _alloc)
    : cmd(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _cmd_type;
  _cmd_type cmd;





  typedef boost::shared_ptr< ::lxind_msgs::SendCmdRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::lxind_msgs::SendCmdRequest_<ContainerAllocator> const> ConstPtr;

}; // struct SendCmdRequest_

typedef ::lxind_msgs::SendCmdRequest_<std::allocator<void> > SendCmdRequest;

typedef boost::shared_ptr< ::lxind_msgs::SendCmdRequest > SendCmdRequestPtr;
typedef boost::shared_ptr< ::lxind_msgs::SendCmdRequest const> SendCmdRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::lxind_msgs::SendCmdRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::lxind_msgs::SendCmdRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace lxind_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'lxind_msgs': ['/home/zhangchunlei/lxind_ws/src/lxind_msgs/msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::lxind_msgs::SendCmdRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::lxind_msgs::SendCmdRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::lxind_msgs::SendCmdRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::lxind_msgs::SendCmdRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::lxind_msgs::SendCmdRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::lxind_msgs::SendCmdRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::lxind_msgs::SendCmdRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "43a54fa49066cddcf148717d9d4a6353";
  }

  static const char* value(const ::lxind_msgs::SendCmdRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x43a54fa49066cddcULL;
  static const uint64_t static_value2 = 0xf148717d9d4a6353ULL;
};

template<class ContainerAllocator>
struct DataType< ::lxind_msgs::SendCmdRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "lxind_msgs/SendCmdRequest";
  }

  static const char* value(const ::lxind_msgs::SendCmdRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::lxind_msgs::SendCmdRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string cmd\n\
";
  }

  static const char* value(const ::lxind_msgs::SendCmdRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::lxind_msgs::SendCmdRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.cmd);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SendCmdRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::lxind_msgs::SendCmdRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::lxind_msgs::SendCmdRequest_<ContainerAllocator>& v)
  {
    s << indent << "cmd: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.cmd);
  }
};

} // namespace message_operations
} // namespace ros

#endif // LXIND_MSGS_MESSAGE_SENDCMDREQUEST_H
