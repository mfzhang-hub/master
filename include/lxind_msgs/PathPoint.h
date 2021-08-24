// Generated by gencpp from file lxind_msgs/PathPoint.msg
// DO NOT EDIT!


#ifndef LXIND_MSGS_MESSAGE_PATHPOINT_H
#define LXIND_MSGS_MESSAGE_PATHPOINT_H


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
struct PathPoint_
{
  typedef PathPoint_<ContainerAllocator> Type;

  PathPoint_()
    : x(0.0)
    , y(0.0)
    , th(0.0)
    , node_name()  {
    }
  PathPoint_(const ContainerAllocator& _alloc)
    : x(0.0)
    , y(0.0)
    , th(0.0)
    , node_name(_alloc)  {
  (void)_alloc;
    }



   typedef float _x_type;
  _x_type x;

   typedef float _y_type;
  _y_type y;

   typedef float _th_type;
  _th_type th;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _node_name_type;
  _node_name_type node_name;





  typedef boost::shared_ptr< ::lxind_msgs::PathPoint_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::lxind_msgs::PathPoint_<ContainerAllocator> const> ConstPtr;

}; // struct PathPoint_

typedef ::lxind_msgs::PathPoint_<std::allocator<void> > PathPoint;

typedef boost::shared_ptr< ::lxind_msgs::PathPoint > PathPointPtr;
typedef boost::shared_ptr< ::lxind_msgs::PathPoint const> PathPointConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::lxind_msgs::PathPoint_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::lxind_msgs::PathPoint_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::lxind_msgs::PathPoint_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::lxind_msgs::PathPoint_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::lxind_msgs::PathPoint_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::lxind_msgs::PathPoint_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::lxind_msgs::PathPoint_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::lxind_msgs::PathPoint_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::lxind_msgs::PathPoint_<ContainerAllocator> >
{
  static const char* value()
  {
    return "016e9ae0e005a2632fb1469bab8e2fdc";
  }

  static const char* value(const ::lxind_msgs::PathPoint_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x016e9ae0e005a263ULL;
  static const uint64_t static_value2 = 0x2fb1469bab8e2fdcULL;
};

template<class ContainerAllocator>
struct DataType< ::lxind_msgs::PathPoint_<ContainerAllocator> >
{
  static const char* value()
  {
    return "lxind_msgs/PathPoint";
  }

  static const char* value(const ::lxind_msgs::PathPoint_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::lxind_msgs::PathPoint_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 x\n\
float32 y\n\
float32 th\n\
\n\
string node_name\n\
";
  }

  static const char* value(const ::lxind_msgs::PathPoint_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::lxind_msgs::PathPoint_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.x);
      stream.next(m.y);
      stream.next(m.th);
      stream.next(m.node_name);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PathPoint_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::lxind_msgs::PathPoint_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::lxind_msgs::PathPoint_<ContainerAllocator>& v)
  {
    s << indent << "x: ";
    Printer<float>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<float>::stream(s, indent + "  ", v.y);
    s << indent << "th: ";
    Printer<float>::stream(s, indent + "  ", v.th);
    s << indent << "node_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.node_name);
  }
};

} // namespace message_operations
} // namespace ros

#endif // LXIND_MSGS_MESSAGE_PATHPOINT_H
