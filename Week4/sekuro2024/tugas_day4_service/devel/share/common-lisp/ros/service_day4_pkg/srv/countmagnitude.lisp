; Auto-generated. Do not edit!


(cl:in-package service_day4_pkg-srv)


;//! \htmlinclude countmagnitude-request.msg.html

(cl:defclass <countmagnitude-request> (roslisp-msg-protocol:ros-message)
  ((komponenX
    :reader komponenX
    :initarg :komponenX
    :type cl:float
    :initform 0.0)
   (komponenY
    :reader komponenY
    :initarg :komponenY
    :type cl:float
    :initform 0.0)
   (komponenZ
    :reader komponenZ
    :initarg :komponenZ
    :type cl:float
    :initform 0.0))
)

(cl:defclass countmagnitude-request (<countmagnitude-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <countmagnitude-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'countmagnitude-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name service_day4_pkg-srv:<countmagnitude-request> is deprecated: use service_day4_pkg-srv:countmagnitude-request instead.")))

(cl:ensure-generic-function 'komponenX-val :lambda-list '(m))
(cl:defmethod komponenX-val ((m <countmagnitude-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader service_day4_pkg-srv:komponenX-val is deprecated.  Use service_day4_pkg-srv:komponenX instead.")
  (komponenX m))

(cl:ensure-generic-function 'komponenY-val :lambda-list '(m))
(cl:defmethod komponenY-val ((m <countmagnitude-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader service_day4_pkg-srv:komponenY-val is deprecated.  Use service_day4_pkg-srv:komponenY instead.")
  (komponenY m))

(cl:ensure-generic-function 'komponenZ-val :lambda-list '(m))
(cl:defmethod komponenZ-val ((m <countmagnitude-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader service_day4_pkg-srv:komponenZ-val is deprecated.  Use service_day4_pkg-srv:komponenZ instead.")
  (komponenZ m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <countmagnitude-request>) ostream)
  "Serializes a message object of type '<countmagnitude-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'komponenX))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'komponenY))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'komponenZ))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <countmagnitude-request>) istream)
  "Deserializes a message object of type '<countmagnitude-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'komponenX) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'komponenY) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'komponenZ) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<countmagnitude-request>)))
  "Returns string type for a service object of type '<countmagnitude-request>"
  "service_day4_pkg/countmagnitudeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'countmagnitude-request)))
  "Returns string type for a service object of type 'countmagnitude-request"
  "service_day4_pkg/countmagnitudeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<countmagnitude-request>)))
  "Returns md5sum for a message object of type '<countmagnitude-request>"
  "55d1a215f43fd1f64eb105a505b172c4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'countmagnitude-request)))
  "Returns md5sum for a message object of type 'countmagnitude-request"
  "55d1a215f43fd1f64eb105a505b172c4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<countmagnitude-request>)))
  "Returns full string definition for message of type '<countmagnitude-request>"
  (cl:format cl:nil "float64 komponenX~%float64 komponenY~%float64 komponenZ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'countmagnitude-request)))
  "Returns full string definition for message of type 'countmagnitude-request"
  (cl:format cl:nil "float64 komponenX~%float64 komponenY~%float64 komponenZ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <countmagnitude-request>))
  (cl:+ 0
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <countmagnitude-request>))
  "Converts a ROS message object to a list"
  (cl:list 'countmagnitude-request
    (cl:cons ':komponenX (komponenX msg))
    (cl:cons ':komponenY (komponenY msg))
    (cl:cons ':komponenZ (komponenZ msg))
))
;//! \htmlinclude countmagnitude-response.msg.html

(cl:defclass <countmagnitude-response> (roslisp-msg-protocol:ros-message)
  ((magnitude
    :reader magnitude
    :initarg :magnitude
    :type cl:float
    :initform 0.0))
)

(cl:defclass countmagnitude-response (<countmagnitude-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <countmagnitude-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'countmagnitude-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name service_day4_pkg-srv:<countmagnitude-response> is deprecated: use service_day4_pkg-srv:countmagnitude-response instead.")))

(cl:ensure-generic-function 'magnitude-val :lambda-list '(m))
(cl:defmethod magnitude-val ((m <countmagnitude-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader service_day4_pkg-srv:magnitude-val is deprecated.  Use service_day4_pkg-srv:magnitude instead.")
  (magnitude m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <countmagnitude-response>) ostream)
  "Serializes a message object of type '<countmagnitude-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'magnitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <countmagnitude-response>) istream)
  "Deserializes a message object of type '<countmagnitude-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'magnitude) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<countmagnitude-response>)))
  "Returns string type for a service object of type '<countmagnitude-response>"
  "service_day4_pkg/countmagnitudeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'countmagnitude-response)))
  "Returns string type for a service object of type 'countmagnitude-response"
  "service_day4_pkg/countmagnitudeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<countmagnitude-response>)))
  "Returns md5sum for a message object of type '<countmagnitude-response>"
  "55d1a215f43fd1f64eb105a505b172c4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'countmagnitude-response)))
  "Returns md5sum for a message object of type 'countmagnitude-response"
  "55d1a215f43fd1f64eb105a505b172c4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<countmagnitude-response>)))
  "Returns full string definition for message of type '<countmagnitude-response>"
  (cl:format cl:nil "float64 magnitude~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'countmagnitude-response)))
  "Returns full string definition for message of type 'countmagnitude-response"
  (cl:format cl:nil "float64 magnitude~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <countmagnitude-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <countmagnitude-response>))
  "Converts a ROS message object to a list"
  (cl:list 'countmagnitude-response
    (cl:cons ':magnitude (magnitude msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'countmagnitude)))
  'countmagnitude-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'countmagnitude)))
  'countmagnitude-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'countmagnitude)))
  "Returns string type for a service object of type '<countmagnitude>"
  "service_day4_pkg/countmagnitude")