; Auto-generated. Do not edit!


(cl:in-package lxind_msgs-srv)


;//! \htmlinclude GetFootprintSize-request.msg.html

(cl:defclass <GetFootprintSize-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetFootprintSize-request (<GetFootprintSize-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetFootprintSize-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetFootprintSize-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lxind_msgs-srv:<GetFootprintSize-request> is deprecated: use lxind_msgs-srv:GetFootprintSize-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetFootprintSize-request>) ostream)
  "Serializes a message object of type '<GetFootprintSize-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetFootprintSize-request>) istream)
  "Deserializes a message object of type '<GetFootprintSize-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetFootprintSize-request>)))
  "Returns string type for a service object of type '<GetFootprintSize-request>"
  "lxind_msgs/GetFootprintSizeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetFootprintSize-request)))
  "Returns string type for a service object of type 'GetFootprintSize-request"
  "lxind_msgs/GetFootprintSizeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetFootprintSize-request>)))
  "Returns md5sum for a message object of type '<GetFootprintSize-request>"
  "f86522e647336fb10b55359fe003f673")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetFootprintSize-request)))
  "Returns md5sum for a message object of type 'GetFootprintSize-request"
  "f86522e647336fb10b55359fe003f673")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetFootprintSize-request>)))
  "Returns full string definition for message of type '<GetFootprintSize-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetFootprintSize-request)))
  "Returns full string definition for message of type 'GetFootprintSize-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetFootprintSize-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetFootprintSize-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetFootprintSize-request
))
;//! \htmlinclude GetFootprintSize-response.msg.html

(cl:defclass <GetFootprintSize-response> (roslisp-msg-protocol:ros-message)
  ((width
    :reader width
    :initarg :width
    :type cl:float
    :initform 0.0)
   (height
    :reader height
    :initarg :height
    :type cl:float
    :initform 0.0))
)

(cl:defclass GetFootprintSize-response (<GetFootprintSize-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetFootprintSize-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetFootprintSize-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lxind_msgs-srv:<GetFootprintSize-response> is deprecated: use lxind_msgs-srv:GetFootprintSize-response instead.")))

(cl:ensure-generic-function 'width-val :lambda-list '(m))
(cl:defmethod width-val ((m <GetFootprintSize-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-srv:width-val is deprecated.  Use lxind_msgs-srv:width instead.")
  (width m))

(cl:ensure-generic-function 'height-val :lambda-list '(m))
(cl:defmethod height-val ((m <GetFootprintSize-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-srv:height-val is deprecated.  Use lxind_msgs-srv:height instead.")
  (height m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetFootprintSize-response>) ostream)
  "Serializes a message object of type '<GetFootprintSize-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'width))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'height))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetFootprintSize-response>) istream)
  "Deserializes a message object of type '<GetFootprintSize-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'width) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'height) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetFootprintSize-response>)))
  "Returns string type for a service object of type '<GetFootprintSize-response>"
  "lxind_msgs/GetFootprintSizeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetFootprintSize-response)))
  "Returns string type for a service object of type 'GetFootprintSize-response"
  "lxind_msgs/GetFootprintSizeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetFootprintSize-response>)))
  "Returns md5sum for a message object of type '<GetFootprintSize-response>"
  "f86522e647336fb10b55359fe003f673")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetFootprintSize-response)))
  "Returns md5sum for a message object of type 'GetFootprintSize-response"
  "f86522e647336fb10b55359fe003f673")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetFootprintSize-response>)))
  "Returns full string definition for message of type '<GetFootprintSize-response>"
  (cl:format cl:nil "float64 width~%float64 height~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetFootprintSize-response)))
  "Returns full string definition for message of type 'GetFootprintSize-response"
  (cl:format cl:nil "float64 width~%float64 height~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetFootprintSize-response>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetFootprintSize-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetFootprintSize-response
    (cl:cons ':width (width msg))
    (cl:cons ':height (height msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetFootprintSize)))
  'GetFootprintSize-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetFootprintSize)))
  'GetFootprintSize-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetFootprintSize)))
  "Returns string type for a service object of type '<GetFootprintSize>"
  "lxind_msgs/GetFootprintSize")