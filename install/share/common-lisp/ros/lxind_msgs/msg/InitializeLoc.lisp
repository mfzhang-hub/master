; Auto-generated. Do not edit!


(cl:in-package lxind_msgs-msg)


;//! \htmlinclude InitializeLoc.msg.html

(cl:defclass <InitializeLoc> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (theta
    :reader theta
    :initarg :theta
    :type cl:float
    :initform 0.0)
   (is_startup_reloc
    :reader is_startup_reloc
    :initarg :is_startup_reloc
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass InitializeLoc (<InitializeLoc>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <InitializeLoc>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'InitializeLoc)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lxind_msgs-msg:<InitializeLoc> is deprecated: use lxind_msgs-msg:InitializeLoc instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <InitializeLoc>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-msg:header-val is deprecated.  Use lxind_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <InitializeLoc>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-msg:name-val is deprecated.  Use lxind_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <InitializeLoc>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-msg:x-val is deprecated.  Use lxind_msgs-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <InitializeLoc>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-msg:y-val is deprecated.  Use lxind_msgs-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'theta-val :lambda-list '(m))
(cl:defmethod theta-val ((m <InitializeLoc>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-msg:theta-val is deprecated.  Use lxind_msgs-msg:theta instead.")
  (theta m))

(cl:ensure-generic-function 'is_startup_reloc-val :lambda-list '(m))
(cl:defmethod is_startup_reloc-val ((m <InitializeLoc>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-msg:is_startup_reloc-val is deprecated.  Use lxind_msgs-msg:is_startup_reloc instead.")
  (is_startup_reloc m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <InitializeLoc>) ostream)
  "Serializes a message object of type '<InitializeLoc>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
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
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'theta))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_startup_reloc) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <InitializeLoc>) istream)
  "Deserializes a message object of type '<InitializeLoc>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
    (cl:setf (cl:slot-value msg 'theta) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'is_startup_reloc) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<InitializeLoc>)))
  "Returns string type for a message object of type '<InitializeLoc>"
  "lxind_msgs/InitializeLoc")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'InitializeLoc)))
  "Returns string type for a message object of type 'InitializeLoc"
  "lxind_msgs/InitializeLoc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<InitializeLoc>)))
  "Returns md5sum for a message object of type '<InitializeLoc>"
  "d20e7711b3add046679cf9288971df05")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'InitializeLoc)))
  "Returns md5sum for a message object of type 'InitializeLoc"
  "d20e7711b3add046679cf9288971df05")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<InitializeLoc>)))
  "Returns full string definition for message of type '<InitializeLoc>"
  (cl:format cl:nil "Header header~%string name~%float32 x~%float32 y~%float32 theta~%bool is_startup_reloc~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'InitializeLoc)))
  "Returns full string definition for message of type 'InitializeLoc"
  (cl:format cl:nil "Header header~%string name~%float32 x~%float32 y~%float32 theta~%bool is_startup_reloc~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <InitializeLoc>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'name))
     4
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <InitializeLoc>))
  "Converts a ROS message object to a list"
  (cl:list 'InitializeLoc
    (cl:cons ':header (header msg))
    (cl:cons ':name (name msg))
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':theta (theta msg))
    (cl:cons ':is_startup_reloc (is_startup_reloc msg))
))
