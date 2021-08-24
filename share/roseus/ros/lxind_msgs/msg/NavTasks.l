;; Auto-generated. Do not edit!


(when (boundp 'lxind_msgs::NavTasks)
  (if (not (find-package "LXIND_MSGS"))
    (make-package "LXIND_MSGS"))
  (shadow 'NavTasks (find-package "LXIND_MSGS")))
(unless (find-package "LXIND_MSGS::NAVTASKS")
  (make-package "LXIND_MSGS::NAVTASKS"))

(in-package "ROS")
;;//! \htmlinclude NavTasks.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass lxind_msgs::NavTasks
  :super ros::object
  :slots (_header _b_append _tasks ))

(defmethod lxind_msgs::NavTasks
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:b_append __b_append) nil)
    ((:tasks __tasks) (let (r) (dotimes (i 0) (push (instance lxind_msgs::NavTask :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _b_append __b_append)
   (setq _tasks __tasks)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:b_append
   (&optional __b_append)
   (if __b_append (setq _b_append __b_append)) _b_append)
  (:tasks
   (&rest __tasks)
   (if (keywordp (car __tasks))
       (send* _tasks __tasks)
     (progn
       (if __tasks (setq _tasks (car __tasks)))
       _tasks)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _b_append
    1
    ;; lxind_msgs/NavTask[] _tasks
    (apply #'+ (send-all _tasks :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _b_append
       (if _b_append (write-byte -1 s) (write-byte 0 s))
     ;; lxind_msgs/NavTask[] _tasks
     (write-long (length _tasks) s)
     (dolist (elem _tasks)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _b_append
     (setq _b_append (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; lxind_msgs/NavTask[] _tasks
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _tasks (let (r) (dotimes (i n) (push (instance lxind_msgs::NavTask :init) r)) r))
     (dolist (elem- _tasks)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get lxind_msgs::NavTasks :md5sum-) "ad67f297ef1a9306a061f82f2b2a7d23")
(setf (get lxind_msgs::NavTasks :datatype-) "lxind_msgs/NavTasks")
(setf (get lxind_msgs::NavTasks :definition-)
      "Header header

bool b_append
lxind_msgs/NavTask[] tasks
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: lxind_msgs/NavTask
int64 task_id
uint32 pri_task_cmd

lxind_msgs/RobotPose init_state
lxind_msgs/RobotPose target_state

int32 target_id
string target_name
float32 tol_dist
float32 tol_angle
uint8 to_goal_mode

bool enable_oa
float32 max_speed
float32 min_turn_radius

lxind_msgs/PathPoint[] fixed_path

# Robot spec task
uint8 load_mode
uint8 direction

# precloc
float32 prec_dist

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

string node_name
")



(provide :lxind_msgs/NavTasks "ad67f297ef1a9306a061f82f2b2a7d23")


