; Auto-generated. Do not edit!


(cl:in-package demo_pkg-msg)


;//! \htmlinclude pesan.msg.html

(cl:defclass <pesan> (roslisp-msg-protocol:ros-message)
  ((pesan1
    :reader pesan1
    :initarg :pesan1
    :type cl:integer
    :initform 0)
   (pesan2
    :reader pesan2
    :initarg :pesan2
    :type cl:float
    :initform 0.0)
   (pesan3
    :reader pesan3
    :initarg :pesan3
    :type cl:string
    :initform ""))
)

(cl:defclass pesan (<pesan>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <pesan>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'pesan)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name demo_pkg-msg:<pesan> is deprecated: use demo_pkg-msg:pesan instead.")))

(cl:ensure-generic-function 'pesan1-val :lambda-list '(m))
(cl:defmethod pesan1-val ((m <pesan>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader demo_pkg-msg:pesan1-val is deprecated.  Use demo_pkg-msg:pesan1 instead.")
  (pesan1 m))

(cl:ensure-generic-function 'pesan2-val :lambda-list '(m))
(cl:defmethod pesan2-val ((m <pesan>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader demo_pkg-msg:pesan2-val is deprecated.  Use demo_pkg-msg:pesan2 instead.")
  (pesan2 m))

(cl:ensure-generic-function 'pesan3-val :lambda-list '(m))
(cl:defmethod pesan3-val ((m <pesan>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader demo_pkg-msg:pesan3-val is deprecated.  Use demo_pkg-msg:pesan3 instead.")
  (pesan3 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <pesan>) ostream)
  "Serializes a message object of type '<pesan>"
  (cl:let* ((signed (cl:slot-value msg 'pesan1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'pesan2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'pesan3))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'pesan3))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <pesan>) istream)
  "Deserializes a message object of type '<pesan>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pesan1) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pesan2) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pesan3) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'pesan3) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<pesan>)))
  "Returns string type for a message object of type '<pesan>"
  "demo_pkg/pesan")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'pesan)))
  "Returns string type for a message object of type 'pesan"
  "demo_pkg/pesan")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<pesan>)))
  "Returns md5sum for a message object of type '<pesan>"
  "20a3c179e0701ac679503dfd1cfe077f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'pesan)))
  "Returns md5sum for a message object of type 'pesan"
  "20a3c179e0701ac679503dfd1cfe077f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<pesan>)))
  "Returns full string definition for message of type '<pesan>"
  (cl:format cl:nil "int64 pesan1~%float64 pesan2~%string pesan3~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'pesan)))
  "Returns full string definition for message of type 'pesan"
  (cl:format cl:nil "int64 pesan1~%float64 pesan2~%string pesan3~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <pesan>))
  (cl:+ 0
     8
     8
     4 (cl:length (cl:slot-value msg 'pesan3))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <pesan>))
  "Converts a ROS message object to a list"
  (cl:list 'pesan
    (cl:cons ':pesan1 (pesan1 msg))
    (cl:cons ':pesan2 (pesan2 msg))
    (cl:cons ':pesan3 (pesan3 msg))
))
