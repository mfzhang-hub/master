// Generated by gencpp from file lxind_msgs/SendIntRequest.msg
// DO NOT EDIT!


#ifndef LXIND_MSGS_MESSAGE_SENDINTREQUEST_H
#define LXIND_MSGS_MESSAGE_SENDINTREQUEST_H


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
struct SendIntRequest_
{
  typedef SendIntRequest_<ContainerAllocator> Type;

  SendIntRequest_()
    : data(0)  {
    }
  SendIntRequest_(const ContainerAllocator& _alloc)
    : data(0)  {
  (void)_alloc;
    }



   typedef int32_t _data_type;
  _data_type data;





  typedef boost::shared_ptr< ::lxind_msgs::SendIntRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::lxind_msgs::SendIntRequest_<ContainerAllocator> const> ConstPtr;

}; // struct SendIntRequest_

typedef ::lxind_msgs::SendIntRequest_<std::allocator<void> > SendIntRequest;

typedef boost::shared_ptr< ::lxind_msgs::SendIntRequest > SendIntRequestPtr;
typedef boost::shared_ptr< ::lxind_msgs::SendIntRequest const> SendIntRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::lxind_msgs::SendIntRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::lxind_msgs::SendIntRequest_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::lxind_msgs::SendIntRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::lxind_msgs::SendIntRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::lxind_msgs::SendIntRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::lxind_msgs::SendIntRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::lxind_msgs::SendIntRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::lxind_msgs::SendIntRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::lxind_msgs::SendIntRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "da5909fbe378aeaf85e547e830cc1bb7";
  }

  static const char* value(const ::lxind_msgs::SendIntRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xda5909fbe378aeafULL;
  static const uint64_t static_value2 = 0x85e547e830cc1bb7ULL;
};

template<class ContainerAllocator>
struct DataType< ::lxind_msgs::SendIntRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "lxind_msgs/SendIntRequest";
  }

  static const char* value(const ::lxind_msgs::SendIntRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::lxind_msgs::SendIntRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 data\n\
";
  }

  static const char* value(const ::lxind_msgs::SendIntRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::lxind_msgs::SendIntRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.data);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SendIntRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::lxind_msgs::SendIntRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::lxind_msgs::SendIntRequest_<ContainerAllocator>& v)
  {
    s << indent << "data: ";
    Printer<int32_t>::stream(s, indent + "  ", v.data);
  }
};

} // namespace message_operations
} // namespace ros

#endif // LXIND_MSGS_MESSAGE_SENDINTREQUEST_H
