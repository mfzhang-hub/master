; Auto-generated. Do not edit!


(cl:in-package lxind_msgs-msg)


;//! \htmlinclude MapLoadStatus.msg.html

(cl:defclass <MapLoadStatus> (roslisp-msg-protocol:ros-message)
  ((module_name
    :reader module_name
    :initarg :module_name
    :type cl:string
    :initform "")
   (map_name
    :reader map_name
    :initarg :map_name
    :type cl:string
    :initform "")
   (is_loaded
    :reader is_loaded
    :initarg :is_loaded
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass MapLoadStatus (<MapLoadStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MapLoadStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MapLoadStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lxind_msgs-msg:<MapLoadStatus> is deprecated: use lxind_msgs-msg:MapLoadStatus instead.")))

(cl:ensure-generic-function 'module_name-val :lambda-list '(m))
(cl:defmethod module_name-val ((m <MapLoadStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-msg:module_name-val is deprecated.  Use lxind_msgs-msg:module_name instead.")
  (module_name m))

(cl:ensure-generic-function 'map_name-val :lambda-list '(m))
(cl:defmethod map_name-val ((m <MapLoadStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-msg:map_name-val is deprecated.  Use lxind_msgs-msg:map_name instead.")
  (map_name m))

(cl:ensure-generic-function 'is_loaded-val :lambda-list '(m))
(cl:defmethod is_loaded-val ((m <MapLoadStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-msg:is_loaded-val is deprecated.  Use lxind_msgs-msg:is_loaded instead.")
  (is_loaded m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MapLoadStatus>) ostream)
  "Serializes a message object of type '<MapLoadStatus>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'module_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'module_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'map_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'map_name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_loaded) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MapLoadStatus>) istream)
  "Deserializes a message object of type '<MapLoadStatus>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'module_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'module_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'map_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'map_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'is_loaded) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MapLoadStatus>)))
  "Returns string type for a message object of type '<MapLoadStatus>"
  "lxind_msgs/MapLoadStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MapLoadStatus)))
  "Returns string type for a message object of type 'MapLoadStatus"
  "lxind_msgs/MapLoadStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MapLoadStatus>)))
  "Returns md5sum for a message object of type '<MapLoadStatus>"
  "b3555824c32229073694e08cee0c3f84")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MapLoadStatus)))
  "Returns md5sum for a message object of type 'MapLoadStatus"
  "b3555824c32229073694e08cee0c3f84")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MapLoadStatus>)))
  "Returns full string definition for message of type '<MapLoadStatus>"
  (cl:format cl:nil "string module_name~%string map_name~%bool is_loaded~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MapLoadStatus)))
  "Returns full string definition for message of type 'MapLoadStatus"
  (cl:format cl:nil "string module_name~%string map_name~%bool is_loaded~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MapLoadStatus>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'module_name))
     4 (cl:length (cl:slot-value msg 'map_name))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MapLoadStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'MapLoadStatus
    (cl:cons ':module_name (module_name msg))
    (cl:cons ':map_name (map_name msg))
    (cl:cons ':is_loaded (is_loaded msg))
))
