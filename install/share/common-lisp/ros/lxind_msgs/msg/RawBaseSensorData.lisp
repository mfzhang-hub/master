; Auto-generated. Do not edit!


(cl:in-package lxind_msgs-msg)


;//! \htmlinclude RawBaseSensorData.msg.html

(cl:defclass <RawBaseSensorData> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (left_encoder
    :reader left_encoder
    :initarg :left_encoder
    :type cl:integer
    :initform 0)
   (right_encoder
    :reader right_encoder
    :initarg :right_encoder
    :type cl:integer
    :initform 0)
   (yaw
    :reader yaw
    :initarg :yaw
    :type cl:float
    :initform 0.0)
   (is_bumped
    :reader is_bumped
    :initarg :is_bumped
    :type cl:boolean
    :initform cl:nil)
   (emerg_pressed
    :reader emerg_pressed
    :initarg :emerg_pressed
    :type cl:boolean
    :initform cl:nil)
   (switch1_on
    :reader switch1_on
    :initarg :switch1_on
    :type cl:boolean
    :initform cl:nil)
   (switch2_on
    :reader switch2_on
    :initarg :switch2_on
    :type cl:boolean
    :initform cl:nil)
   (switch3_on
    :reader switch3_on
    :initarg :switch3_on
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass RawBaseSensorData (<RawBaseSensorData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RawBaseSensorData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RawBaseSensorData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lxind_msgs-msg:<RawBaseSensorData> is deprecated: use lxind_msgs-msg:RawBaseSensorData instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RawBaseSensorData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-msg:header-val is deprecated.  Use lxind_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'left_encoder-val :lambda-list '(m))
(cl:defmethod left_encoder-val ((m <RawBaseSensorData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-msg:left_encoder-val is deprecated.  Use lxind_msgs-msg:left_encoder instead.")
  (left_encoder m))

(cl:ensure-generic-function 'right_encoder-val :lambda-list '(m))
(cl:defmethod right_encoder-val ((m <RawBaseSensorData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-msg:right_encoder-val is deprecated.  Use lxind_msgs-msg:right_encoder instead.")
  (right_encoder m))

(cl:ensure-generic-function 'yaw-val :lambda-list '(m))
(cl:defmethod yaw-val ((m <RawBaseSensorData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-msg:yaw-val is deprecated.  Use lxind_msgs-msg:yaw instead.")
  (yaw m))

(cl:ensure-generic-function 'is_bumped-val :lambda-list '(m))
(cl:defmethod is_bumped-val ((m <RawBaseSensorData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-msg:is_bumped-val is deprecated.  Use lxind_msgs-msg:is_bumped instead.")
  (is_bumped m))

(cl:ensure-generic-function 'emerg_pressed-val :lambda-list '(m))
(cl:defmethod emerg_pressed-val ((m <RawBaseSensorData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-msg:emerg_pressed-val is deprecated.  Use lxind_msgs-msg:emerg_pressed instead.")
  (emerg_pressed m))

(cl:ensure-generic-function 'switch1_on-val :lambda-list '(m))
(cl:defmethod switch1_on-val ((m <RawBaseSensorData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-msg:switch1_on-val is deprecated.  Use lxind_msgs-msg:switch1_on instead.")
  (switch1_on m))

(cl:ensure-generic-function 'switch2_on-val :lambda-list '(m))
(cl:defmethod switch2_on-val ((m <RawBaseSensorData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-msg:switch2_on-val is deprecated.  Use lxind_msgs-msg:switch2_on instead.")
  (switch2_on m))

(cl:ensure-generic-function 'switch3_on-val :lambda-list '(m))
(cl:defmethod switch3_on-val ((m <RawBaseSensorData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-msg:switch3_on-val is deprecated.  Use lxind_msgs-msg:switch3_on instead.")
  (switch3_on m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RawBaseSensorData>) ostream)
  "Serializes a message object of type '<RawBaseSensorData>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'left_encoder)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'right_encoder)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_bumped) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'emerg_pressed) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'switch1_on) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'switch2_on) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'switch3_on) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RawBaseSensorData>) istream)
  "Deserializes a message object of type '<RawBaseSensorData>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'left_encoder) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'right_encoder) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yaw) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'is_bumped) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'emerg_pressed) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'switch1_on) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'switch2_on) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'switch3_on) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RawBaseSensorData>)))
  "Returns string type for a message object of type '<RawBaseSensorData>"
  "lxind_msgs/RawBaseSensorData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RawBaseSensorData)))
  "Returns string type for a message object of type 'RawBaseSensorData"
  "lxind_msgs/RawBaseSensorData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RawBaseSensorData>)))
  "Returns md5sum for a message object of type '<RawBaseSensorData>"
  "3a215546cf8369a7c4083a9a14c8c42a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RawBaseSensorData)))
  "Returns md5sum for a message object of type 'RawBaseSensorData"
  "3a215546cf8369a7c4083a9a14c8c42a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RawBaseSensorData>)))
  "Returns full string definition for message of type '<RawBaseSensorData>"
  (cl:format cl:nil "# raw values reported from base controller~%Header header~%~%int32 left_encoder~%int32 right_encoder~%float32 yaw~%bool is_bumped~%bool emerg_pressed~%~%bool switch1_on~%bool switch2_on~%bool switch3_on~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RawBaseSensorData)))
  "Returns full string definition for message of type 'RawBaseSensorData"
  (cl:format cl:nil "# raw values reported from base controller~%Header header~%~%int32 left_encoder~%int32 right_encoder~%float32 yaw~%bool is_bumped~%bool emerg_pressed~%~%bool switch1_on~%bool switch2_on~%bool switch3_on~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RawBaseSensorData>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RawBaseSensorData>))
  "Converts a ROS message object to a list"
  (cl:list 'RawBaseSensorData
    (cl:cons ':header (header msg))
    (cl:cons ':left_encoder (left_encoder msg))
    (cl:cons ':right_encoder (right_encoder msg))
    (cl:cons ':yaw (yaw msg))
    (cl:cons ':is_bumped (is_bumped msg))
    (cl:cons ':emerg_pressed (emerg_pressed msg))
    (cl:cons ':switch1_on (switch1_on msg))
    (cl:cons ':switch2_on (switch2_on msg))
    (cl:cons ':switch3_on (switch3_on msg))
))
