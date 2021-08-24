// Generated by gencpp from file lxind_msgs/SendSubTaskRequest.msg
// DO NOT EDIT!


#ifndef LXIND_MSGS_MESSAGE_SENDSUBTASKREQUEST_H
#define LXIND_MSGS_MESSAGE_SENDSUBTASKREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <lxind_msgs/RobotPose.h>
#include <lxind_msgs/RobotPose.h>
#include <lxind_msgs/PathPoint.h>

namespace lxind_msgs
{
template <class ContainerAllocator>
struct SendSubTaskRequest_
{
  typedef SendSubTaskRequest_<ContainerAllocator> Type;

  SendSubTaskRequest_()
    : task_id(0)
    , sub_task_cmd(0)
    , next_pritask_cmd(0)
    , target_state()
    , target_id(0)
    , target_name()
    , tol_dist(0.0)
    , tol_angle(0.0)
    , to_goal_mode(0)
    , enable_oa(false)
    , max_speed(0.0)
    , safe_dist(0.0)
    , min_turn_radius(0.0)
    , shape_transform(0)
    , init_state()
    , fixed_path()
    , load_mode(0)
    , direction(0)
    , align_part(0)
    , align_dir(0)
    , prec_dist(0.0)
    , roll_part()
    , extra_info()  {
    }
  SendSubTaskRequest_(const ContainerAllocator& _alloc)
    : task_id(0)
    , sub_task_cmd(0)
    , next_pritask_cmd(0)
    , target_state(_alloc)
    , target_id(0)
    , target_name(_alloc)
    , tol_dist(0.0)
    , tol_angle(0.0)
    , to_goal_mode(0)
    , enable_oa(false)
    , max_speed(0.0)
    , safe_dist(0.0)
    , min_turn_radius(0.0)
    , shape_transform(0)
    , init_state(_alloc)
    , fixed_path(_alloc)
    , load_mode(0)
    , direction(0)
    , align_part(0)
    , align_dir(0)
    , prec_dist(0.0)
    , roll_part(_alloc)
    , extra_info(_alloc)  {
  (void)_alloc;
    }



   typedef int32_t _task_id_type;
  _task_id_type task_id;

   typedef uint32_t _sub_task_cmd_type;
  _sub_task_cmd_type sub_task_cmd;

   typedef int32_t _next_pritask_cmd_type;
  _next_pritask_cmd_type next_pritask_cmd;

   typedef  ::lxind_msgs::RobotPose_<ContainerAllocator>  _target_state_type;
  _target_state_type target_state;

   typedef int32_t _target_id_type;
  _target_id_type target_id;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _target_name_type;
  _target_name_type target_name;

   typedef float _tol_dist_type;
  _tol_dist_type tol_dist;

   typedef float _tol_angle_type;
  _tol_angle_type tol_angle;

   typedef uint8_t _to_goal_mode_type;
  _to_goal_mode_type to_goal_mode;

   typedef uint8_t _enable_oa_type;
  _enable_oa_type enable_oa;

   typedef float _max_speed_type;
  _max_speed_type max_speed;

   typedef float _safe_dist_type;
  _safe_dist_type safe_dist;

   typedef float _min_turn_radius_type;
  _min_turn_radius_type min_turn_radius;

   typedef uint8_t _shape_transform_type;
  _shape_transform_type shape_transform;

   typedef  ::lxind_msgs::RobotPose_<ContainerAllocator>  _init_state_type;
  _init_state_type init_state;

   typedef std::vector< ::lxind_msgs::PathPoint_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::lxind_msgs::PathPoint_<ContainerAllocator> >::other >  _fixed_path_type;
  _fixed_path_type fixed_path;

   typedef uint8_t _load_mode_type;
  _load_mode_type load_mode;

   typedef uint8_t _direction_type;
  _direction_type direction;

   typedef uint8_t _align_part_type;
  _align_part_type align_part;

   typedef uint8_t _align_dir_type;
  _align_dir_type align_dir;

   typedef float _prec_dist_type;
  _prec_dist_type prec_dist;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _roll_part_type;
  _roll_part_type roll_part;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _extra_info_type;
  _extra_info_type extra_info;





  typedef boost::shared_ptr< ::lxind_msgs::SendSubTaskRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::lxind_msgs::SendSubTaskRequest_<ContainerAllocator> const> ConstPtr;

}; // struct SendSubTaskRequest_

typedef ::lxind_msgs::SendSubTaskRequest_<std::allocator<void> > SendSubTaskRequest;

typedef boost::shared_ptr< ::lxind_msgs::SendSubTaskRequest > SendSubTaskRequestPtr;
typedef boost::shared_ptr< ::lxind_msgs::SendSubTaskRequest const> SendSubTaskRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::lxind_msgs::SendSubTaskRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::lxind_msgs::SendSubTaskRequest_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::lxind_msgs::SendSubTaskRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::lxind_msgs::SendSubTaskRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::lxind_msgs::SendSubTaskRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::lxind_msgs::SendSubTaskRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::lxind_msgs::SendSubTaskRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::lxind_msgs::SendSubTaskRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::lxind_msgs::SendSubTaskRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "87a80a4312f0eac316519b6aeb574e48";
  }

  static const char* value(const ::lxind_msgs::SendSubTaskRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x87a80a4312f0eac3ULL;
  static const uint64_t static_value2 = 0x16519b6aeb574e48ULL;
};

