; Auto-generated. Do not edit!


(cl:in-package lxind_msgs-srv)


;//! \htmlinclude SendElevCtrl-request.msg.html

(cl:defclass <SendElevCtrl-request> (roslisp-msg-protocol:ros-message)
  ((cmd
    :reader cmd
    :initarg :cmd
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SendElevCtrl-request (<SendElevCtrl-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SendElevCtrl-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SendElevCtrl-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lxind_msgs-srv:<SendElevCtrl-request> is deprecated: use lxind_msgs-srv:SendElevCtrl-request instead.")))

(cl:ensure-generic-function 'cmd-val :lambda-list '(m))
(cl:defmethod cmd-val ((m <SendElevCtrl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-srv:cmd-val is deprecated.  Use lxind_msgs-srv:cmd instead.")
  (cmd m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SendElevCtrl-request>)))
    "Constants for message type '<SendElevCtrl-request>"
  '((:ELEV_NOACTION . 0)
    (:ELEV_UP . 1)
    (:ELEV_DOWN . 2)
    (:ELEV_STOP . 3)
    (:ELEV_CLEAR . 4)
    (:ELEV_RESET . 5))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SendElevCtrl-request)))
    "Constants for message type 'SendElevCtrl-request"
  '((:ELEV_NOACTION . 0)
    (:ELEV_UP . 1)
    (:ELEV_DOWN . 2)
    (:ELEV_STOP . 3)
    (:ELEV_CLEAR . 4)
    (:ELEV_RESET . 5))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SendElevCtrl-request>) ostream)
  "Serializes a message object of type '<SendElevCtrl-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cmd)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SendElevCtrl-request>) istream)
  "Deserializes a message object of type '<SendElevCtrl-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cmd)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SendElevCtrl-request>)))
  "Returns string type for a service object of type '<SendElevCtrl-request>"
  "lxind_msgs/SendElevCtrlRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SendElevCtrl-request)))
  "Returns string type for a service object of type 'SendElevCtrl-request"
  "lxind_msgs/SendElevCtrlRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SendElevCtrl-request>)))
  "Returns md5sum for a message object of type '<SendElevCtrl-request>"
  "f5f151d913835fc1ca9ebf1643791e6c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SendElevCtrl-request)))
  "Returns md5sum for a message object of type 'SendElevCtrl-request"
  "f5f151d913835fc1ca9ebf1643791e6c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SendElevCtrl-request>)))
  "Returns full string definition for message of type '<SendElevCtrl-request>"
  (cl:format cl:nil "uint8 ELEV_NOACTION = 0~%uint8 ELEV_UP = 1~%uint8 ELEV_DOWN = 2~%uint8 ELEV_STOP = 3~%uint8 ELEV_CLEAR = 4~%uint8 ELEV_RESET = 5~%~%uint8 cmd~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SendElevCtrl-request)))
  "Returns full string definition for message of type 'SendElevCtrl-request"
  (cl:format cl:nil "uint8 ELEV_NOACTION = 0~%uint8 ELEV_UP = 1~%uint8 ELEV_DOWN = 2~%uint8 ELEV_STOP = 3~%uint8 ELEV_CLEAR = 4~%uint8 ELEV_RESET = 5~%~%uint8 cmd~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SendElevCtrl-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SendElevCtrl-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SendElevCtrl-request
    (cl:cons ':cmd (cmd msg))
))
;//! \htmlinclude SendElevCtrl-response.msg.html

(cl:defclass <SendElevCtrl-response> (roslisp-msg-protocol:ros-message)
  ((ret_msg
    :reader ret_msg
    :initarg :ret_msg
    :type cl:string
    :initform ""))
)

(cl:defclass SendElevCtrl-response (<SendElevCtrl-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SendElevCtrl-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SendElevCtrl-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lxind_msgs-srv:<SendElevCtrl-response> is deprecated: use lxind_msgs-srv:SendElevCtrl-response instead.")))

(cl:ensure-generic-function 'ret_msg-val :lambda-list '(m))
(cl:defmethod ret_msg-val ((m <SendElevCtrl-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-srv:ret_msg-val is deprecated.  Use lxind_msgs-srv:ret_msg instead.")
  (ret_msg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SendElevCtrl-response>) ostream)
  "Serializes a message object of type '<SendElevCtrl-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'ret_msg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'ret_msg))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SendElevCtrl-response>) istream)
  "Deserializes a message object of type '<SendElevCtrl-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ret_msg) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'ret_msg) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SendElevCtrl-response>)))
  "Returns string type for a service object of type '<SendElevCtrl-response>"
  "lxind_msgs/SendElevCtrlResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SendElevCtrl-response)))
  "Returns string type for a service object of type 'SendElevCtrl-response"
  "lxind_msgs/SendElevCtrlResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SendElevCtrl-response>)))
  "Returns md5sum for a message object of type '<SendElevCtrl-response>"
  "f5f151d913835fc1ca9ebf1643791e6c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SendElevCtrl-response)))
  "Returns md5sum for a message object of type 'SendElevCtrl-response"
  "f5f151d913835fc1ca9ebf1643791e6c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SendElevCtrl-response>)))
  "Returns full string definition for message of type '<SendElevCtrl-response>"
  (cl:format cl:nil "string ret_msg~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SendElevCtrl-response)))
  "Returns full string definition for message of type 'SendElevCtrl-response"
  (cl:format cl:nil "string ret_msg~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SendElevCtrl-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'ret_msg))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SendElevCtrl-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SendElevCtrl-response
    (cl:cons ':ret_msg (ret_msg msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SendElevCtrl)))
  'SendElevCtrl-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SendElevCtrl)))
  'SendElevCtrl-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SendElevCtrl)))
  "Returns string type for a service object of type '<SendElevCtrl>"
  "lxind_msgs/SendElevCtrl")