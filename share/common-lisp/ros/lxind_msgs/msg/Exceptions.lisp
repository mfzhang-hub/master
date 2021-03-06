; Auto-generated. Do not edit!


(cl:in-package lxind_msgs-msg)


;//! \htmlinclude Exceptions.msg.html

(cl:defclass <Exceptions> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (exceptions
    :reader exceptions
    :initarg :exceptions
    :type (cl:vector lxind_msgs-msg:Exception)
   :initform (cl:make-array 0 :element-type 'lxind_msgs-msg:Exception :initial-element (cl:make-instance 'lxind_msgs-msg:Exception))))
)

(cl:defclass Exceptions (<Exceptions>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Exceptions>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Exceptions)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lxind_msgs-msg:<Exceptions> is deprecated: use lxind_msgs-msg:Exceptions instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Exceptions>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-msg:header-val is deprecated.  Use lxind_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'exceptions-val :lambda-list '(m))
(cl:defmethod exceptions-val ((m <Exceptions>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-msg:exceptions-val is deprecated.  Use lxind_msgs-msg:exceptions instead.")
  (exceptions m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Exceptions>) ostream)
  "Serializes a message object of type '<Exceptions>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'exceptions))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'exceptions))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Exceptions>) istream)
  "Deserializes a message object of type '<Exceptions>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'exceptions) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'exceptions)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'lxind_msgs-msg:Exception))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Exceptions>)))
  "Returns string type for a message object of type '<Exceptions>"
  "lxind_msgs/Exceptions")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Exceptions)))
  "Returns string type for a message object of type 'Exceptions"
  "lxind_msgs/Exceptions")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Exceptions>)))
  "Returns md5sum for a message object of type '<Exceptions>"
  "e1ee62720c4eba0ee889e14ffdbd8cf5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Exceptions)))
  "Returns md5sum for a message object of type 'Exceptions"
  "e1ee62720c4eba0ee889e14ffdbd8cf5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Exceptions>)))
  "Returns full string definition for message of type '<Exceptions>"
  (cl:format cl:nil "Header header~%~%lxind_msgs/Exception[] exceptions~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: lxind_msgs/Exception~%Header header~%~%string module_name~%int32 exc_code~%string description~%~%## ??????????????????~%## 0: ??????~%## 1: ??????????????????~%## 2: ??????????????????~%## 3: ???????????????????????????????????????????????????????????????100ms~%## 4: ?????????(3s)??????????????????~%## 5: ?????????(3s)?????????????????????~%## 6: ?????????????????????~%## 7: ????????????????????????~%## 8: ????????????????????????~%## 9: ?????????????????????~%## 10: ?????????(10s)??????????????????~%## 11: ????????????????????????(10m)?????????~%## 12: ???????????????(10s)???????????????~%## 999: ????????????~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Exceptions)))
  "Returns full string definition for message of type 'Exceptions"
  (cl:format cl:nil "Header header~%~%lxind_msgs/Exception[] exceptions~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: lxind_msgs/Exception~%Header header~%~%string module_name~%int32 exc_code~%string description~%~%## ??????????????????~%## 0: ??????~%## 1: ??????????????????~%## 2: ??????????????????~%## 3: ???????????????????????????????????????????????????????????????100ms~%## 4: ?????????(3s)??????????????????~%## 5: ?????????(3s)?????????????????????~%## 6: ?????????????????????~%## 7: ????????????????????????~%## 8: ????????????????????????~%## 9: ?????????????????????~%## 10: ?????????(10s)??????????????????~%## 11: ????????????????????????(10m)?????????~%## 12: ???????????????(10s)???????????????~%## 999: ????????????~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Exceptions>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'exceptions) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Exceptions>))
  "Converts a ROS message object to a list"
  (cl:list 'Exceptions
    (cl:cons ':header (header msg))
    (cl:cons ':exceptions (exceptions msg))
))
