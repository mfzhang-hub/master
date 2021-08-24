; Auto-generated. Do not edit!


(cl:in-package lxind_msgs-srv)


;//! \htmlinclude SendDist-request.msg.html

(cl:defclass <SendDist-request> (roslisp-msg-protocol:ros-message)
  ((distance
    :reader distance
    :initarg :distance
    :type cl:float
    :initform 0.0))
)

(cl:defclass SendDist-request (<SendDist-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SendDist-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SendDist-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lxind_msgs-srv:<SendDist-request> is deprecated: use lxind_msgs-srv:SendDist-request instead.")))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <SendDist-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-srv:distance-val is deprecated.  Use lxind_msgs-srv:distance instead.")
  (distance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SendDist-request>) ostream)
  "Serializes a message object of type '<SendDist-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SendDist-request>) istream)
  "Deserializes a message object of type '<SendDist-request>"
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SendDist-request>)))
  "Returns string type for a service object of type '<SendDist-request>"
  "lxind_msgs/SendDistRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SendDist-request)))
  "Returns string type for a service object of type 'SendDist-request"
  "lxind_msgs/SendDistRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SendDist-request>)))
  "Returns md5sum for a message object of type '<SendDist-request>"
  "acff7fda0c683c872875f5c4b069f124")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SendDist-request)))
  "Returns md5sum for a message object of type 'SendDist-request"
  "acff7fda0c683c872875f5c4b069f124")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SendDist-request>)))
  "Returns full string definition for message of type '<SendDist-request>"
  (cl:format cl:nil "float64 distance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SendDist-request)))
  "Returns full string definition for message of type 'SendDist-request"
  (cl:format cl:nil "float64 distance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SendDist-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SendDist-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SendDist-request
    (cl:cons ':distance (distance msg))
))
;//! \htmlinclude SendDist-response.msg.html

(cl:defclass <SendDist-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SendDist-response (<SendDist-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SendDist-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SendDist-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lxind_msgs-srv:<SendDist-response> is deprecated: use lxind_msgs-srv:SendDist-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SendDist-response>) ostream)
  "Serializes a message object of type '<SendDist-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SendDist-response>) istream)
  "Deserializes a message object of type '<SendDist-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SendDist-response>)))
  "Returns string type for a service object of type '<SendDist-response>"
  "lxind_msgs/SendDistResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SendDist-response)))
  "Returns string type for a service object of type 'SendDist-response"
  "lxind_msgs/SendDistResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SendDist-response>)))
  "Returns md5sum for a message object of type '<SendDist-response>"
  "acff7fda0c683c872875f5c4b069f124")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SendDist-response)))
  "Returns md5sum for a message object of type 'SendDist-response"
  "acff7fda0c683c872875f5c4b069f124")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SendDist-response>)))
  "Returns full string definition for message of type '<SendDist-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SendDist-response)))
  "Returns full string definition for message of type 'SendDist-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SendDist-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SendDist-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SendDist-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SendDist)))
  'SendDist-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SendDist)))
  'SendDist-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SendDist)))
  "Returns string type for a service object of type '<SendDist>"
  "lxind_msgs/SendDist")