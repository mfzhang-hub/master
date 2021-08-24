; Auto-generated. Do not edit!


(cl:in-package lxind_msgs-srv)


;//! \htmlinclude SendSubTask-request.msg.html

(cl:defclass <SendSubTask-request> (roslisp-msg-protocol:ros-message)
  ((task_id
    :reader task_id
    :initarg :task_id
    :type cl:integer
    :initform 0)
   (sub_task_cmd
    :reader sub_task_cmd
    :initarg :sub_task_cmd
    :type cl:integer
    :initform 0)
   (next_pritask_cmd
    :reader next_pritask_cmd
    :initarg :next_pritask_cmd
    :type cl:integer
    :initform 0)
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
   (safe_dist
    :reader safe_dist
    :initarg :safe_dist
    :type cl:float
    :initform 0.0)
   (min_turn_radius
    :reader min_turn_radius
    :initarg :min_turn_radius
    :type cl:float
    :initform 0.0)
   (shape_transform
    :reader shape_transform
    :initarg :shape_transform
    :type cl:fixnum
    :initform 0)
   (init_state
    :reader init_state
    :initarg :init_state
    :type lxind_msgs-msg:RobotPose
    :initform (cl:make-instance 'lxind_msgs-msg:RobotPose))
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
   (align_part
    :reader align_part
    :initarg :align_part
    :type cl:fixnum
    :initform 0)
   (align_dir
    :reader align_dir
    :initarg :align_dir
    :type cl:fixnum
    :initform 0)
   (prec_dist
    :reader prec_dist
    :initarg :prec_dist
    :type cl:float
    :initform 0.0)
   (roll_part
    :reader roll_part
    :initarg :roll_part
    :type cl:string
    :initform "")
   (extra_info
    :reader extra_info
    :initarg :extra_info
    :type cl:string
    :initform ""))
)

(cl:defclass SendSubTask-request (<SendSubTask-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SendSubTask-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SendSubTask-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lxind_msgs-srv:<SendSubTask-request> is deprecated: use lxind_msgs-srv:SendSubTask-request instead.")))

(cl:ensure-generic-function 'task_id-val :lambda-list '(m))
(cl:defmethod task_id-val ((m <SendSubTask-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-srv:task_id-val is deprecated.  Use lxind_msgs-srv:task_id instead.")
  (task_id m))

(cl:ensure-generic-function 'sub_task_cmd-val :lambda-list '(m))
(cl:defmethod sub_task_cmd-val ((m <SendSubTask-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-srv:sub_task_cmd-val is deprecated.  Use lxind_msgs-srv:sub_task_cmd instead.")
  (sub_task_cmd m))

(cl:ensure-generic-function 'next_pritask_cmd-val :lambda-list '(m))
(cl:defmethod next_pritask_cmd-val ((m <SendSubTask-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-srv:next_pritask_cmd-val is deprecated.  Use lxind_msgs-srv:next_pritask_cmd instead.")
  (next_pritask_cmd m))

(cl:ensure-generic-function 'target_state-val :lambda-list '(m))
(cl:defmethod target_state-val ((m <SendSubTask-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-srv:target_state-val is deprecated.  Use lxind_msgs-srv:target_state instead.")
  (target_state m))

(cl:ensure-generic-function 'target_id-val :lambda-list '(m))
(cl:defmethod target_id-val ((m <SendSubTask-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-srv:target_id-val is deprecated.  Use lxind_msgs-srv:target_id instead.")
  (target_id m))

(cl:ensure-generic-function 'target_name-val :lambda-list '(m))
(cl:defmethod target_name-val ((m <SendSubTask-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-srv:target_name-val is deprecated.  Use lxind_msgs-srv:target_name instead.")
  (target_name m))

(cl:ensure-generic-function 'tol_dist-val :lambda-list '(m))
(cl:defmethod tol_dist-val ((m <SendSubTask-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-srv:tol_dist-val is deprecated.  Use lxind_msgs-srv:tol_dist instead.")
  (tol_dist m))

(cl:ensure-generic-function 'tol_angle-val :lambda-list '(m))
(cl:defmethod tol_angle-val ((m <SendSubTask-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-srv:tol_angle-val is deprecated.  Use lxind_msgs-srv:tol_angle instead.")
  (tol_angle m))

(cl:ensure-generic-function 'to_goal_mode-val :lambda-list '(m))
(cl:defmethod to_goal_mode-val ((m <SendSubTask-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-srv:to_goal_mode-val is deprecated.  Use lxind_msgs-srv:to_goal_mode instead.")
  (to_goal_mode m))

(cl:ensure-generic-function 'enable_oa-val :lambda-list '(m))
(cl:defmethod enable_oa-val ((m <SendSubTask-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-srv:enable_oa-val is deprecated.  Use lxind_msgs-srv:enable_oa instead.")
  (enable_oa m))

(cl:ensure-generic-function 'max_speed-val :lambda-list '(m))
(cl:defmethod max_speed-val ((m <SendSubTask-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-srv:max_speed-val is deprecated.  Use lxind_msgs-srv:max_speed instead.")
  (max_speed m))

(cl:ensure-generic-function 'safe_dist-val :lambda-list '(m))
(cl:defmethod safe_dist-val ((m <SendSubTask-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-srv:safe_dist-val is deprecated.  Use lxind_msgs-srv:safe_dist instead.")
  (safe_dist m))

(cl:ensure-generic-function 'min_turn_radius-val :lambda-list '(m))
(cl:defmethod min_turn_radius-val ((m <SendSubTask-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-srv:min_turn_radius-val is deprecated.  Use lxind_msgs-srv:min_turn_radius instead.")
  (min_turn_radius m))

(cl:ensure-generic-function 'shape_transform-val :lambda-list '(m))
(cl:defmethod shape_transform-val ((m <SendSubTask-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-srv:shape_transform-val is deprecated.  Use lxind_msgs-srv:shape_transform instead.")
  (shape_transform m))

(cl:ensure-generic-function 'init_state-val :lambda-list '(m))
(cl:defmethod init_state-val ((m <SendSubTask-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-srv:init_state-val is deprecated.  Use lxind_msgs-srv:init_state instead.")
  (init_state m))

(cl:ensure-generic-function 'fixed_path-val :lambda-list '(m))
(cl:defmethod fixed_path-val ((m <SendSubTask-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-srv:fixed_path-val is deprecated.  Use lxind_msgs-srv:fixed_path instead.")
  (fixed_path m))

(cl:ensure-generic-function 'load_mode-val :lambda-list '(m))
(cl:defmethod load_mode-val ((m <SendSubTask-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-srv:load_mode-val is deprecated.  Use lxind_msgs-srv:load_mode instead.")
  (load_mode m))

(cl:ensure-generic-function 'direction-val :lambda-list '(m))
(cl:defmethod direction-val ((m <SendSubTask-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-srv:direction-val is deprecated.  Use lxind_msgs-srv:direction instead.")
  (direction m))

(cl:ensure-generic-function 'align_part-val :lambda-list '(m))
(cl:defmethod align_part-val ((m <SendSubTask-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-srv:align_part-val is deprecated.  Use lxind_msgs-srv:align_part instead.")
  (align_part m))

(cl:ensure-generic-function 'align_dir-val :lambda-list '(m))
(cl:defmethod align_dir-val ((m <SendSubTask-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-srv:align_dir-val is deprecated.  Use lxind_msgs-srv:align_dir instead.")
  (align_dir m))

(cl:ensure-generic-function 'prec_dist-val :lambda-list '(m))
(cl:defmethod prec_dist-val ((m <SendSubTask-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-srv:prec_dist-val is deprecated.  Use lxind_msgs-srv:prec_dist instead.")
  (prec_dist m))

(cl:ensure-generic-function 'roll_part-val :lambda-list '(m))
(cl:defmethod roll_part-val ((m <SendSubTask-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-srv:roll_part-val is deprecated.  Use lxind_msgs-srv:roll_part instead.")
  (roll_part m))

(cl:ensure-generic-function 'extra_info-val :lambda-list '(m))
(cl:defmethod extra_info-val ((m <SendSubTask-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-srv:extra_info-val is deprecated.  Use lxind_msgs-srv:extra_info instead.")
  (extra_info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SendSubTask-request>) ostream)
  "Serializes a message object of type '<SendSubTask-request>"
  (cl:let* ((signed (cl:slot-value msg 'task_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sub_task_cmd)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sub_task_cmd)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'sub_task_cmd)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'sub_task_cmd)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'next_pritask_cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
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
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'safe_dist))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'min_turn_radius))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'shape_transform)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'init_state) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'fixed_path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'fixed_path))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'load_mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'direction)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'align_part)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'align_dir)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'prec_dist))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'roll_part))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'roll_part))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'extra_info))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'extra_info))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SendSubTask-request>) istream)
  "Deserializes a message object of type '<SendSubTask-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'task_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sub_task_cmd)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sub_task_cmd)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'sub_task_cmd)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'sub_task_cmd)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'next_pritask_cmd) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
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
    (cl:setf (cl:slot-value msg 'safe_dist) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'min_turn_radius) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'shape_transform)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'init_state) istream)
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
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'align_part)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'align_dir)) (cl:read-byte istream))
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
      (cl:setf (cl:slot-value msg 'roll_part) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'roll_part) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SendSubTask-request>)))
  "Returns string type for a service object of type '<SendSubTask-request>"
  "lxind_msgs/SendSubTaskRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SendSubTask-request)))
  "Returns string type for a service object of type 'SendSubTask-request"
  "lxind_msgs/SendSubTaskRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SendSubTask-request>)))
  "Returns md5sum for a message object of type '<SendSubTask-request>"
  "ded50bd33fc998583d1657965f147705")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SendSubTask-request)))
  "Returns md5sum for a message object of type 'SendSubTask-request"
  "ded50bd33fc998583d1657965f147705")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SendSubTask-request>)))
  "Returns full string definition for message of type '<SendSubTask-request>"
  (cl:format cl:nil "int32 task_id~%uint32 sub_task_cmd~%~%int32 next_pritask_cmd~%~%lxind_msgs/RobotPose target_state~%int32 target_id~%string target_name~%float32 tol_dist~%float32 tol_angle~%uint8 to_goal_mode~%~%bool enable_oa~%float32 max_speed~%float32 safe_dist~%float32 min_turn_radius~%uint8 shape_transform~%~%lxind_msgs/RobotPose init_state~%lxind_msgs/PathPoint[] fixed_path~%~%~%uint8 load_mode~%uint8 direction~%~%uint8 align_part~%uint8 align_dir~%~%~%float32 prec_dist~%~%~%string roll_part~%~%string extra_info~%~%================================================================================~%MSG: lxind_msgs/RobotPose~%float32 x~%float32 y~%float32 th~%================================================================================~%MSG: lxind_msgs/PathPoint~%float32 x~%float32 y~%float32 th~%~%string node_name~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SendSubTask-request)))
  "Returns full string definition for message of type 'SendSubTask-request"
  (cl:format cl:nil "int32 task_id~%uint32 sub_task_cmd~%~%int32 next_pritask_cmd~%~%lxind_msgs/RobotPose target_state~%int32 target_id~%string target_name~%float32 tol_dist~%float32 tol_angle~%uint8 to_goal_mode~%~%bool enable_oa~%float32 max_speed~%float32 safe_dist~%float32 min_turn_radius~%uint8 shape_transform~%~%lxind_msgs/RobotPose init_state~%lxind_msgs/PathPoint[] fixed_path~%~%~%uint8 load_mode~%uint8 direction~%~%uint8 align_part~%uint8 align_dir~%~%~%float32 prec_dist~%~%~%string roll_part~%~%string extra_info~%~%================================================================================~%MSG: lxind_msgs/RobotPose~%float32 x~%float32 y~%float32 th~%================================================================================~%MSG: lxind_msgs/PathPoint~%float32 x~%float32 y~%float32 th~%~%string node_name~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SendSubTask-request>))
  (cl:+ 0
     4
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'target_state))
     4
     4 (cl:length (cl:slot-value msg 'target_name))
     4
     4
     1
     1
     4
     4
     4
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'init_state))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'fixed_path) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
     1
     1
     1
     4
     4 (cl:length (cl:slot-value msg 'roll_part))
     4 (cl:length (cl:slot-value msg 'extra_info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SendSubTask-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SendSubTask-request
    (cl:cons ':task_id (task_id msg))
    (cl:cons ':sub_task_cmd (sub_task_cmd msg))
    (cl:cons ':next_pritask_cmd (next_pritask_cmd msg))
    (cl:cons ':target_state (target_state msg))
    (cl:cons ':target_id (target_id msg))
    (cl:cons ':target_name (target_name msg))
    (cl:cons ':tol_dist (tol_dist msg))
    (cl:cons ':tol_angle (tol_angle msg))
    (cl:cons ':to_goal_mode (to_goal_mode msg))
    (cl:cons ':enable_oa (enable_oa msg))
    (cl:cons ':max_speed (max_speed msg))
    (cl:cons ':safe_dist (safe_dist msg))
    (cl:cons ':min_turn_radius (min_turn_radius msg))
    (cl:cons ':shape_transform (shape_transform msg))
    (cl:cons ':init_state (init_state msg))
    (cl:cons ':fixed_path (fixed_path msg))
    (cl:cons ':load_mode (load_mode msg))
    (cl:cons ':direction (direction msg))
    (cl:cons ':align_part (align_part msg))
    (cl:cons ':align_dir (align_dir msg))
    (cl:cons ':prec_dist (prec_dist msg))
    (cl:cons ':roll_part (roll_part msg))
    (cl:cons ':extra_info (extra_info msg))
))
;//! \htmlinclude SendSubTask-response.msg.html

(cl:defclass <SendSubTask-response> (roslisp-msg-protocol:ros-message)
  ((succeed
    :reader succeed
    :initarg :succeed
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SendSubTask-response (<SendSubTask-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SendSubTask-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SendSubTask-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lxind_msgs-srv:<SendSubTask-response> is deprecated: use lxind_msgs-srv:SendSubTask-response instead.")))

(cl:ensure-generic-function 'succeed-val :lambda-list '(m))
(cl:defmethod succeed-val ((m <SendSubTask-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-srv:succeed-val is deprecated.  Use lxind_msgs-srv:succeed instead.")
  (succeed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SendSubTask-response>) ostream)
  "Serializes a message object of type '<SendSubTask-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'succeed) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SendSubTask-response>) istream)
  "Deserializes a message object of type '<SendSubTask-response>"
    (cl:setf (cl:slot-value msg 'succeed) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SendSubTask-response>)))
  "Returns string type for a service object of type '<SendSubTask-response>"
  "lxind_msgs/SendSubTaskResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SendSubTask-response)))
  "Returns string type for a service object of type 'SendSubTask-response"
  "lxind_msgs/SendSubTaskResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SendSubTask-response>)))
  "Returns md5sum for a message object of type '<SendSubTask-response>"
  "ded50bd33fc998583d1657965f147705")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SendSubTask-response)))
  "Returns md5sum for a message object of type 'SendSubTask-response"
  "ded50bd33fc998583d1657965f147705")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SendSubTask-response>)))
  "Returns full string definition for message of type '<SendSubTask-response>"
  (cl:format cl:nil "bool succeed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SendSubTask-response)))
  "Returns full string definition for message of type 'SendSubTask-response"
  (cl:format cl:nil "bool succeed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SendSubTask-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SendSubTask-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SendSubTask-response
    (cl:cons ':succeed (succeed msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SendSubTask)))
  'SendSubTask-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SendSubTask)))
  'SendSubTask-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SendSubTask)))
  "Returns string type for a service object of type '<SendSubTask>"
  "lxind_msgs/SendSubTask")