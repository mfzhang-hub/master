; Auto-generated. Do not edit!


(cl:in-package lxind_msgs-srv)


;//! \htmlinclude SendCmd-request.msg.html

(cl:defclass <SendCmd-request> (roslisp-msg-protocol:ros-message)
  ((cmd
    :reader cmd
    :initarg :cmd
    :type cl:string
    :initform ""))
)

(cl:defclass SendCmd-request (<SendCmd-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SendCmd-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SendCmd-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lxind_msgs-srv:<SendCmd-request> is deprecated: use lxind_msgs-srv:SendCmd-request instead.")))

(cl:ensure-generic-function 'cmd-val :lambda-list '(m))
(cl:defmethod cmd-val ((m <SendCmd-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-srv:cmd-val is deprecated.  Use lxind_msgs-srv:cmd instead.")
  (cmd m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SendCmd-request>) ostream)
  "Serializes a message object of type '<SendCmd-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'cmd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'cmd))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SendCmd-request>) istream)
  "Deserializes a message object of type '<SendCmd-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cmd) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'cmd) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SendCmd-request>)))
  "Returns string type for a service object of type '<SendCmd-request>"
  "lxind_msgs/SendCmdRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SendCmd-request)))
  "Returns string type for a service object of type 'SendCmd-request"
  "lxind_msgs/SendCmdRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SendCmd-request>)))
  "Returns md5sum for a message object of type '<SendCmd-request>"
  "43a54fa49066cddcf148717d9d4a6353")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SendCmd-request)))
  "Returns md5sum for a message object of type 'SendCmd-request"
  "43a54fa49066cddcf148717d9d4a6353")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SendCmd-request>)))
  "Returns full string definition for message of type '<SendCmd-request>"
  (cl:format cl:nil "string cmd~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SendCmd-request)))
  "Returns full string definition for message of type 'SendCmd-request"
  (cl:format cl:nil "string cmd~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SendCmd-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'cmd))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SendCmd-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SendCmd-request
    (cl:cons ':cmd (cmd msg))
))
;//! \htmlinclude SendCmd-response.msg.html

(cl:defclass <SendCmd-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SendCmd-response (<SendCmd-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SendCmd-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SendCmd-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lxind_msgs-srv:<SendCmd-response> is deprecated: use lxind_msgs-srv:SendCmd-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SendCmd-response>) ostream)
  "Serializes a message object of type '<SendCmd-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SendCmd-response>) istream)
  "Deserializes a message object of type '<SendCmd-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SendCmd-response>)))
  "Returns string type for a service object of type '<SendCmd-response>"
  "lxind_msgs/SendCmdResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SendCmd-response)))
  "Returns string type for a service object of type 'SendCmd-response"
  "lxind_msgs/SendCmdResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SendCmd-response>)))
  "Returns md5sum for a message object of type '<SendCmd-response>"
  "43a54fa49066cddcf148717d9d4a6353")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SendCmd-response)))
  "Returns md5sum for a message object of type 'SendCmd-response"
  "43a54fa49066cddcf148717d9d4a6353")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SendCmd-response>)))
  "Returns full string definition for message of type '<SendCmd-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SendCmd-response)))
  "Returns full string definition for message of type 'SendCmd-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SendCmd-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SendCmd-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SendCmd-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SendCmd)))
  'SendCmd-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SendCmd)))
  'SendCmd-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SendCmd)))
  "Returns string type for a service object of type '<SendCmd>"
  "lxind_msgs/SendCmd")