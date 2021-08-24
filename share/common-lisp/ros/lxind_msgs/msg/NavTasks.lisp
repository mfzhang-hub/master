; Auto-generated. Do not edit!


(cl:in-package lxind_msgs-msg)


;//! \htmlinclude NavTasks.msg.html

(cl:defclass <NavTasks> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (b_append
    :reader b_append
    :initarg :b_append
    :type cl:boolean
    :initform cl:nil)
   (tasks
    :reader tasks
    :initarg :tasks
    :type (cl:vector lxind_msgs-msg:NavTask)
   :initform (cl:make-array 0 :element-type 'lxind_msgs-msg:NavTask :initial-element (cl:make-instance 'lxind_msgs-msg:NavTask))))
)

(cl:defclass NavTasks (<NavTasks>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NavTasks>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NavTasks)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lxind_msgs-msg:<NavTasks> is deprecated: use lxind_msgs-msg:NavTasks instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <NavTasks>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-msg:header-val is deprecated.  Use lxind_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'b_append-val :lambda-list '(m))
(cl:defmethod b_append-val ((m <NavTasks>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-msg:b_append-val is deprecated.  Use lxind_msgs-msg:b_append instead.")
  (b_append m))

(cl:ensure-generic-function 'tasks-val :lambda-list '(m))
(cl:defmethod tasks-val ((m <NavTasks>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-msg:tasks-val is deprecated.  Use lxind_msgs-msg:tasks instead.")
  (tasks m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NavTasks>) ostream)
  "Serializes a message object of type '<NavTasks>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'b_append) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'tasks))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'tasks))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NavTasks>) istream)
  "Deserializes a message object of type '<NavTasks>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'b_append) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'tasks) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'tasks)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'lxind_msgs-msg:NavTask))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NavTasks>)))
  "Returns string type for a message object of type '<NavTasks>"
  "lxind_msgs/NavTasks")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NavTasks)))
  "Returns string type for a message object of type 'NavTasks"
  "lxind_msgs/NavTasks")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NavTasks>)))
  "Returns md5sum for a message object of type '<NavTasks>"
  "ad67f297ef1a9306a061f82f2b2a7d23")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NavTasks)))
  "Returns md5sum for a message object of type 'NavTasks"
  "ad67f297ef1a9306a061f82f2b2a7d23")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NavTasks>)))
  "Returns full string definition for message of type '<NavTasks>"
  (cl:format cl:nil "Header header~%~%bool b_append~%lxind_msgs/NavTask[] tasks~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: lxind_msgs/NavTask~%int64 task_id~%uint32 pri_task_cmd~%~%lxind_msgs/RobotPose init_state~%lxind_msgs/RobotPose target_state~%~%int32 target_id~%string target_name~%float32 tol_dist~%float32 tol_angle~%uint8 to_goal_mode~%~%bool enable_oa~%float32 max_speed~%float32 min_turn_radius~%~%lxind_msgs/PathPoint[] fixed_path~%~%# Robot spec task~%uint8 load_mode~%uint8 direction~%~%# precloc~%float32 prec_dist~%~%string extra_info~%================================================================================~%MSG: lxind_msgs/RobotPose~%float32 x~%float32 y~%float32 th~%================================================================================~%MSG: lxind_msgs/PathPoint~%float32 x~%float32 y~%float32 th~%~%string node_name~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NavTasks)))
  "Returns full string definition for message of type 'NavTasks"
  (cl:format cl:nil "Header header~%~%bool b_append~%lxind_msgs/NavTask[] tasks~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: lxind_msgs/NavTask~%int64 task_id~%uint32 pri_task_cmd~%~%lxind_msgs/RobotPose init_state~%lxind_msgs/RobotPose target_state~%~%int32 target_id~%string target_name~%float32 tol_dist~%float32 tol_angle~%uint8 to_goal_mode~%~%bool enable_oa~%float32 max_speed~%float32 min_turn_radius~%~%lxind_msgs/PathPoint[] fixed_path~%~%# Robot spec task~%uint8 load_mode~%uint8 direction~%~%# precloc~%float32 prec_dist~%~%string extra_info~%================================================================================~%MSG: lxind_msgs/RobotPose~%float32 x~%float32 y~%float32 th~%================================================================================~%MSG: lxind_msgs/PathPoint~%float32 x~%float32 y~%float32 th~%~%string node_name~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NavTasks>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'tasks) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NavTasks>))
  "Converts a ROS message object to a list"
  (cl:list 'NavTasks
    (cl:cons ':header (header msg))
    (cl:cons ':b_append (b_append msg))
    (cl:cons ':tasks (tasks msg))
))
