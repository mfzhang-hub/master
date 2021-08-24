; Auto-generated. Do not edit!


(cl:in-package lxind_msgs-msg)


;//! \htmlinclude InitializeLocStatus.msg.html

(cl:defclass <InitializeLocStatus> (roslisp-msg-protocol:ros-message)
  ((isSuccess
    :reader isSuccess
    :initarg :isSuccess
    :type cl:boolean
    :initform cl:nil)
   (weight
    :reader weight
    :initarg :weight
    :type cl:integer
    :initform 0)
   (relocInfo
    :reader relocInfo
    :initarg :relocInfo
    :type lxind_msgs-msg:InitializeLoc
    :initform (cl:make-instance 'lxind_msgs-msg:InitializeLoc)))
)

(cl:defclass InitializeLocStatus (<InitializeLocStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <InitializeLocStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'InitializeLocStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lxind_msgs-msg:<InitializeLocStatus> is deprecated: use lxind_msgs-msg:InitializeLocStatus instead.")))

(cl:ensure-generic-function 'isSuccess-val :lambda-list '(m))
(cl:defmethod isSuccess-val ((m <InitializeLocStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-msg:isSuccess-val is deprecated.  Use lxind_msgs-msg:isSuccess instead.")
  (isSuccess m))

(cl:ensure-generic-function 'weight-val :lambda-list '(m))
(cl:defmethod weight-val ((m <InitializeLocStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-msg:weight-val is deprecated.  Use lxind_msgs-msg:weight instead.")
  (weight m))

(cl:ensure-generic-function 'relocInfo-val :lambda-list '(m))
(cl:defmethod relocInfo-val ((m <InitializeLocStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-msg:relocInfo-val is deprecated.  Use lxind_msgs-msg:relocInfo instead.")
  (relocInfo m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <InitializeLocStatus>) ostream)
  "Serializes a message object of type '<InitializeLocStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'isSuccess) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'weight)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'relocInfo) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <InitializeLocStatus>) istream)
  "Deserializes a message object of type '<InitializeLocStatus>"
    (cl:setf (cl:slot-value msg 'isSuccess) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'weight) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'relocInfo) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<InitializeLocStatus>)))
  "Returns string type for a message object of type '<InitializeLocStatus>"
  "lxind_msgs/InitializeLocStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'InitializeLocStatus)))
  "Returns string type for a message object of type 'InitializeLocStatus"
  "lxind_msgs/InitializeLocStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<InitializeLocStatus>)))
  "Returns md5sum for a message object of type '<InitializeLocStatus>"
  "5d6cace685863e5309090db1004f6f1c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'InitializeLocStatus)))
  "Returns md5sum for a message object of type 'InitializeLocStatus"
  "5d6cace685863e5309090db1004f6f1c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<InitializeLocStatus>)))
  "Returns full string definition for message of type '<InitializeLocStatus>"
  (cl:format cl:nil "bool isSuccess~%int32 weight~%InitializeLoc relocInfo~%================================================================================~%MSG: lxind_msgs/InitializeLoc~%Header header~%string name~%float32 x~%float32 y~%float32 theta~%bool is_startup_reloc~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'InitializeLocStatus)))
  "Returns full string definition for message of type 'InitializeLocStatus"
  (cl:format cl:nil "bool isSuccess~%int32 weight~%InitializeLoc relocInfo~%================================================================================~%MSG: lxind_msgs/InitializeLoc~%Header header~%string name~%float32 x~%float32 y~%float32 theta~%bool is_startup_reloc~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <InitializeLocStatus>))
  (cl:+ 0
     1
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'relocInfo))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <InitializeLocStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'InitializeLocStatus
    (cl:cons ':isSuccess (isSuccess msg))
    (cl:cons ':weight (weight msg))
    (cl:cons ':relocInfo (relocInfo msg))
))
