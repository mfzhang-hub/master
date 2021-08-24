;; Auto-generated. Do not edit!


(when (boundp 'lxind_msgs::NavStatus)
  (if (not (find-package "LXIND_MSGS"))
    (make-package "LXIND_MSGS"))
  (shadow 'NavStatus (find-package "LXIND_MSGS")))
(unless (find-package "LXIND_MSGS::NAVSTATUS")
  (make-package "LXIND_MSGS::NAVSTATUS"))

(in-package "ROS")
;;//! \htmlinclude NavStatus.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*GOAL_NOT_REACHED*" (find-package "LXIND_MSGS::NAVSTATUS"))
(shadow '*GOAL_NOT_REACHED* (find-package "LXIND_MSGS::NAVSTATUS"))
(defconstant lxind_msgs::NavStatus::*GOAL_NOT_REACHED* 0)
(intern "*GOAL_REACHED*" (find-package "LXIND_MSGS::NAVSTATUS"))
(shadow '*GOAL_REACHED* (find-package "LXIND_MSGS::NAVSTATUS"))
(defconstant lxind_msgs::NavStatus::*GOAL_REACHED* 1)
(intern "*GOAL_APPROACHING*" (find-package "LXIND_MSGS::NAVSTATUS"))
(shadow '*GOAL_APPROACHING* (find-package "LXIND_MSGS::NAVSTATUS"))
(defconstant lxind_msgs::NavStatus::*GOAL_APPROACHING* 2)
(defclass lxind_msgs::NavStatus
  :super ros::object
  :slots (_header _latest_task_id _curr_posi _pre_point _next_point _is_exist_task _robot_state _reach_state _carry_state _cur_route_id _cargo_count _exception ))

(defmethod lxind_msgs::NavStatus
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:latest_task_id __latest_task_id) 0)
    ((:curr_posi __curr_posi) (instance geometry_msgs::Pose2D :init))
    ((:pre_point __pre_point) 0)
    ((:next_point __next_point) 0)
    ((:is_exist_task __is_exist_task) 0)
    ((:robot_state __robot_state) 0)
    ((:reach_state __reach_state) 0)
    ((:carry_state __carry_state) 0)
    ((:cur_route_id __cur_route_id) 0)
    ((:cargo_count __cargo_count) 0)
    ((:exception __exception) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _latest_task_id (round __latest_task_id))
   (setq _curr_posi __curr_posi)
   (setq _pre_point (round __pre_point))
   (setq _next_point (round __next_point))
   (setq _is_exist_task (round __is_exist_task))
   (setq _robot_state (round __robot_state))
   (setq _reach_state (round __reach_state))
   (setq _carry_state (round __carry_state))
   (setq _cur_route_id (round __cur_route_id))
   (setq _cargo_count (round __cargo_count))
   (setq _exception (round __exception))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:latest_task_id
   (&optional __latest_task_id)
   (if __latest_task_id (setq _latest_task_id __latest_task_id)) _latest_task_id)
  (:curr_posi
   (&rest __curr_posi)
   (if (keywordp (car __curr_posi))
       (send* _curr_posi __curr_posi)
     (progn
       (if __curr_posi (setq _curr_posi (car __curr_posi)))
       _curr_posi)))
  (:pre_point
   (&optional __pre_point)
   (if __pre_point (setq _pre_point __pre_point)) _pre_point)
  (:next_point
   (&optional __next_point)
   (if __next_point (setq _next_point __next_point)) _next_point)
  (:is_exist_task
   (&optional __is_exist_task)
   (if __is_exist_task (setq _is_exist_task __is_exist_task)) _is_exist_task)
  (:robot_state
   (&optional __robot_state)
   (if __robot_state (setq _robot_state __robot_state)) _robot_state)
  (:reach_state
   (&optional __reach_state)
   (if __reach_state (setq _reach_state __reach_state)) _reach_state)
  (:carry_state
   (&optional __carry_state)
   (if __carry_state (setq _carry_state __carry_state)) _carry_state)
  (:cur_route_id
   (&optional __cur_route_id)
   (if __cur_route_id (setq _cur_route_id __cur_route_id)) _cur_route_id)
  (:cargo_count
   (&optional __cargo_count)
   (if __cargo_count (setq _cargo_count __cargo_count)) _cargo_count)
  (:exception
   (&optional __exception)
   (if __exception (setq _exception __exception)) _exception)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int64 _latest_task_id
    8
    ;; geometry_msgs/Pose2D _curr_posi
    (send _curr_posi :serialization-length)
    ;; int32 _pre_point
    4
    ;; int32 _next_point
    4
    ;; int32 _is_exist_task
    4
    ;; int8 _robot_state
    1
    ;; int8 _reach_state
    1
    ;; int32 _carry_state
    4
    ;; int32 _cur_route_id
    4
    ;; int32 _cargo_count
    4
    ;; int32 _exception
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int64 _latest_task_id
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _latest_task_id (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _latest_task_id) (= (length (_latest_task_id . bv)) 2)) ;; bignum
              (write-long (ash (elt (_latest_task_id . bv) 0) 0) s)
              (write-long (ash (elt (_latest_task_id . bv) 1) -1) s))
             ((and (class _latest_task_id) (= (length (_latest_task_id . bv)) 1)) ;; big1
              (write-long (elt (_latest_task_id . bv) 0) s)
              (write-long (if (>= _latest_task_id 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _latest_task_id s)(write-long (if (>= _latest_task_id 0) 0 #xffffffff) s)))
     ;; geometry_msgs/Pose2D _curr_posi
       (send _curr_posi :serialize s)
     ;; int32 _pre_point
       (write-long _pre_point s)
     ;; int32 _next_point
       (write-long _next_point s)
     ;; int32 _is_exist_task
       (write-long _is_exist_task s)
     ;; int8 _robot_state
       (write-byte _robot_state s)
     ;; int8 _reach_state
       (write-byte _reach_state s)
     ;; int32 _carry_state
       (write-long _carry_state s)
     ;; int32 _cur_route_id
       (write-long _cur_route_id s)
     ;; int32 _cargo_count
       (write-long _cargo_count s)
     ;; int32 _exception
       (write-long _exception s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int64 _latest_task_id
#+(or :alpha :irix6 :x86_64)
      (setf _latest_task_id (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _latest_task_id (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; geometry_msgs/Pose2D _curr_posi
     (send _curr_posi :deserialize buf ptr-) (incf ptr- (send _curr_posi :serialization-length))
   ;; int32 _pre_point
     (setq _pre_point (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _next_point
     (setq _next_point (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _is_exist_task
     (setq _is_exist_task (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int8 _robot_state
     (setq _robot_state (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _robot_state 127) (setq _robot_state (- _robot_state 256)))
   ;; int8 _reach_state
     (setq _reach_state (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _reach_state 127) (setq _reach_state (- _reach_state 256)))
   ;; int32 _carry_state
     (setq _carry_state (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _cur_route_id
     (setq _cur_route_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _cargo_count
     (setq _cargo_count (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _exception
     (setq _exception (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get lxind_msgs::NavStatus :md5sum-) "e8af1e2b711c74b6795ee845872930b7")
(setf (get lxind_msgs::NavStatus :datatype-) "lxind_msgs/NavStatus")
(setf (get lxind_msgs::NavStatus :definition-)
      "int8 GOAL_NOT_REACHED=0
int8 GOAL_REACHED=1
int8 GOAL_APPROACHING=2

Header header

int64 latest_task_id

geometry_msgs/Pose2D curr_posi

int32 pre_point
int32 next_point

int32 is_exist_task

int8 robot_state
int8 reach_state

int32 carry_state
int32 cur_route_id
int32 cargo_count

int32 exception
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
MSG: geometry_msgs/Pose2D
# This expresses a position and orientation on a 2D manifold.

float64 x
float64 y
float64 theta
")



(provide :lxind_msgs/NavStatus "e8af1e2b711c74b6795ee845872930b7")


