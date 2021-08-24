; Auto-generated. Do not edit!


(cl:in-package lxind_msgs-msg)


;//! \htmlinclude QueryPathAvail.msg.html

(cl:defclass <QueryPathAvail> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (session_id
    :reader session_id
    :initarg :session_id
    :type cl:integer
    :initform 0)
   (path_nodes
    :reader path_nodes
    :initarg :path_nodes
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass QueryPathAvail (<QueryPathAvail>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <QueryPathAvail>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'QueryPathAvail)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lxind_msgs-msg:<QueryPathAvail> is deprecated: use lxind_msgs-msg:QueryPathAvail instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <QueryPathAvail>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-msg:header-val is deprecated.  Use lxind_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'session_id-val :lambda-list '(m))
(cl:defmethod session_id-val ((m <QueryPathAvail>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-msg:session_id-val is deprecated.  Use lxind_msgs-msg:session_id instead.")
  (session_id m))

(cl:ensure-generic-function 'path_nodes-val :lambda-list '(m))
(cl:defmethod path_nodes-val ((m <QueryPathAvail>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-msg:path_nodes-val is deprecated.  Use lxind_msgs-msg:path_nodes instead.")
  (path_nodes m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <QueryPathAvail>) ostream)
  "Serializes a message object of type '<QueryPathAvail>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'session_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'session_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'session_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'session_id)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'path_nodes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'path_nodes))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <QueryPathAvail>) istream)
  "Deserializes a message object of type '<QueryPathAvail>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'session_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'session_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'session_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'session_id)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'path_nodes) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'path_nodes)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<QueryPathAvail>)))
  "Returns string type for a message object of type '<QueryPathAvail>"
  "lxind_msgs/QueryPathAvail")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'QueryPathAvail)))
  "Returns string type for a message object of type 'QueryPathAvail"
  "lxind_msgs/QueryPathAvail")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<QueryPathAvail>)))
  "Returns md5sum for a message object of type '<QueryPathAvail>"
  "c0bb42d59bd907f57ed37938d4d824a0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'QueryPathAvail)))
  "Returns md5sum for a message object of type 'QueryPathAvail"
  "c0bb42d59bd907f57ed37938d4d824a0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<QueryPathAvail>)))
  "Returns full string definition for message of type '<QueryPathAvail>"
  (cl:format cl:nil "Header header~%~%uint32 session_id~%~%string[] path_nodes~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'QueryPathAvail)))
  "Returns full string definition for message of type 'QueryPathAvail"
  (cl:format cl:nil "Header header~%~%uint32 session_id~%~%string[] path_nodes~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <QueryPathAvail>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'path_nodes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <QueryPathAvail>))
  "Converts a ROS message object to a list"
  (cl:list 'QueryPathAvail
    (cl:cons ':header (header msg))
    (cl:cons ':session_id (session_id msg))
    (cl:cons ':path_nodes (path_nodes msg))
))
