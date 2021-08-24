// Generated by gencpp from file lxind_msgs/GetRealDataResponse.msg
// DO NOT EDIT!


#ifndef LXIND_MSGS_MESSAGE_GETREALDATARESPONSE_H
#define LXIND_MSGS_MESSAGE_GETREALDATARESPONSE_H


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
struct GetRealDataResponse_
{
  typedef GetRealDataResponse_<ContainerAllocator> Type;

  GetRealDataResponse_()
    : dataJsonRet()  {
    }
  GetRealDataResponse_(const ContainerAllocator& _alloc)
    : dataJsonRet(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _dataJsonRet_type;
  _dataJsonRet_type dataJsonRet;





  typedef boost::shared_ptr< ::lxind_msgs::GetRealDataResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::lxind_msgs::GetRealDataResponse_<ContainerAllocator> const> ConstPtr;

}; // struct GetRealDataResponse_

typedef ::lxind_msgs::GetRealDataResponse_<std::allocator<void> > GetRealDataResponse;

typedef boost::shared_ptr< ::lxind_msgs::GetRealDataResponse > GetRealDataResponsePtr;
typedef boost::shared_ptr< ::lxind_msgs::GetRealDataResponse const> GetRealDataResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::lxind_msgs::GetRealDataResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::lxind_msgs::GetRealDataResponse_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::lxind_msgs::GetRealDataResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::lxind_msgs::GetRealDataResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::lxind_msgs::GetRealDataResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::lxind_msgs::GetRealDataResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::lxind_msgs::GetRealDataResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::lxind_msgs::GetRealDataResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::lxind_msgs::GetRealDataResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "db7968917bcf5bfd23216e01e142e813";
  }

  static const char* value(const ::lxind_msgs::GetRealDataResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xdb7968917bcf5bfdULL;
  static const uint64_t static_value2 = 0x23216e01e142e813ULL;
};

template<class ContainerAllocator>
struct DataType< ::lxind_msgs::GetRealDataResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "lxind_msgs/GetRealDataResponse";
  }

  static const char* value(const ::lxind_msgs::GetRealDataResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::lxind_msgs::GetRealDataResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string dataJsonRet\n\
";
  }

  static const char* value(const ::lxind_msgs::GetRealDataResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::lxind_msgs::GetRealDataResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.dataJsonRet);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetRealDataResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::lxind_msgs::GetRealDataResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::lxind_msgs::GetRealDataResponse_<ContainerAllocator>& v)
  {
    s << indent << "dataJsonRet: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.dataJsonRet);
  }
};

} // namespace message_operations
} // namespace ros

#endif // LXIND_MSGS_MESSAGE_GETREALDATARESPONSE_H
