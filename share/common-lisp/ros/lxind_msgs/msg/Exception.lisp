; Auto-generated. Do not edit!


(cl:in-package lxind_msgs-msg)


;//! \htmlinclude Exception.msg.html

(cl:defclass <Exception> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (module_name
    :reader module_name
    :initarg :module_name
    :type cl:string
    :initform "")
   (exc_code
    :reader exc_code
    :initarg :exc_code
    :type cl:integer
    :initform 0)
   (description
    :reader description
    :initarg :description
    :type cl:string
    :initform ""))
)

(cl:defclass Exception (<Exception>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Exception>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Exception)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lxind_msgs-msg:<Exception> is deprecated: use lxind_msgs-msg:Exception instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Exception>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-msg:header-val is deprecated.  Use lxind_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'module_name-val :lambda-list '(m))
(cl:defmethod module_name-val ((m <Exception>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-msg:module_name-val is deprecated.  Use lxind_msgs-msg:module_name instead.")
  (module_name m))

(cl:ensure-generic-function 'exc_code-val :lambda-list '(m))
(cl:defmethod exc_code-val ((m <Exception>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-msg:exc_code-val is deprecated.  Use lxind_msgs-msg:exc_code instead.")
  (exc_code m))

(cl:ensure-generic-function 'description-val :lambda-list '(m))
(cl:defmethod description-val ((m <Exception>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-msg:description-val is deprecated.  Use lxind_msgs-msg:description instead.")
  (description m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Exception>) ostream)
  "Serializes a message object of type '<Exception>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'module_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'module_name))
  (cl:let* ((signed (cl:slot-value msg 'exc_code)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'description))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'description))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Exception>) istream)
  "Deserializes a message object of type '<Exception>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'module_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'module_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'exc_code) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'description) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'description) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Exception>)))
  "Returns string type for a message object of type '<Exception>"
  "lxind_msgs/Exception")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Exception)))
  "Returns string type for a message object of type 'Exception"
  "lxind_msgs/Exception")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Exception>)))
  "Returns md5sum for a message object of type '<Exception>"
  "0f291ef6a0311d2b715a94b5bf101ae5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Exception)))
  "Returns md5sum for a message object of type 'Exception"
  "0f291ef6a0311d2b715a94b5bf101ae5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Exception>)))
  "Returns full string definition for message of type '<Exception>"
  (cl:format cl:nil "Header header~%~%string module_name~%int32 exc_code~%string description~%~%## 视觉定位异常~%## 0: 正常~%## 1: 相机启动失败~%## 2: 图像数据为空~%## 3: 图像数据较老，当前时间减去图像发送时间超过100ms~%## 4: 长时间(3s)没有图像数据~%## 5: 长时间(3s)没有里程计数据~%## 6: 图像过曝或欠曝~%## 7: 地图数据读取失败~%## 8: 特征检测服务异常~%## 9: 定位初始化失败~%## 10: 长时间(10s)特征检测失败~%## 11: 偏离路径，长距离(10m)无特征~%## 12: 重定位超时(10s)，定位丢失~%## 999: 其他异常~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Exception)))
  "Returns full string definition for message of type 'Exception"
  (cl:format cl:nil "Header header~%~%string module_name~%int32 exc_code~%string description~%~%## 视觉定位异常~%## 0: 正常~%## 1: 相机启动失败~%## 2: 图像数据为空~%## 3: 图像数据较老，当前时间减去图像发送时间超过100ms~%## 4: 长时间(3s)没有图像数据~%## 5: 长时间(3s)没有里程计数据~%## 6: 图像过曝或欠曝~%## 7: 地图数据读取失败~%## 8: 特征检测服务异常~%## 9: 定位初始化失败~%## 10: 长时间(10s)特征检测失败~%## 11: 偏离路径，长距离(10m)无特征~%## 12: 重定位超时(10s)，定位丢失~%## 999: 其他异常~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Exception>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'module_name))
     4
     4 (cl:length (cl:slot-value msg 'description))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Exception>))
  "Converts a ROS message object to a list"
  (cl:list 'Exception
    (cl:cons ':header (header msg))
    (cl:cons ':module_name (module_name msg))
    (cl:cons ':exc_code (exc_code msg))
    (cl:cons ':description (description msg))
))
