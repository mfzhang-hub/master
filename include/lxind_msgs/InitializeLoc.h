// Generated by gencpp from file lxind_msgs/InitializeLoc.msg
// DO NOT EDIT!


#ifndef LXIND_MSGS_MESSAGE_INITIALIZELOC_H
#define LXIND_MSGS_MESSAGE_INITIALIZELOC_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace lxind_msgs
{
template <class ContainerAllocator>
struct InitializeLoc_
{
  typedef InitializeLoc_<ContainerAllocator> Type;

  InitializeLoc_()
    : header()
    , name()
    , x(0.0)
    , y(0.0)
    , theta(0.0)
    , is_startup_reloc(false)  {
    }
  InitializeLoc_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , name(_alloc)
    , x(0.0)
    , y(0.0)
    , theta(0.0)
    , is_startup_reloc(false)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _name_type;
  _name_type name;

   typedef float _x_type;
  _x_type x;

   typedef float _y_type;
  _y_type y;

   typedef float _theta_type;
  _theta_type theta;

   typedef uint8_t _is_startup_reloc_type;
  _is_startup_reloc_type is_startup_reloc;





  typedef boost::shared_ptr< ::lxind_msgs::InitializeLoc_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::lxind_msgs::InitializeLoc_<ContainerAllocator> const> ConstPtr;

}; // struct InitializeLoc_

typedef ::lxind_msgs::InitializeLoc_<std::allocator<void> > InitializeLoc;

typedef boost::shared_ptr< ::lxind_msgs::InitializeLoc > InitializeLocPtr;
typedef boost::shared_ptr< ::lxind_msgs::InitializeLoc const> InitializeLocConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::lxind_msgs::InitializeLoc_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::lxind_msgs::InitializeLoc_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace lxind_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'lxind_msgs': ['/home/zhangchunlei/lxind_ws/src/lxind_msgs/msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::lxind_msgs::InitializeLoc_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::lxind_msgs::InitializeLoc_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::lxind_msgs::InitializeLoc_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::lxind_msgs::InitializeLoc_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::lxind_msgs::InitializeLoc_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::lxind_msgs::InitializeLoc_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::lxind_msgs::InitializeLoc_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d20e7711b3add046679cf9288971df05";
  }

  static const char* value(const ::lxind_msgs::InitializeLoc_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd20e7711b3add046ULL;
  static const uint64_t static_value2 = 0x679cf9288971df05ULL;
};

template<class ContainerAllocator>
struct DataType< ::lxind_msgs::InitializeLoc_<ContainerAllocator> >
{
  static const char* value()
  {
    return "lxind_msgs/InitializeLoc";
  }

  static const char* value(const ::lxind_msgs::InitializeLoc_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::lxind_msgs::InitializeLoc_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n\
string name\n\
float32 x\n\
float32 y\n\
float32 theta\n\
bool is_startup_reloc\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
";
  }

  static const char* value(const ::lxind_msgs::InitializeLoc_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::lxind_msgs::InitializeLoc_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.name);
      stream.next(m.x);
      stream.next(m.y);
      stream.next(m.theta);
      stream.next(m.is_startup_reloc);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct InitializeLoc_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::lxind_msgs::InitializeLoc_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::lxind_msgs::InitializeLoc_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.name);
    s << indent << "x: ";
    Printer<float>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<float>::stream(s, indent + "  ", v.y);
    s << indent << "theta: ";
    Printer<float>::stream(s, indent + "  ", v.theta);
    s << indent << "is_startup_reloc: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.is_startup_reloc);
  }
};

} // namespace message_operations
} // namespace ros

#endif // LXIND_MSGS_MESSAGE_INITIALIZELOC_H
