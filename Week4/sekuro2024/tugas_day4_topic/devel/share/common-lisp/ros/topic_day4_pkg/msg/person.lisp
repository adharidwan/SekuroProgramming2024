; Auto-generated. Do not edit!


(cl:in-package topic_day4_pkg-msg)


;//! \htmlinclude person.msg.html

(cl:defclass <person> (roslisp-msg-protocol:ros-message)
  ((nama
    :reader nama
    :initarg :nama
    :type cl:string
    :initform "")
   (usia
    :reader usia
    :initarg :usia
    :type cl:integer
    :initform 0)
   (tinggi
    :reader tinggi
    :initarg :tinggi
    :type cl:float
    :initform 0.0)
   (kehadiran
    :reader kehadiran
    :initarg :kehadiran
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass person (<person>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <person>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'person)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name topic_day4_pkg-msg:<person> is deprecated: use topic_day4_pkg-msg:person instead.")))

(cl:ensure-generic-function 'nama-val :lambda-list '(m))
(cl:defmethod nama-val ((m <person>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader topic_day4_pkg-msg:nama-val is deprecated.  Use topic_day4_pkg-msg:nama instead.")
  (nama m))

(cl:ensure-generic-function 'usia-val :lambda-list '(m))
(cl:defmethod usia-val ((m <person>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader topic_day4_pkg-msg:usia-val is deprecated.  Use topic_day4_pkg-msg:usia instead.")
  (usia m))

(cl:ensure-generic-function 'tinggi-val :lambda-list '(m))
(cl:defmethod tinggi-val ((m <person>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader topic_day4_pkg-msg:tinggi-val is deprecated.  Use topic_day4_pkg-msg:tinggi instead.")
  (tinggi m))

(cl:ensure-generic-function 'kehadiran-val :lambda-list '(m))
(cl:defmethod kehadiran-val ((m <person>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader topic_day4_pkg-msg:kehadiran-val is deprecated.  Use topic_day4_pkg-msg:kehadiran instead.")
  (kehadiran m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <person>) ostream)
  "Serializes a message object of type '<person>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'nama))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'nama))
  (cl:let* ((signed (cl:slot-value msg 'usia)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'tinggi))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'kehadiran) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <person>) istream)
  "Deserializes a message object of type '<person>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'nama) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'nama) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'usia) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'tinggi) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'kehadiran) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<person>)))
  "Returns string type for a message object of type '<person>"
  "topic_day4_pkg/person")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'person)))
  "Returns string type for a message object of type 'person"
  "topic_day4_pkg/person")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<person>)))
  "Returns md5sum for a message object of type '<person>"
  "642dd92b70eae635c30acd8224032ab7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'person)))
  "Returns md5sum for a message object of type 'person"
  "642dd92b70eae635c30acd8224032ab7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<person>)))
  "Returns full string definition for message of type '<person>"
  (cl:format cl:nil "string nama~%int64 usia~%float64 tinggi~%bool kehadiran~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'person)))
  "Returns full string definition for message of type 'person"
  (cl:format cl:nil "string nama~%int64 usia~%float64 tinggi~%bool kehadiran~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <person>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'nama))
     8
     8
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <person>))
  "Converts a ROS message object to a list"
  (cl:list 'person
    (cl:cons ':nama (nama msg))
    (cl:cons ':usia (usia msg))
    (cl:cons ':tinggi (tinggi msg))
    (cl:cons ':kehadiran (kehadiran msg))
))
