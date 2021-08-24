; Auto-generated. Do not edit!


(cl:in-package lxind_msgs-msg)


;//! \htmlinclude NavTask.msg.html

(cl:defclass <NavTask> (roslisp-msg-protocol:ros-message)
  ((task_id
    :reader task_id
    :initarg :task_id
    :type cl:integer
    :initform 0)
   (pri_task_cmd
    :reader pri_task_cmd
    :initarg :pri_task_cmd
    :type cl:integer
    :initform 0)
   (init_state
    :reader init_state
    :initarg :init_state
    :type lxind_msgs-msg:RobotPose
    :initform (cl:make-instance 'lxind_msgs-msg:RobotPose))
   (target_state
    :reader target_state
    :initarg :target_state
    :type lxind_msgs-msg:RobotPose
    :initform (cl:make-instance 'lxind_msgs-msg:RobotPose))
   (target_id
    :reader target_id
    :initarg :target_id
    :type cl:integer
    :initform 0)
   (target_name
    :reader target_name
    :initarg :target_name
    :type cl:string
    :initform "")
   (tol_dist
    :reader tol_dist
    :initarg :tol_dist
    :type cl:float
    :initform 0.0)
   (tol_angle
    :reader tol_angle
    :initarg :tol_angle
    :type cl:float
    :initform 0.0)
   (to_goal_mode
    :reader to_goal_mode
    :initarg :to_goal_mode
    :type cl:fixnum
    :initform 0)
   (enable_oa
    :reader enable_oa
    :initarg :enable_oa
    :type cl:boolean
    :initform cl:nil)
   (max_speed
    :reader max_speed
    :initarg :max_speed
    :type cl:float
    :initform 0.0)
   (min_turn_radius
    :reader min_turn_radius
    :initarg :min_turn_radius
    :type cl:float
    :initform 0.0)
   (fixed_path
    :reader fixed_path
    :initarg :fixed_path
    :type (cl:vector lxind_msgs-msg:PathPoint)
   :initform (cl:make-array 0 :element-type 'lxind_msgs-msg:PathPoint :initial-element (cl:make-instance 'lxind_msgs-msg:PathPoint)))
   (load_mode
    :reader load_mode
    :initarg :load_mode
    :type cl:fixnum
    :initform 0)
   (direction
    :reader direction
    :initarg :direction
    :type cl:fixnum
    :initform 0)
   (prec_dist
    :reader prec_dist
    :initarg :prec_dist
    :type cl:float
    :initform 0.0)
   (extra_info
    :reader extra_info
    :initarg :extra_info
    :type cl:string
    :initform ""))
)

(cl:defclass NavTask (<NavTask>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NavTask>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NavTask)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lxind_msgs-msg:<NavTask> is deprecated: use lxind_msgs-msg:NavTask instead.")))

(cl:ensure-generic-function 'task_id-val :lambda-list '(m))
(cl:defmethod task_id-val ((m <NavTask>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-msg:task_id-val is deprecated.  Use lxind_msgs-msg:task_id instead.")
  (task_id m))

(cl:ensure-generic-function 'pri_task_cmd-val :lambda-list '(m))
(cl:defmethod pri_task_cmd-val ((m <NavTask>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-msg:pri_task_cmd-val is deprecated.  Use lxind_msgs-msg:pri_task_cmd instead.")
  (pri_task_cmd m))

(cl:ensure-generic-function 'init_state-val :lambda-list '(m))
(cl:defmethod init_state-val ((m <NavTask>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-msg:init_state-val is deprecated.  Use lxind_msgs-msg:init_state instead.")
  (init_state m))

(cl:ensure-generic-function 'target_state-val :lambda-list '(m))
(cl:defmethod target_state-val ((m <NavTask>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-msg:target_state-val is deprecated.  Use lxind_msgs-msg:target_state instead.")
  (target_state m))

(cl:ensure-generic-function 'target_id-val :lambda-list '(m))
(cl:defmethod target_id-val ((m <NavTask>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-msg:target_id-val is deprecated.  Use lxind_msgs-msg:target_id instead.")
  (target_id m))

(cl:ensure-generic-function 'target_name-val :lambda-list '(m))
(cl:defmethod target_name-val ((m <NavTask>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-msg:target_name-val is deprecated.  Use lxind_msgs-msg:target_name instead.")
  (target_name m))

(cl:ensure-generic-function 'tol_dist-val :lambda-list '(m))
(cl:defmethod tol_dist-val ((m <NavTask>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-msg:tol_dist-val is deprecated.  Use lxind_msgs-msg:tol_dist instead.")
  (tol_dist m))

(cl:ensure-generic-function 'tol_angle-val :lambda-list '(m))
(cl:defmethod tol_angle-val ((m <NavTask>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-msg:tol_angle-val is deprecated.  Use lxind_msgs-msg:tol_angle instead.")
  (tol_angle m))

(cl:ensure-generic-function 'to_goal_mode-val :lambda-list '(m))
(cl:defmethod to_goal_mode-val ((m <NavTask>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-msg:to_goal_mode-val is deprecated.  Use lxind_msgs-msg:to_goal_mode instead.")
  (to_goal_mode m))

(cl:ensure-generic-function 'enable_oa-val :lambda-list '(m))
(cl:defmethod enable_oa-val ((m <NavTask>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-msg:enable_oa-val is deprecated.  Use lxind_msgs-msg:enable_oa instead.")
  (enable_oa m))

(cl:ensure-generic-function 'max_speed-val :lambda-list '(m))
(cl:defmethod max_speed-val ((m <NavTask>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-msg:max_speed-val is deprecated.  Use lxind_msgs-msg:max_speed instead.")
  (max_speed m))

(cl:ensure-generic-function 'min_turn_radius-val :lambda-list '(m))
(cl:defmethod min_turn_radius-val ((m <NavTask>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-msg:min_turn_radius-val is deprecated.  Use lxind_msgs-msg:min_turn_radius instead.")
  (min_turn_radius m))

(cl:ensure-generic-function 'fixed_path-val :lambda-list '(m))
(cl:defmethod fixed_path-val ((m <NavTask>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-msg:fixed_path-val is deprecated.  Use lxind_msgs-msg:fixed_path instead.")
  (fixed_path m))

(cl:ensure-generic-function 'load_mode-val :lambda-list '(m))
(cl:defmethod load_mode-val ((m <NavTask>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-msg:load_mode-val is deprecated.  Use lxind_msgs-msg:load_mode instead.")
  (load_mode m))

(cl:ensure-generic-function 'direction-val :lambda-list '(m))
(cl:defmethod direction-val ((m <NavTask>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-msg:direction-val is deprecated.  Use lxind_msgs-msg:direction instead.")
  (direction m))

(cl:ensure-generic-function 'prec_dist-val :lambda-list '(m))
(cl:defmethod prec_dist-val ((m <NavTask>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-msg:prec_dist-val is deprecated.  Use lxind_msgs-msg:prec_dist instead.")
  (prec_dist m))

(cl:ensure-generic-function 'extra_info-val :lambda-list '(m))
(cl:defmethod extra_info-val ((m <NavTask>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-msg:extra_info-val is deprecated.  Use lxind_msgs-msg:extra_info instead.")
  (extra_info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NavTask>) ostream)
  "Serializes a message object of type '<NavTask>"
  (cl:let* ((signed (cl:slot-value msg 'task_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pri_task_cmd)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'pri_task_cmd)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'pri_task_cmd)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'pri_task_cmd)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'init_state) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'target_state) ostream)
  (cl:let* ((signed (cl:slot-value msg 'target_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'target_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'target_name))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'tol_dist))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'tol_angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'to_goal_mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enable_oa) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'max_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'min_turn_radius))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'fixed_path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'fixed_path))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'load_mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'direction)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'prec_dist))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'extra_info))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'extra_info))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NavTask>) istream)
  "Deserializes a message object of type '<NavTask>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'task_id) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pri_task_cmd)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'pri_task_cmd)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'pri_task_cmd)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'pri_task_cmd)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'init_state) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'target_state) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'target_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'target_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'target_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'tol_dist) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'tol_angle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'to_goal_mode)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'enable_oa) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_speed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'min_turn_radius) (roslisp-utils:decode-single-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'fixed_path) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'fixed_path)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'lxind_msgs-msg:PathPoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'load_mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'direction)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'prec_dist) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'extra_info) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'extra_info) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NavTask>)))
  "Returns string type for a message object of type '<NavTask>"
  "lxind_msgs/NavTask")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NavTask)))
  "Returns string type for a message object of type 'NavTask"
  "lxind_msgs/NavTask")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NavTask>)))
  "Returns md5sum for a message object of type '<NavTask>"
  "359a8a1089fad86835e44a3e3f00b84d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NavTask)))
  "Returns md5sum for a message object of type 'NavTask"
  "359a8a1089fad86835e44a3e3f00b84d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NavTask>)))
  "Returns full string definition for message of type '<NavTask>"
  (cl:format cl:nil "int64 task_id~%uint32 pri_task_cmd~%~%lxind_msgs/RobotPose init_state~%lxind_msgs/RobotPose target_state~%~%int32 target_id~%string target_name~%float32 tol_dist~%float32 tol_angle~%uint8 to_goal_mode~%~%bool enable_oa~%float32 max_speed~%float32 min_turn_radius~%~%lxind_msgs/PathPoint[] fixed_path~%~%# Robot spec task~%uint8 load_mode~%uint8 direction~%~%# precloc~%float32 prec_dist~%~%string extra_info~%================================================================================~%MSG: lxind_msgs/RobotPose~%float32 x~%float32 y~%float32 th~%================================================================================~%MSG: lxind_msgs/PathPoint~%float32 x~%float32 y~%float32 th~%~%string node_name~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NavTask)))
  "Returns full string definition for message of type 'NavTask"
  (cl:format cl:nil "int64 task_id~%uint32 pri_task_cmd~%~%lxind_msgs/RobotPose init_state~%lxind_msgs/RobotPose target_state~%~%int32 target_id~%string target_name~%float32 tol_dist~%float32 tol_angle~%uint8 to_goal_mode~%~%bool enable_oa~%float32 max_speed~%float32 min_turn_radius~%~%lxind_msgs/PathPoint[] fixed_path~%~%# Robot spec task~%uint8 load_mode~%uint8 direction~%~%# precloc~%float32 prec_dist~%~%string extra_info~%================================================================================~%MSG: lxind_msgs/RobotPose~%float32 x~%float32 y~%float32 th~%================================================================================~%MSG: lxind_msgs/PathPoint~%float32 x~%float32 y~%float32 th~%~%string node_name~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NavTask>))
  (cl:+ 0
     8
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'init_state))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'target_state))
     4
     4 (cl:length (cl:slot-value msg 'target_name))
     4
     4
     1
     1
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'fixed_path) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
     1
     4
     4 (cl:length (cl:slot-value msg 'extra_info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NavTask>))
  "Converts a ROS message object to a list"
  (cl:list 'NavTask
    (cl:cons ':task_id (task_id msg))
    (cl:cons ':pri_task_cmd (pri_task_cmd msg))
    (cl:cons ':init_state (init_state msg))
    (cl:cons ':target_state (target_state msg))
    (cl:cons ':target_id (target_id msg))
    (cl:cons ':target_name (target_name msg))
    (cl:cons ':tol_dist (tol_dist msg))
    (cl:cons ':tol_angle (tol_angle msg))
    (cl:cons ':to_goal_mode (to_goal_mode msg))
    (cl:cons ':enable_oa (enable_oa msg))
    (cl:cons ':max_speed (max_speed msg))
    (cl:cons ':min_turn_radius (min_turn_radius msg))
    (cl:cons ':fixed_path (fixed_path msg))
    (cl:cons ':load_mode (load_mode msg))
    (cl:cons ':direction (direction msg))
    (cl:cons ':prec_dist (prec_dist msg))
    (cl:cons ':extra_info (extra_info msg))
))
