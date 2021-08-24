; Auto-generated. Do not edit!


(cl:in-package lxind_msgs-msg)


;//! \htmlinclude ServerInfo.msg.html

(cl:defclass <ServerInfo> (roslisp-msg-protocol:ros-message)
  ((mode
    :reader mode
    :initarg :mode
    :type cl:integer
    :initform 0)
   (server_name
    :reader server_name
    :initarg :server_name
    :type cl:string
    :initform ""))
)

(cl:defclass ServerInfo (<ServerInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ServerInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ServerInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lxind_msgs-msg:<ServerInfo> is deprecated: use lxind_msgs-msg:ServerInfo instead.")))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <ServerInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-msg:mode-val is deprecated.  Use lxind_msgs-msg:mode instead.")
  (mode m))

(cl:ensure-generic-function 'server_name-val :lambda-list '(m))
(cl:defmethod server_name-val ((m <ServerInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-msg:server_name-val is deprecated.  Use lxind_msgs-msg:server_name instead.")
  (server_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ServerInfo>) ostream)
  "Serializes a message object of type '<ServerInfo>"
  (cl:let* ((signed (cl:slot-value msg 'mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'server_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'server_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ServerInfo>) istream)
  "Deserializes a message object of type '<ServerInfo>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mode) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'server_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'server_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ServerInfo>)))
  "Returns string type for a message object of type '<ServerInfo>"
  "lxind_msgs/ServerInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ServerInfo)))
  "Returns string type for a message object of type 'ServerInfo"
  "lxind_msgs/ServerInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ServerInfo>)))
  "Returns md5sum for a message object of type '<ServerInfo>"
  "324d2f7cd1b2d4648d65da12545afb4f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ServerInfo)))
  "Returns md5sum for a message object of type 'ServerInfo"
  "324d2f7cd1b2d4648d65da12545afb4f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ServerInfo>)))
  "Returns full string definition for message of type '<ServerInfo>"
  (cl:format cl:nil "int32  mode~%string server_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ServerInfo)))
  "Returns full string definition for message of type 'ServerInfo"
  (cl:format cl:nil "int32  mode~%string server_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ServerInfo>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'server_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ServerInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'ServerInfo
    (cl:cons ':mode (mode msg))
    (cl:cons ':server_name (server_name msg))
))
