// Generated by gencpp from file demo_pkg/pesan.msg
// DO NOT EDIT!


#ifndef DEMO_PKG_MESSAGE_PESAN_H
#define DEMO_PKG_MESSAGE_PESAN_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace demo_pkg
{
template <class ContainerAllocator>
struct pesan_
{
  typedef pesan_<ContainerAllocator> Type;

  pesan_()
    : pesan1(0)
    , pesan2(0.0)
    , pesan3()  {
    }
  pesan_(const ContainerAllocator& _alloc)
    : pesan1(0)
    , pesan2(0.0)
    , pesan3(_alloc)  {
  (void)_alloc;
    }



   typedef int64_t _pesan1_type;
  _pesan1_type pesan1;

   typedef double _pesan2_type;
  _pesan2_type pesan2;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _pesan3_type;
  _pesan3_type pesan3;





  typedef boost::shared_ptr< ::demo_pkg::pesan_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::demo_pkg::pesan_<ContainerAllocator> const> ConstPtr;

}; // struct pesan_

typedef ::demo_pkg::pesan_<std::allocator<void> > pesan;

typedef boost::shared_ptr< ::demo_pkg::pesan > pesanPtr;
typedef boost::shared_ptr< ::demo_pkg::pesan const> pesanConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::demo_pkg::pesan_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::demo_pkg::pesan_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::demo_pkg::pesan_<ContainerAllocator1> & lhs, const ::demo_pkg::pesan_<ContainerAllocator2> & rhs)
{
  return lhs.pesan1 == rhs.pesan1 &&
    lhs.pesan2 == rhs.pesan2 &&
    lhs.pesan3 == rhs.pesan3;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::demo_pkg::pesan_<ContainerAllocator1> & lhs, const ::demo_pkg::pesan_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace demo_pkg

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::demo_pkg::pesan_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::demo_pkg::pesan_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::demo_pkg::pesan_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::demo_pkg::pesan_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::demo_pkg::pesan_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::demo_pkg::pesan_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::demo_pkg::pesan_<ContainerAllocator> >
{
  static const char* value()
  {
    return "20a3c179e0701ac679503dfd1cfe077f";
  }

  static const char* value(const ::demo_pkg::pesan_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x20a3c179e0701ac6ULL;
  static const uint64_t static_value2 = 0x79503dfd1cfe077fULL;
};

template<class ContainerAllocator>
struct DataType< ::demo_pkg::pesan_<ContainerAllocator> >
{
  static const char* value()
  {
    return "demo_pkg/pesan";
  }

  static const char* value(const ::demo_pkg::pesan_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::demo_pkg::pesan_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int64 pesan1\n"
"float64 pesan2\n"
"string pesan3\n"
;
  }

  static const char* value(const ::demo_pkg::pesan_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::demo_pkg::pesan_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.pesan1);
      stream.next(m.pesan2);
      stream.next(m.pesan3);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct pesan_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::demo_pkg::pesan_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::demo_pkg::pesan_<ContainerAllocator>& v)
  {
    s << indent << "pesan1: ";
    Printer<int64_t>::stream(s, indent + "  ", v.pesan1);
    s << indent << "pesan2: ";
    Printer<double>::stream(s, indent + "  ", v.pesan2);
    s << indent << "pesan3: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.pesan3);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DEMO_PKG_MESSAGE_PESAN_H
