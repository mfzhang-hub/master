; Auto-generated. Do not edit!


(cl:in-package lxind_msgs-msg)


;//! \htmlinclude LightInfo.msg.html

(cl:defclass <LightInfo> (roslisp-msg-protocol:ros-message)
  ((light_code
    :reader light_code
    :initarg :light_code
    :type cl:fixnum
    :initform 0))
)

(cl:defclass LightInfo (<LightInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LightInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LightInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lxind_msgs-msg:<LightInfo> is deprecated: use lxind_msgs-msg:LightInfo instead.")))

(cl:ensure-generic-function 'light_code-val :lambda-list '(m))
(cl:defmethod light_code-val ((m <LightInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-msg:light_code-val is deprecated.  Use lxind_msgs-msg:light_code instead.")
  (light_code m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<LightInfo>)))
    "Constants for message type '<LightInfo>"
  '((:LIGHT_ALARM . 7)
    (:LIGHT_CHARGING . 8)
    (:LIGHT_NORMAL . 9)
    (:LIGHT_AWAITING . 10))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'LightInfo)))
    "Constants for message type 'LightInfo"
  '((:LIGHT_ALARM . 7)
    (:LIGHT_CHARGING . 8)
    (:LIGHT_NORMAL . 9)
    (:LIGHT_AWAITING . 10))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LightInfo>) ostream)
  "Serializes a message object of type '<LightInfo>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'light_code)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LightInfo>) istream)
  "Deserializes a message object of type '<LightInfo>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'light_code)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LightInfo>)))
  "Returns string type for a message object of type '<LightInfo>"
  "lxind_msgs/LightInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LightInfo)))
  "Returns string type for a message object of type 'LightInfo"
  "lxind_msgs/LightInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LightInfo>)))
  "Returns md5sum for a message object of type '<LightInfo>"
  "04bae1331d5d0ba1a60c262ecb8137fa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LightInfo)))
  "Returns md5sum for a message object of type 'LightInfo"
  "04bae1331d5d0ba1a60c262ecb8137fa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LightInfo>)))
  "Returns full string definition for message of type '<LightInfo>"
  (cl:format cl:nil "uint8 LIGHT_ALARM = 7~%uint8 LIGHT_CHARGING = 8~%uint8 LIGHT_NORMAL = 9~%uint8 LIGHT_AWAITING = 10~%~%~%uint8 light_code~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LightInfo)))
  "Returns full string definition for message of type 'LightInfo"
  (cl:format cl:nil "uint8 LIGHT_ALARM = 7~%uint8 LIGHT_CHARGING = 8~%uint8 LIGHT_NORMAL = 9~%uint8 LIGHT_AWAITING = 10~%~%~%uint8 light_code~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LightInfo>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LightInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'LightInfo
    (cl:cons ':light_code (light_code msg))
))
