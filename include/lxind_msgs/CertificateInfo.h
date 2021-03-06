// Generated by gencpp from file lxind_msgs/CertificateInfo.msg
// DO NOT EDIT!


#ifndef LXIND_MSGS_MESSAGE_CERTIFICATEINFO_H
#define LXIND_MSGS_MESSAGE_CERTIFICATEINFO_H


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
struct CertificateInfo_
{
  typedef CertificateInfo_<ContainerAllocator> Type;

  CertificateInfo_()
    : info_type()
    , info_detail()  {
    }
  CertificateInfo_(const ContainerAllocator& _alloc)
    : info_type(_alloc)
    , info_detail(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _info_type_type;
  _info_type_type info_type;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _info_detail_type;
  _info_detail_type info_detail;





  typedef boost::shared_ptr< ::lxind_msgs::CertificateInfo_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::lxind_msgs::CertificateInfo_<ContainerAllocator> const> ConstPtr;

}; // struct CertificateInfo_

typedef ::lxind_msgs::CertificateInfo_<std::allocator<void> > CertificateInfo;

typedef boost::shared_ptr< ::lxind_msgs::CertificateInfo > CertificateInfoPtr;
typedef boost::shared_ptr< ::lxind_msgs::CertificateInfo const> CertificateInfoConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::lxind_msgs::CertificateInfo_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::lxind_msgs::CertificateInfo_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::lxind_msgs::CertificateInfo_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::lxind_msgs::CertificateInfo_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::lxind_msgs::CertificateInfo_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::lxind_msgs::CertificateInfo_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::lxind_msgs::CertificateInfo_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::lxind_msgs::CertificateInfo_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::lxind_msgs::CertificateInfo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6beea3a96ca34ec05821cc6a164f8ac7";
  }

  static const char* value(const ::lxind_msgs::CertificateInfo_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6beea3a96ca34ec0ULL;
  static const uint64_t static_value2 = 0x5821cc6a164f8ac7ULL;
};

template<class ContainerAllocator>
struct DataType< ::lxind_msgs::CertificateInfo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "lxind_msgs/CertificateInfo";
  }

  static const char* value(const ::lxind_msgs::CertificateInfo_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::lxind_msgs::CertificateInfo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string info_type\n\
string info_detail\n\
";
  }

  static const char* value(const ::lxind_msgs::CertificateInfo_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::lxind_msgs::CertificateInfo_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.info_type);
      stream.next(m.info_detail);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct CertificateInfo_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::lxind_msgs::CertificateInfo_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::lxind_msgs::CertificateInfo_<ContainerAllocator>& v)
  {
    s << indent << "info_type: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.info_type);
    s << indent << "info_detail: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.info_detail);
  }
};

} // namespace message_operations
} // namespace ros

#endif // LXIND_MSGS_MESSAGE_CERTIFICATEINFO_H
