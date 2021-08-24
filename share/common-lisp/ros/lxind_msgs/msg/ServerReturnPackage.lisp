; Auto-generated. Do not edit!


(cl:in-package lxind_msgs-msg)


;//! \htmlinclude ServerReturnPackage.msg.html

(cl:defclass <ServerReturnPackage> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (package_header
    :reader package_header
    :initarg :package_header
    :type cl:fixnum
    :initform 0)
   (warn
    :reader warn
    :initarg :warn
    :type cl:integer
    :initform 0))
)

(cl:defclass ServerReturnPackage (<ServerReturnPackage>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ServerReturnPackage>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ServerReturnPackage)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lxind_msgs-msg:<ServerReturnPackage> is deprecated: use lxind_msgs-msg:ServerReturnPackage instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ServerReturnPackage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-msg:header-val is deprecated.  Use lxind_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'package_header-val :lambda-list '(m))
(cl:defmethod package_header-val ((m <ServerReturnPackage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-msg:package_header-val is deprecated.  Use lxind_msgs-msg:package_header instead.")
  (package_header m))

(cl:ensure-generic-function 'warn-val :lambda-list '(m))
(cl:defmethod warn-val ((m <ServerReturnPackage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-msg:warn-val is deprecated.  Use lxind_msgs-msg:warn instead.")
  (warn m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ServerReturnPackage>) ostream)
  "Serializes a message object of type '<ServerReturnPackage>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'package_header)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'warn)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ServerReturnPackage>) istream)
  "Deserializes a message object of type '<ServerReturnPackage>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'package_header) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'warn) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ServerReturnPackage>)))
  "Returns string type for a message object of type '<ServerReturnPackage>"
  "lxind_msgs/ServerReturnPackage")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ServerReturnPackage)))
  "Returns string type for a message object of type 'ServerReturnPackage"
  "lxind_msgs/ServerReturnPackage")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ServerReturnPackage>)))
  "Returns md5sum for a message object of type '<ServerReturnPackage>"
  "425ca2618ab4a8a07e9ecad46a72601f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ServerReturnPackage)))
  "Returns md5sum for a message object of type 'ServerReturnPackage"
  "425ca2618ab4a8a07e9ecad46a72601f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ServerReturnPackage>)))
  "Returns full string definition for message of type '<ServerReturnPackage>"
  (cl:format cl:nil "Header header~%~%int8 package_header~%int32    warn~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ServerReturnPackage)))
  "Returns full string definition for message of type 'ServerReturnPackage"
  (cl:format cl:nil "Header header~%~%int8 package_header~%int32    warn~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ServerReturnPackage>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ServerReturnPackage>))
  "Converts a ROS message object to a list"
  (cl:list 'ServerReturnPackage
    (cl:cons ':header (header msg))
    (cl:cons ':package_header (package_header msg))
    (cl:cons ':warn (warn msg))
))
