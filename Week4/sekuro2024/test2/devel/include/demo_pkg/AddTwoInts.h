// Generated by gencpp from file demo_pkg/AddTwoInts.msg
// DO NOT EDIT!


#ifndef DEMO_PKG_MESSAGE_ADDTWOINTS_H
#define DEMO_PKG_MESSAGE_ADDTWOINTS_H

#include <ros/service_traits.h>


#include <demo_pkg/AddTwoIntsRequest.h>
#include <demo_pkg/AddTwoIntsResponse.h>


namespace demo_pkg
{

struct AddTwoInts
{

typedef AddTwoIntsRequest Request;
typedef AddTwoIntsResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct AddTwoInts
} // namespace demo_pkg


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::demo_pkg::AddTwoInts > {
  static const char* value()
  {
    return "bebbfb82b9366874b8dd45181885da66";
  }

  static const char* value(const ::demo_pkg::AddTwoInts&) { return value(); }
};

template<>
struct DataType< ::demo_pkg::AddTwoInts > {
  static const char* value()
  {
    return "demo_pkg/AddTwoInts";
  }

  static const char* value(const ::demo_pkg::AddTwoInts&) { return value(); }
};


// service_traits::MD5Sum< ::demo_pkg::AddTwoIntsRequest> should match
// service_traits::MD5Sum< ::demo_pkg::AddTwoInts >
template<>
struct MD5Sum< ::demo_pkg::AddTwoIntsRequest>
{
  static const char* value()
  {
    return MD5Sum< ::demo_pkg::AddTwoInts >::value();
  }
  static const char* value(const ::demo_pkg::AddTwoIntsRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::demo_pkg::AddTwoIntsRequest> should match
// service_traits::DataType< ::demo_pkg::AddTwoInts >
template<>
struct DataType< ::demo_pkg::AddTwoIntsRequest>
{
  static const char* value()
  {
    return DataType< ::demo_pkg::AddTwoInts >::value();
  }
  static const char* value(const ::demo_pkg::AddTwoIntsRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::demo_pkg::AddTwoIntsResponse> should match
// service_traits::MD5Sum< ::demo_pkg::AddTwoInts >
template<>
struct MD5Sum< ::demo_pkg::AddTwoIntsResponse>
{
  static const char* value()
  {
    return MD5Sum< ::demo_pkg::AddTwoInts >::value();
  }
  static const char* value(const ::demo_pkg::AddTwoIntsResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::demo_pkg::AddTwoIntsResponse> should match
// service_traits::DataType< ::demo_pkg::AddTwoInts >
template<>
struct DataType< ::demo_pkg::AddTwoIntsResponse>
{
  static const char* value()
  {
    return DataType< ::demo_pkg::AddTwoInts >::value();
  }
  static const char* value(const ::demo_pkg::AddTwoIntsResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // DEMO_PKG_MESSAGE_ADDTWOINTS_H
