; Auto-generated. Do not edit!


(cl:in-package lxind_msgs-msg)


;//! \htmlinclude RobotPose.msg.html

(cl:defclass <RobotPose> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (th
    :reader th
    :initarg :th
    :type cl:float
    :initform 0.0))
)

(cl:defclass RobotPose (<RobotPose>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotPose>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotPose)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lxind_msgs-msg:<RobotPose> is deprecated: use lxind_msgs-msg:RobotPose instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <RobotPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-msg:x-val is deprecated.  Use lxind_msgs-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <RobotPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-msg:y-val is deprecated.  Use lxind_msgs-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'th-val :lambda-list '(m))
(cl:defmethod th-val ((m <RobotPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-msg:th-val is deprecated.  Use lxind_msgs-msg:th instead.")
  (th m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotPose>) ostream)
  "Serializes a message object of type '<RobotPose>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'th))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotPose>) istream)
  "Deserializes a message object of type '<RobotPose>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'th) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotPose>)))
  "Returns string type for a message object of type '<RobotPose>"
  "lxind_msgs/RobotPose")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotPose)))
  "Returns string type for a message object of type 'RobotPose"
  "lxind_msgs/RobotPose")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotPose>)))
  "Returns md5sum for a message object of type '<RobotPose>"
  "32b6af7438d7bcbef150594ddfd57022")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotPose)))
  "Returns md5sum for a message object of type 'RobotPose"
  "32b6af7438d7bcbef150594ddfd57022")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotPose>)))
  "Returns full string definition for message of type '<RobotPose>"
  (cl:format cl:nil "float32 x~%float32 y~%float32 th~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotPose)))
  "Returns full string definition for message of type 'RobotPose"
  (cl:format cl:nil "float32 x~%float32 y~%float32 th~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotPose>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotPose>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotPose
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':th (th msg))
))
