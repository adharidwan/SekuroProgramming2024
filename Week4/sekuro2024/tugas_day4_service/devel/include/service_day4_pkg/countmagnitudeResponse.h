// Generated by gencpp from file service_day4_pkg/countmagnitudeResponse.msg
// DO NOT EDIT!


#ifndef SERVICE_DAY4_PKG_MESSAGE_COUNTMAGNITUDERESPONSE_H
#define SERVICE_DAY4_PKG_MESSAGE_COUNTMAGNITUDERESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace service_day4_pkg
{
template <class ContainerAllocator>
struct countmagnitudeResponse_
{
  typedef countmagnitudeResponse_<ContainerAllocator> Type;

  countmagnitudeResponse_()
    : magnitude(0.0)  {
    }
  countmagnitudeResponse_(const ContainerAllocator& _alloc)
    : magnitude(0.0)  {
  (void)_alloc;
    }



   typedef double _magnitude_type;
  _magnitude_type magnitude;





  typedef boost::shared_ptr< ::service_day4_pkg::countmagnitudeResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::service_day4_pkg::countmagnitudeResponse_<ContainerAllocator> const> ConstPtr;

}; // struct countmagnitudeResponse_

typedef ::service_day4_pkg::countmagnitudeResponse_<std::allocator<void> > countmagnitudeResponse;

typedef boost::shared_ptr< ::service_day4_pkg::countmagnitudeResponse > countmagnitudeResponsePtr;
typedef boost::shared_ptr< ::service_day4_pkg::countmagnitudeResponse const> countmagnitudeResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::service_day4_pkg::countmagnitudeResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::service_day4_pkg::countmagnitudeResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::service_day4_pkg::countmagnitudeResponse_<ContainerAllocator1> & lhs, const ::service_day4_pkg::countmagnitudeResponse_<ContainerAllocator2> & rhs)
{
  return lhs.magnitude == rhs.magnitude;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::service_day4_pkg::countmagnitudeResponse_<ContainerAllocator1> & lhs, const ::service_day4_pkg::countmagnitudeResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace service_day4_pkg

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::service_day4_pkg::countmagnitudeResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::service_day4_pkg::countmagnitudeResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::service_day4_pkg::countmagnitudeResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::service_day4_pkg::countmagnitudeResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::service_day4_pkg::countmagnitudeResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::service_day4_pkg::countmagnitudeResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::service_day4_pkg::countmagnitudeResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "f3a902f9783110e2b8fe7c475e26788e";
  }

  static const char* value(const ::service_day4_pkg::countmagnitudeResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xf3a902f9783110e2ULL;
  static const uint64_t static_value2 = 0xb8fe7c475e26788eULL;
};

template<class ContainerAllocator>
struct DataType< ::service_day4_pkg::countmagnitudeResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "service_day4_pkg/countmagnitudeResponse";
  }

  static const char* value(const ::service_day4_pkg::countmagnitudeResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::service_day4_pkg::countmagnitudeResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 magnitude\n"
;
  }

  static const char* value(const ::service_day4_pkg::countmagnitudeResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::service_day4_pkg::countmagnitudeResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.magnitude);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct countmagnitudeResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::service_day4_pkg::countmagnitudeResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::service_day4_pkg::countmagnitudeResponse_<ContainerAllocator>& v)
  {
    s << indent << "magnitude: ";
    Printer<double>::stream(s, indent + "  ", v.magnitude);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SERVICE_DAY4_PKG_MESSAGE_COUNTMAGNITUDERESPONSE_H
