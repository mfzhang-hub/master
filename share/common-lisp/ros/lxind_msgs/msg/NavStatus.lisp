; Auto-generated. Do not edit!


(cl:in-package lxind_msgs-msg)


;//! \htmlinclude NavStatus.msg.html

(cl:defclass <NavStatus> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (latest_task_id
    :reader latest_task_id
    :initarg :latest_task_id
    :type cl:integer
    :initform 0)
   (curr_posi
    :reader curr_posi
    :initarg :curr_posi
    :type geometry_msgs-msg:Pose2D
    :initform (cl:make-instance 'geometry_msgs-msg:Pose2D))
   (pre_point
    :reader pre_point
    :initarg :pre_point
    :type cl:integer
    :initform 0)
   (next_point
    :reader next_point
    :initarg :next_point
    :type cl:integer
    :initform 0)
   (is_exist_task
    :reader is_exist_task
    :initarg :is_exist_task
    :type cl:integer
    :initform 0)
   (robot_state
    :reader robot_state
    :initarg :robot_state
    :type cl:fixnum
    :initform 0)
   (reach_state
    :reader reach_state
    :initarg :reach_state
    :type cl:fixnum
    :initform 0)
   (carry_state
    :reader carry_state
    :initarg :carry_state
    :type cl:integer
    :initform 0)
   (cur_route_id
    :reader cur_route_id
    :initarg :cur_route_id
    :type cl:integer
    :initform 0)
   (cargo_count
    :reader cargo_count
    :initarg :cargo_count
    :type cl:integer
    :initform 0)
   (exception
    :reader exception
    :initarg :exception
    :type cl:integer
    :initform 0))
)

(cl:defclass NavStatus (<NavStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NavStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NavStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lxind_msgs-msg:<NavStatus> is deprecated: use lxind_msgs-msg:NavStatus instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <NavStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-msg:header-val is deprecated.  Use lxind_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'latest_task_id-val :lambda-list '(m))
(cl:defmethod latest_task_id-val ((m <NavStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-msg:latest_task_id-val is deprecated.  Use lxind_msgs-msg:latest_task_id instead.")
  (latest_task_id m))

(cl:ensure-generic-function 'curr_posi-val :lambda-list '(m))
(cl:defmethod curr_posi-val ((m <NavStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-msg:curr_posi-val is deprecated.  Use lxind_msgs-msg:curr_posi instead.")
  (curr_posi m))

(cl:ensure-generic-function 'pre_point-val :lambda-list '(m))
(cl:defmethod pre_point-val ((m <NavStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-msg:pre_point-val is deprecated.  Use lxind_msgs-msg:pre_point instead.")
  (pre_point m))

(cl:ensure-generic-function 'next_point-val :lambda-list '(m))
(cl:defmethod next_point-val ((m <NavStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-msg:next_point-val is deprecated.  Use lxind_msgs-msg:next_point instead.")
  (next_point m))

(cl:ensure-generic-function 'is_exist_task-val :lambda-list '(m))
(cl:defmethod is_exist_task-val ((m <NavStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-msg:is_exist_task-val is deprecated.  Use lxind_msgs-msg:is_exist_task instead.")
  (is_exist_task m))

(cl:ensure-generic-function 'robot_state-val :lambda-list '(m))
(cl:defmethod robot_state-val ((m <NavStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-msg:robot_state-val is deprecated.  Use lxind_msgs-msg:robot_state instead.")
  (robot_state m))

(cl:ensure-generic-function 'reach_state-val :lambda-list '(m))
(cl:defmethod reach_state-val ((m <NavStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-msg:reach_state-val is deprecated.  Use lxind_msgs-msg:reach_state instead.")
  (reach_state m))

(cl:ensure-generic-function 'carry_state-val :lambda-list '(m))
(cl:defmethod carry_state-val ((m <NavStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-msg:carry_state-val is deprecated.  Use lxind_msgs-msg:carry_state instead.")
  (carry_state m))

(cl:ensure-generic-function 'cur_route_id-val :lambda-list '(m))
(cl:defmethod cur_route_id-val ((m <NavStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-msg:cur_route_id-val is deprecated.  Use lxind_msgs-msg:cur_route_id instead.")
  (cur_route_id m))

(cl:ensure-generic-function 'cargo_count-val :lambda-list '(m))
(cl:defmethod cargo_count-val ((m <NavStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-msg:cargo_count-val is deprecated.  Use lxind_msgs-msg:cargo_count instead.")
  (cargo_count m))

(cl:ensure-generic-function 'exception-val :lambda-list '(m))
(cl:defmethod exception-val ((m <NavStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-msg:exception-val is deprecated.  Use lxind_msgs-msg:exception instead.")
  (exception m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<NavStatus>)))
    "Constants for message type '<NavStatus>"
  '((:GOAL_NOT_REACHED . 0)
    (:GOAL_REACHED . 1)
    (:GOAL_APPROACHING . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'NavStatus)))
    "Constants for message type 'NavStatus"
  '((:GOAL_NOT_REACHED . 0)
    (:GOAL_REACHED . 1)
    (:GOAL_APPROACHING . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NavStatus>) ostream)
  "Serializes a message object of type '<NavStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'latest_task_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'curr_posi) ostream)
  (cl:let* ((signed (cl:slot-value msg 'pre_point)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'next_point)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'is_exist_task)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'robot_state)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'reach_state)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'carry_state)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'cur_route_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'cargo_count)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'exception)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NavStatus>) istream)
  "Deserializes a message object of type '<NavStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'latest_task_id) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'curr_posi) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pre_point) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'next_point) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'is_exist_task) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'robot_state) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'reach_state) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'carry_state) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cur_route_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cargo_count) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'exception) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NavStatus>)))
  "Returns string type for a message object of type '<NavStatus>"
  "lxind_msgs/NavStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NavStatus)))
  "Returns string type for a message object of type 'NavStatus"
  "lxind_msgs/NavStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NavStatus>)))
  "Returns md5sum for a message object of type '<NavStatus>"
  "e8af1e2b711c74b6795ee845872930b7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NavStatus)))
  "Returns md5sum for a message object of type 'NavStatus"
  "e8af1e2b711c74b6795ee845872930b7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NavStatus>)))
  "Returns full string definition for message of type '<NavStatus>"
  (cl:format cl:nil "int8 GOAL_NOT_REACHED=0~%int8 GOAL_REACHED=1~%int8 GOAL_APPROACHING=2~%~%Header header~%~%int64 latest_task_id~%~%geometry_msgs/Pose2D curr_posi~%~%int32 pre_point~%int32 next_point~%~%int32 is_exist_task~%~%int8 robot_state~%int8 reach_state~%~%int32 carry_state~%int32 cur_route_id~%int32 cargo_count~%~%int32 exception~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NavStatus)))
  "Returns full string definition for message of type 'NavStatus"
  (cl:format cl:nil "int8 GOAL_NOT_REACHED=0~%int8 GOAL_REACHED=1~%int8 GOAL_APPROACHING=2~%~%Header header~%~%int64 latest_task_id~%~%geometry_msgs/Pose2D curr_posi~%~%int32 pre_point~%int32 next_point~%~%int32 is_exist_task~%~%int8 robot_state~%int8 reach_state~%~%int32 carry_state~%int32 cur_route_id~%int32 cargo_count~%~%int32 exception~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NavStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'curr_posi))
     4
     4
     4
     1
     1
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NavStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'NavStatus
    (cl:cons ':header (header msg))
    (cl:cons ':latest_task_id (latest_task_id msg))
    (cl:cons ':curr_posi (curr_posi msg))
    (cl:cons ':pre_point (pre_point msg))
    (cl:cons ':next_point (next_point msg))
    (cl:cons ':is_exist_task (is_exist_task msg))
    (cl:cons ':robot_state (robot_state msg))
    (cl:cons ':reach_state (reach_state msg))
    (cl:cons ':carry_state (carry_state msg))
    (cl:cons ':cur_route_id (cur_route_id msg))
    (cl:cons ':cargo_count (cargo_count msg))
    (cl:cons ':exception (exception msg))
))