template<class ContainerAllocator>
struct DataType< ::lxind_msgs::SendSubTaskRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "lxind_msgs/SendSubTaskRequest";
  }

  static const char* value(const ::lxind_msgs::SendSubTaskRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::lxind_msgs::SendSubTaskRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 task_id\n\
uint32 sub_task_cmd\n\
\n\
int32 next_pritask_cmd\n\
\n\
lxind_msgs/RobotPose target_state\n\
int32 target_id\n\
string target_name\n\
float32 tol_dist\n\
float32 tol_angle\n\
uint8 to_goal_mode\n\
\n\
bool enable_oa\n\
float32 max_speed\n\
float32 safe_dist\n\
float32 min_turn_radius\n\
uint8 shape_transform\n\
\n\
lxind_msgs/RobotPose init_state\n\
lxind_msgs/PathPoint[] fixed_path\n\
\n\
\n\
uint8 load_mode\n\
uint8 direction\n\
\n\
uint8 align_part\n\
uint8 align_dir\n\
\n\
\n\
float32 prec_dist\n\
\n\
\n\
string roll_part\n\
\n\
string extra_info\n\
\n\
================================================================================\n\
MSG: lxind_msgs/RobotPose\n\
float32 x\n\
float32 y\n\
float32 th\n\
================================================================================\n\
MSG: lxind_msgs/PathPoint\n\
float32 x\n\
float32 y\n\
float32 th\n\
\n\
string node_name\n\
";
  }

  static const char* value(const ::lxind_msgs::SendSubTaskRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::lxind_msgs::SendSubTaskRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.task_id);
      stream.next(m.sub_task_cmd);
      stream.next(m.next_pritask_cmd);
      stream.next(m.target_state);
      stream.next(m.target_id);
      stream.next(m.target_name);
      stream.next(m.tol_dist);
      stream.next(m.tol_angle);
      stream.next(m.to_goal_mode);
      stream.next(m.enable_oa);
      stream.next(m.max_speed);
      stream.next(m.safe_dist);
      stream.next(m.min_turn_radius);
      stream.next(m.shape_transform);
      stream.next(m.init_state);
      stream.next(m.fixed_path);
      stream.next(m.load_mode);
      stream.next(m.direction);
      stream.next(m.align_part);
      stream.next(m.align_dir);
      stream.next(m.prec_dist);
      stream.next(m.roll_part);
      stream.next(m.extra_info);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SendSubTaskRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::lxind_msgs::SendSubTaskRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::lxind_msgs::SendSubTaskRequest_<ContainerAllocator>& v)
  {
    s << indent << "task_id: ";
    Printer<int32_t>::stream(s, indent + "  ", v.task_id);
    s << indent << "sub_task_cmd: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.sub_task_cmd);
    s << indent << "next_pritask_cmd: ";
    Printer<int32_t>::stream(s, indent + "  ", v.next_pritask_cmd);
    s << indent << "target_state: ";
    s << std::endl;
    Printer< ::lxind_msgs::RobotPose_<ContainerAllocator> >::stream(s, indent + "  ", v.target_state);
    s << indent << "target_id: ";
    Printer<int32_t>::stream(s, indent + "  ", v.target_id);
    s << indent << "target_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.target_name);
    s << indent << "tol_dist: ";
    Printer<float>::stream(s, indent + "  ", v.tol_dist);
    s << indent << "tol_angle: ";
    Printer<float>::stream(s, indent + "  ", v.tol_angle);
    s << indent << "to_goal_mode: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.to_goal_mode);
    s << indent << "enable_oa: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.enable_oa);
    s << indent << "max_speed: ";
    Printer<float>::stream(s, indent + "  ", v.max_speed);
    s << indent << "safe_dist: ";
    Printer<float>::stream(s, indent + "  ", v.safe_dist);
    s << indent << "min_turn_radius: ";
    Printer<float>::stream(s, indent + "  ", v.min_turn_radius);
    s << indent << "shape_transform: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.shape_transform);
    s << indent << "init_state: ";
    s << std::endl;
    Printer< ::lxind_msgs::RobotPose_<ContainerAllocator> >::stream(s, indent + "  ", v.init_state);
    s << indent << "fixed_path[]" << std::endl;
    for (size_t i = 0; i < v.fixed_path.size(); ++i)
    {
      s << indent << "  fixed_path[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::lxind_msgs::PathPoint_<ContainerAllocator> >::stream(s, indent + "    ", v.fixed_path[i]);
    }
    s << indent << "load_mode: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.load_mode);
    s << indent << "direction: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.direction);
    s << indent << "align_part: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.align_part);
    s << indent << "align_dir: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.align_dir);
    s << indent << "prec_dist: ";
    Printer<float>::stream(s, indent + "  ", v.prec_dist);
    s << indent << "roll_part: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.roll_part);
    s << indent << "extra_info: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.extra_info);
  }
};

} // namespace message_operations
} // namespace ros

#endif // LXIND_MSGS_MESSAGE_SENDSUBTASKREQUEST_H
