; Auto-generated. Do not edit!


(cl:in-package tutorial2-msg)


;//! \htmlinclude person_data.msg.html

(cl:defclass <person_data> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (age
    :reader age
    :initarg :age
    :type cl:integer
    :initform 0)
   (home
    :reader home
    :initarg :home
    :type cl:string
    :initform ""))
)

(cl:defclass person_data (<person_data>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <person_data>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'person_data)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tutorial2-msg:<person_data> is deprecated: use tutorial2-msg:person_data instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <person_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tutorial2-msg:name-val is deprecated.  Use tutorial2-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'age-val :lambda-list '(m))
(cl:defmethod age-val ((m <person_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tutorial2-msg:age-val is deprecated.  Use tutorial2-msg:age instead.")
  (age m))

(cl:ensure-generic-function 'home-val :lambda-list '(m))
(cl:defmethod home-val ((m <person_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tutorial2-msg:home-val is deprecated.  Use tutorial2-msg:home instead.")
  (home m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <person_data>) ostream)
  "Serializes a message object of type '<person_data>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let* ((signed (cl:slot-value msg 'age)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'home))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'home))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <person_data>) istream)
  "Deserializes a message object of type '<person_data>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'age) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'home) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'home) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<person_data>)))
  "Returns string type for a message object of type '<person_data>"
  "tutorial2/person_data")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'person_data)))
  "Returns string type for a message object of type 'person_data"
  "tutorial2/person_data")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<person_data>)))
  "Returns md5sum for a message object of type '<person_data>"
  "249a937db1a1921606ac75cb2cec8dca")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'person_data)))
  "Returns md5sum for a message object of type 'person_data"
  "249a937db1a1921606ac75cb2cec8dca")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<person_data>)))
  "Returns full string definition for message of type '<person_data>"
  (cl:format cl:nil "string name~%int64 age~%string home~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'person_data)))
  "Returns full string definition for message of type 'person_data"
  (cl:format cl:nil "string name~%int64 age~%string home~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <person_data>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     8
     4 (cl:length (cl:slot-value msg 'home))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <person_data>))
  "Converts a ROS message object to a list"
  (cl:list 'person_data
    (cl:cons ':name (name msg))
    (cl:cons ':age (age msg))
    (cl:cons ':home (home msg))
))
