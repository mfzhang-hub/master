; Auto-generated. Do not edit!


(cl:in-package lxind_msgs-msg)


;//! \htmlinclude DevStatus.msg.html

(cl:defclass <DevStatus> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (sys_temp
    :reader sys_temp
    :initarg :sys_temp
    :type cl:fixnum
    :initform 0))
)

(cl:defclass DevStatus (<DevStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DevStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DevStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lxind_msgs-msg:<DevStatus> is deprecated: use lxind_msgs-msg:DevStatus instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <DevStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-msg:header-val is deprecated.  Use lxind_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'sys_temp-val :lambda-list '(m))
(cl:defmethod sys_temp-val ((m <DevStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-msg:sys_temp-val is deprecated.  Use lxind_msgs-msg:sys_temp instead.")
  (sys_temp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DevStatus>) ostream)
  "Serializes a message object of type '<DevStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'sys_temp)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DevStatus>) istream)
  "Deserializes a message object of type '<DevStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sys_temp) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DevStatus>)))
  "Returns string type for a message object of type '<DevStatus>"
  "lxind_msgs/DevStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DevStatus)))
  "Returns string type for a message object of type 'DevStatus"
  "lxind_msgs/DevStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DevStatus>)))
  "Returns md5sum for a message object of type '<DevStatus>"
  "0b9d3ade8a89327b08146f1067c78b2b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DevStatus)))
  "Returns md5sum for a message object of type 'DevStatus"
  "0b9d3ade8a89327b08146f1067c78b2b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DevStatus>)))
  "Returns full string definition for message of type '<DevStatus>"
  (cl:format cl:nil "Header header~%~%int8 sys_temp~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DevStatus)))
  "Returns full string definition for message of type 'DevStatus"
  (cl:format cl:nil "Header header~%~%int8 sys_temp~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DevStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DevStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'DevStatus
    (cl:cons ':header (header msg))
    (cl:cons ':sys_temp (sys_temp msg))
))
