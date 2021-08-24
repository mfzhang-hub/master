;; Auto-generated. Do not edit!


(when (boundp 'lxind_msgs::SendSubTask)
  (if (not (find-package "LXIND_MSGS"))
    (make-package "LXIND_MSGS"))
  (shadow 'SendSubTask (find-package "LXIND_MSGS")))
(unless (find-package "LXIND_MSGS::SENDSUBTASK")
  (make-package "LXIND_MSGS::SENDSUBTASK"))
(unless (find-package "LXIND_MSGS::SENDSUBTASKREQUEST")
  (make-package "LXIND_MSGS::SENDSUBTASKREQUEST"))
(unless (find-package "LXIND_MSGS::SENDSUBTASKRESPONSE")
  (make-package "LXIND_MSGS::SENDSUBTASKRESPONSE"))

(in-package "ROS")





(defclass lxind_msgs::SendSubTaskRequest
  :super ros::object
  :slots (_task_id _sub_task_cmd _next_pritask_cmd _target_state _target_id _target_name _tol_dist _tol_angle _to_goal_mode _enable_oa _max_speed _safe_dist _min_turn_radius _shape_transform _init_state _fixed_path _load_mode _direction _align_part _align_dir _prec_dist _roll_part _extra_info ))

(defmethod lxind_msgs::SendSubTaskRequest
  (:init
   (&key
    ((:task_id __task_id) 0)
    ((:sub_task_cmd __sub_task_cmd) 0)
    ((:next_pritask_cmd __next_pritask_cmd) 0)
    ((:target_state __target_state) (instance lxind_msgs::RobotPose :init))
    ((:target_id __target_id) 0)
    ((:target_name __target_name) "")
    ((:tol_dist __tol_dist) 0.0)
    ((:tol_angle __tol_angle) 0.0)
    ((:to_goal_mode __to_goal_mode) 0)
    ((:enable_oa __enable_oa) nil)
    ((:max_speed __max_speed) 0.0)
    ((:safe_dist __safe_dist) 0.0)
    ((:min_turn_radius __min_turn_radius) 0.0)
    ((:shape_transform __shape_transform) 0)
    ((:init_state __init_state) (instance lxind_msgs::RobotPose :init))
    ((:fixed_path __fixed_path) (let (r) (dotimes (i 0) (push (instance lxind_msgs::PathPoint :init) r)) r))
    ((:load_mode __load_mode) 0)
    ((:direction __direction) 0)
    ((:align_part __align_part) 0)
    ((:align_dir __align_dir) 0)
    ((:prec_dist __prec_dist) 0.0)
    ((:roll_part __roll_part) "")
    ((:extra_info __extra_info) "")
    )
   (send-super :init)
   (setq _task_id (round __task_id))
   (setq _sub_task_cmd (round __sub_task_cmd))
   (setq _next_pritask_cmd (round __next_pritask_cmd))
   (setq _target_state __target_state)
   (setq _target_id (round __target_id))
   (setq _target_name (string __target_name))
   (setq _tol_dist (float __tol_dist))
   (setq _tol_angle (float __tol_angle))
   (setq _to_goal_mode (round __to_goal_mode))
   (setq _enable_oa __enable_oa)
   (setq _max_speed (float __max_speed))
   (setq _safe_dist (float __safe_dist))
   (setq _min_turn_radius (float __min_turn_radius))
   (setq _shape_transform (round __shape_transform))
   (setq _init_state __init_state)
   (setq _fixed_path __fixed_path)
   (setq _load_mode (round __load_mode))
   (setq _direction (round __direction))
   (setq _align_part (round __align_part))
   (setq _align_dir (round __align_dir))
   (setq _prec_dist (float __prec_dist))
   (setq _roll_part (string __roll_part))
   (setq _extra_info (string __extra_info))
   self)
  (:task_id
   (&optional __task_id)
   (if __task_id (setq _task_id __task_id)) _task_id)
  (:sub_task_cmd
   (&optional __sub_task_cmd)
   (if __sub_task_cmd (setq _sub_task_cmd __sub_task_cmd)) _sub_task_cmd)
  (:next_pritask_cmd
   (&optional __next_pritask_cmd)
   (if __next_pritask_cmd (setq _next_pritask_cmd __next_pritask_cmd)) _next_pritask_cmd)
  (:target_state
   (&rest __target_state)
   (if (keywordp (car __target_state))
       (send* _target_state __target_state)
     (progn
       (if __target_state (setq _target_state (car __target_state)))
       _target_state)))
  (:target_id
   (&optional __target_id)
   (if __target_id (setq _target_id __target_id)) _target_id)
  (:target_name
   (&optional __target_name)
   (if __target_name (setq _target_name __target_name)) _target_name)
  (:tol_dist
   (&optional __tol_dist)
   (if __tol_dist (setq _tol_dist __tol_dist)) _tol_dist)
  (:tol_angle
   (&optional __tol_angle)
   (if __tol_angle (setq _tol_angle __tol_angle)) _tol_angle)
  (:to_goal_mode
   (&optional __to_goal_mode)
   (if __to_goal_mode (setq _to_goal_mode __to_goal_mode)) _to_goal_mode)
  (:enable_oa
   (&optional __enable_oa)
   (if __enable_oa (setq _enable_oa __enable_oa)) _enable_oa)
  (:max_speed
   (&optional __max_speed)
   (if __max_speed (setq _max_speed __max_speed)) _max_speed)
  (:safe_dist
   (&optional __safe_dist)
   (if __safe_dist (setq _safe_dist __safe_dist)) _safe_dist)
  (:min_turn_radius
   (&optional __min_turn_radius)
   (if __min_turn_radius (setq _min_turn_radius __min_turn_radius)) _min_turn_radius)
  (:shape_transform
   (&optional __shape_transform)
   (if __shape_transform (setq _shape_transform __shape_transform)) _shape_transform)
  (:init_state
   (&rest __init_state)
   (if (keywordp (car __init_state))
       (send* _init_state __init_state)
     (progn
       (if __init_state (setq _init_state (car __init_state)))
       _init_state)))
  (:fixed_path
   (&rest __fixed_path)
   (if (keywordp (car __fixed_path))
       (send* _fixed_path __fixed_path)
     (progn
       (if __fixed_path (setq _fixed_path (car __fixed_path)))
       _fixed_path)))
  (:load_mode
   (&optional __load_mode)
   (if __load_mode (setq _load_mode __load_mode)) _load_mode)
  (:direction
   (&optional __direction)
   (if __direction (setq _direction __direction)) _direction)
  (:align_part
   (&optional __align_part)
   (if __align_part (setq _align_part __align_part)) _align_part)
  (:align_dir
   (&optional __align_dir)
   (if __align_dir (setq _align_dir __align_dir)) _align_dir)
  (:prec_dist
   (&optional __prec_dist)
   (if __prec_dist (setq _prec_dist __prec_dist)) _prec_dist)
  (:roll_part
   (&optional __roll_part)
   (if __roll_part (setq _roll_part __roll_part)) _roll_part)
  (:extra_info
   (&optional __extra_info)
   (if __extra_info (setq _extra_info __extra_info)) _extra_info)
  (:serialization-length
   ()
   (+
    ;; int32 _task_id
    4
    ;; uint32 _sub_task_cmd
    4
    ;; int32 _next_pritask_cmd
    4
    ;; lxind_msgs/RobotPose _target_state
    (send _target_state :serialization-length)
    ;; int32 _target_id
    4
    ;; string _target_name
    4 (length _target_name)
    ;; float32 _tol_dist
    4
    ;; float32 _tol_angle
    4
    ;; uint8 _to_goal_mode
    1
    ;; bool _enable_oa
    1
    ;; float32 _max_speed
    4
    ;; float32 _safe_dist
    4
    ;; float32 _min_turn_radius
    4
    ;; uint8 _shape_transform
    1
    ;; lxind_msgs/RobotPose _init_state
    (send _init_state :serialization-length)
    ;; lxind_msgs/PathPoint[] _fixed_path
    (apply #'+ (send-all _fixed_path :serialization-length)) 4
    ;; uint8 _load_mode
    1
    ;; uint8 _direction
    1
    ;; uint8 _align_part
    1
    ;; uint8 _align_dir
    1
    ;; float32 _prec_dist
    4
    ;; string _roll_part
    4 (length _roll_part)
    ;; string _extra_info
    4 (length _extra_info)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _task_id
       (write-long _task_id s)
     ;; uint32 _sub_task_cmd
       (write-long _sub_task_cmd s)
     ;; int32 _next_pritask_cmd
       (write-long _next_pritask_cmd s)
     ;; lxind_msgs/RobotPose _target_state
       (send _target_state :serialize s)
     ;; int32 _target_id
       (write-long _target_id s)
     ;; string _target_name
       (write-long (length _target_name) s) (princ _target_name s)
     ;; float32 _tol_dist
       (sys::poke _tol_dist (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _tol_angle
       (sys::poke _tol_angle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _to_goal_mode
       (write-byte _to_goal_mode s)
     ;; bool _enable_oa
       (if _enable_oa (write-byte -1 s) (write-byte 0 s))
     ;; float32 _max_speed
       (sys::poke _max_speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _safe_dist
       (sys::poke _safe_dist (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _min_turn_radius
       (sys::poke _min_turn_radius (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _shape_transform
       (write-byte _shape_transform s)
     ;; lxind_msgs/RobotPose _init_state
       (send _init_state :serialize s)
     ;; lxind_msgs/PathPoint[] _fixed_path
     (write-long (length _fixed_path) s)
     (dolist (elem _fixed_path)
       (send elem :serialize s)
       )
     ;; uint8 _load_mode
       (write-byte _load_mode s)
     ;; uint8 _direction
       (write-byte _direction s)
     ;; uint8 _align_part
       (write-byte _align_part s)
     ;; uint8 _align_dir
       (write-byte _align_dir s)
     ;; float32 _prec_dist
       (sys::poke _prec_dist (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _roll_part
       (write-long (length _roll_part) s) (princ _roll_part s)
     ;; string _extra_info
       (write-long (length _extra_info) s) (princ _extra_info s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _task_id
     (setq _task_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _sub_task_cmd
     (setq _sub_task_cmd (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _next_pritask_cmd
     (setq _next_pritask_cmd (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; lxind_msgs/RobotPose _target_state
     (send _target_state :deserialize buf ptr-) (incf ptr- (send _target_state :serialization-length))
   ;; int32 _target_id
     (setq _target_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _target_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _target_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _tol_dist
     (setq _tol_dist (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _tol_angle
     (setq _tol_angle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _to_goal_mode
     (setq _to_goal_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _enable_oa
     (setq _enable_oa (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _max_speed
     (setq _max_speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _safe_dist
     (setq _safe_dist (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _min_turn_radius
     (setq _min_turn_radius (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _shape_transform
     (setq _shape_transform (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; lxind_msgs/RobotPose _init_state
     (send _init_state :deserialize buf ptr-) (incf ptr- (send _init_state :serialization-length))
   ;; lxind_msgs/PathPoint[] _fixed_path
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _fixed_path (let (r) (dotimes (i n) (push (instance lxind_msgs::PathPoint :init) r)) r))
     (dolist (elem- _fixed_path)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; uint8 _load_mode
     (setq _load_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _direction
     (setq _direction (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _align_part
     (setq _align_part (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _align_dir
     (setq _align_dir (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _prec_dist
     (setq _prec_dist (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _roll_part
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _roll_part (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _extra_info
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _extra_info (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass lxind_msgs::SendSubTaskResponse
  :super ros::object
  :slots (_succeed ))

(defmethod lxind_msgs::SendSubTaskResponse
  (:init
   (&key
    ((:succeed __succeed) nil)
    )
   (send-super :init)
   (setq _succeed __succeed)
   self)
  (:succeed
   (&optional __succeed)
   (if __succeed (setq _succeed __succeed)) _succeed)
  (:serialization-length
   ()
   (+
    ;; bool _succeed
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _succeed
       (if _succeed (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _succeed
     (setq _succeed (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass lxind_msgs::SendSubTask
  :super ros::object
  :slots ())

(setf (get lxind_msgs::SendSubTask :md5sum-) "ded50bd33fc998583d1657965f147705")
(setf (get lxind_msgs::SendSubTask :datatype-) "lxind_msgs/SendSubTask")
(setf (get lxind_msgs::SendSubTask :request) lxind_msgs::SendSubTaskRequest)
(setf (get lxind_msgs::SendSubTask :response) lxind_msgs::SendSubTaskResponse)

(defmethod lxind_msgs::SendSubTaskRequest
  (:response () (instance lxind_msgs::SendSubTaskResponse :init)))

(setf (get lxind_msgs::SendSubTaskRequest :md5sum-) "ded50bd33fc998583d1657965f147705")
(setf (get lxind_msgs::SendSubTaskRequest :datatype-) "lxind_msgs/SendSubTaskRequest")
(setf (get lxind_msgs::SendSubTaskRequest :definition-)
      "int32 task_id
uint32 sub_task_cmd

int32 next_pritask_cmd

lxind_msgs/RobotPose target_state
int32 target_id
string target_name
float32 tol_dist
float32 tol_angle
uint8 to_goal_mode

bool enable_oa
float32 max_speed
float32 safe_dist
float32 min_turn_radius
uint8 shape_transform

lxind_msgs/RobotPose init_state
lxind_msgs/PathPoint[] fixed_path


uint8 load_mode
uint8 direction

uint8 align_part
uint8 align_dir


float32 prec_dist


string roll_part

string extra_info

================================================================================
MSG: lxind_msgs/RobotPose
float32 x
float32 y
float32 th
================================================================================
MSG: lxind_msgs/PathPoint
float32 x
float32 y
float32 th

---
bool succeed
")

(setf (get lxind_msgs::SendSubTaskResponse :md5sum-) "ded50bd33fc998583d1657965f147705")
(setf (get lxind_msgs::SendSubTaskResponse :datatype-) "lxind_msgs/SendSubTaskResponse")
(setf (get lxind_msgs::SendSubTaskResponse :definition-)
      "int32 task_id
uint32 sub_task_cmd

int32 next_pritask_cmd

lxind_msgs/RobotPose target_state
int32 target_id
string target_name
float32 tol_dist
float32 tol_angle
uint8 to_goal_mode

bool enable_oa
float32 max_speed
float32 safe_dist
float32 min_turn_radius
uint8 shape_transform

lxind_msgs/RobotPose init_state
lxind_msgs/PathPoint[] fixed_path


uint8 load_mode
uint8 direction

uint8 align_part
uint8 align_dir


float32 prec_dist


string roll_part

string extra_info

================================================================================
MSG: lxind_msgs/RobotPose
float32 x
float32 y
float32 th
================================================================================
MSG: lxind_msgs/PathPoint
float32 x
float32 y
float32 th

---
bool succeed
")



(provide :lxind_msgs/SendSubTask "ded50bd33fc998583d1657965f147705")


