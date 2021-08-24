; Auto-generated. Do not edit!


(cl:in-package lxind_msgs-srv)


;//! \htmlinclude SendDistAndAngle-request.msg.html

(cl:defclass <SendDistAndAngle-request> (roslisp-msg-protocol:ros-message)
  ((distance
    :reader distance
    :initarg :distance
    :type cl:float
    :initform 0.0)
   (angle
    :reader angle
    :initarg :angle
    :type cl:float
    :initform 0.0))
)

(cl:defclass SendDistAndAngle-request (<SendDistAndAngle-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SendDistAndAngle-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SendDistAndAngle-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lxind_msgs-srv:<SendDistAndAngle-request> is deprecated: use lxind_msgs-srv:SendDistAndAngle-request instead.")))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <SendDistAndAngle-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-srv:distance-val is deprecated.  Use lxind_msgs-srv:distance instead.")
  (distance m))

(cl:ensure-generic-function 'angle-val :lambda-list '(m))
(cl:defmethod angle-val ((m <SendDistAndAngle-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-srv:angle-val is deprecated.  Use lxind_msgs-srv:angle instead.")
  (angle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SendDistAndAngle-request>) ostream)
  "Serializes a message object of type '<SendDistAndAngle-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SendDistAndAngle-request>) istream)
  "Deserializes a message object of type '<SendDistAndAngle-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angle) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SendDistAndAngle-request>)))
  "Returns string type for a service object of type '<SendDistAndAngle-request>"
  "lxind_msgs/SendDistAndAngleRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SendDistAndAngle-request)))
  "Returns string type for a service object of type 'SendDistAndAngle-request"
  "lxind_msgs/SendDistAndAngleRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SendDistAndAngle-request>)))
  "Returns md5sum for a message object of type '<SendDistAndAngle-request>"
  "1f1d53743f4592ee455aa3eaf9019457")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SendDistAndAngle-request)))
  "Returns md5sum for a message object of type 'SendDistAndAngle-request"
  "1f1d53743f4592ee455aa3eaf9019457")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SendDistAndAngle-request>)))
  "Returns full string definition for message of type '<SendDistAndAngle-request>"
  (cl:format cl:nil "float64 distance~%float64 angle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SendDistAndAngle-request)))
  "Returns full string definition for message of type 'SendDistAndAngle-request"
  (cl:format cl:nil "float64 distance~%float64 angle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SendDistAndAngle-request>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SendDistAndAngle-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SendDistAndAngle-request
    (cl:cons ':distance (distance msg))
    (cl:cons ':angle (angle msg))
))
;//! \htmlinclude SendDistAndAngle-response.msg.html

(cl:defclass <SendDistAndAngle-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SendDistAndAngle-response (<SendDistAndAngle-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SendDistAndAngle-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SendDistAndAngle-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lxind_msgs-srv:<SendDistAndAngle-response> is deprecated: use lxind_msgs-srv:SendDistAndAngle-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SendDistAndAngle-response>) ostream)
  "Serializes a message object of type '<SendDistAndAngle-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SendDistAndAngle-response>) istream)
  "Deserializes a message object of type '<SendDistAndAngle-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SendDistAndAngle-response>)))
  "Returns string type for a service object of type '<SendDistAndAngle-response>"
  "lxind_msgs/SendDistAndAngleResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SendDistAndAngle-response)))
  "Returns string type for a service object of type 'SendDistAndAngle-response"
  "lxind_msgs/SendDistAndAngleResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SendDistAndAngle-response>)))
  "Returns md5sum for a message object of type '<SendDistAndAngle-response>"
  "1f1d53743f4592ee455aa3eaf9019457")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SendDistAndAngle-response)))
  "Returns md5sum for a message object of type 'SendDistAndAngle-response"
  "1f1d53743f4592ee455aa3eaf9019457")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SendDistAndAngle-response>)))
  "Returns full string definition for message of type '<SendDistAndAngle-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SendDistAndAngle-response)))
  "Returns full string definition for message of type 'SendDistAndAngle-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SendDistAndAngle-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SendDistAndAngle-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SendDistAndAngle-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SendDistAndAngle)))
  'SendDistAndAngle-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SendDistAndAngle)))
  'SendDistAndAngle-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SendDistAndAngle)))
  "Returns string type for a service object of type '<SendDistAndAngle>"
  "lxind_msgs/SendDistAndAngle")