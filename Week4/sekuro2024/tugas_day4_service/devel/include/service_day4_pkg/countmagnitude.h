// Generated by gencpp from file service_day4_pkg/countmagnitude.msg
// DO NOT EDIT!


#ifndef SERVICE_DAY4_PKG_MESSAGE_COUNTMAGNITUDE_H
#define SERVICE_DAY4_PKG_MESSAGE_COUNTMAGNITUDE_H

#include <ros/service_traits.h>


#include <service_day4_pkg/countmagnitudeRequest.h>
#include <service_day4_pkg/countmagnitudeResponse.h>


namespace service_day4_pkg
{

struct countmagnitude
{

typedef countmagnitudeRequest Request;
typedef countmagnitudeResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct countmagnitude
} // namespace service_day4_pkg


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::service_day4_pkg::countmagnitude > {
  static const char* value()
  {
    return "55d1a215f43fd1f64eb105a505b172c4";
  }

  static const char* value(const ::service_day4_pkg::countmagnitude&) { return value(); }
};

template<>
struct DataType< ::service_day4_pkg::countmagnitude > {
  static const char* value()
  {
    return "service_day4_pkg/countmagnitude";
  }

  static const char* value(const ::service_day4_pkg::countmagnitude&) { return value(); }
};


// service_traits::MD5Sum< ::service_day4_pkg::countmagnitudeRequest> should match
// service_traits::MD5Sum< ::service_day4_pkg::countmagnitude >
template<>
struct MD5Sum< ::service_day4_pkg::countmagnitudeRequest>
{
  static const char* value()
  {
    return MD5Sum< ::service_day4_pkg::countmagnitude >::value();
  }
  static const char* value(const ::service_day4_pkg::countmagnitudeRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::service_day4_pkg::countmagnitudeRequest> should match
// service_traits::DataType< ::service_day4_pkg::countmagnitude >
template<>
struct DataType< ::service_day4_pkg::countmagnitudeRequest>
{
  static const char* value()
  {
    return DataType< ::service_day4_pkg::countmagnitude >::value();
  }
  static const char* value(const ::service_day4_pkg::countmagnitudeRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::service_day4_pkg::countmagnitudeResponse> should match
// service_traits::MD5Sum< ::service_day4_pkg::countmagnitude >
template<>
struct MD5Sum< ::service_day4_pkg::countmagnitudeResponse>
{
  static const char* value()
  {
    return MD5Sum< ::service_day4_pkg::countmagnitude >::value();
  }
  static const char* value(const ::service_day4_pkg::countmagnitudeResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::service_day4_pkg::countmagnitudeResponse> should match
// service_traits::DataType< ::service_day4_pkg::countmagnitude >
template<>
struct DataType< ::service_day4_pkg::countmagnitudeResponse>
{
  static const char* value()
  {
    return DataType< ::service_day4_pkg::countmagnitude >::value();
  }
  static const char* value(const ::service_day4_pkg::countmagnitudeResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // SERVICE_DAY4_PKG_MESSAGE_COUNTMAGNITUDE_H
