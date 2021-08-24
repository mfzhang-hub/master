;; Auto-generated. Do not edit!


(when (boundp 'lxind_msgs::TaskStatus)
  (if (not (find-package "LXIND_MSGS"))
    (make-package "LXIND_MSGS"))
  (shadow 'TaskStatus (find-package "LXIND_MSGS")))
(unless (find-package "LXIND_MSGS::TASKSTATUS")
  (make-package "LXIND_MSGS::TASKSTATUS"))

(in-package "ROS")
;;//! \htmlinclude TaskStatus.msg.html


(intern "*STATUS_UNFINISHED*" (find-package "LXIND_MSGS::TASKSTATUS"))
(shadow '*STATUS_UNFINISHED* (find-package "LXIND_MSGS::TASKSTATUS"))
(defconstant lxind_msgs::TaskStatus::*STATUS_UNFINISHED* 0)
(intern "*STATUS_SUCCEEDED*" (find-package "LXIND_MSGS::TASKSTATUS"))
(shadow '*STATUS_SUCCEEDED* (find-package "LXIND_MSGS::TASKSTATUS"))
(defconstant lxind_msgs::TaskStatus::*STATUS_SUCCEEDED* 1)
(intern "*STATUS_FAILED*" (find-package "LXIND_MSGS::TASKSTATUS"))
(shadow '*STATUS_FAILED* (find-package "LXIND_MSGS::TASKSTATUS"))
(defconstant lxind_msgs::TaskStatus::*STATUS_FAILED* 2)
(intern "*STATUS_PAUSED*" (find-package "LXIND_MSGS::TASKSTATUS"))
(shadow '*STATUS_PAUSED* (find-package "LXIND_MSGS::TASKSTATUS"))
(defconstant lxind_msgs::TaskStatus::*STATUS_PAUSED* 3)
(intern "*STATUS_STOPPED*" (find-package "LXIND_MSGS::TASKSTATUS"))
(shadow '*STATUS_STOPPED* (find-package "LXIND_MSGS::TASKSTATUS"))
(defconstant lxind_msgs::TaskStatus::*STATUS_STOPPED* 10)
(intern "*STATUS_OFFLINE_PAUSED*" (find-package "LXIND_MSGS::TASKSTATUS"))
(shadow '*STATUS_OFFLINE_PAUSED* (find-package "LXIND_MSGS::TASKSTATUS"))
(defconstant lxind_msgs::TaskStatus::*STATUS_OFFLINE_PAUSED* 11)
(intern "*STATUS_SKIP*" (find-package "LXIND_MSGS::TASKSTATUS"))
(shadow '*STATUS_SKIP* (find-package "LXIND_MSGS::TASKSTATUS"))
(defconstant lxind_msgs::TaskStatus::*STATUS_SKIP* 12)
(intern "*STATUS_EXCEPT*" (find-package "LXIND_MSGS::TASKSTATUS"))
(shadow '*STATUS_EXCEPT* (find-package "LXIND_MSGS::TASKSTATUS"))
(defconstant lxind_msgs::TaskStatus::*STATUS_EXCEPT* 13)
(defclass lxind_msgs::TaskStatus
  :super ros::object
  :slots (_task_id _pri_task_cmd _status ))

(defmethod lxind_msgs::TaskStatus
  (:init
   (&key
    ((:task_id __task_id) 0)
    ((:pri_task_cmd __pri_task_cmd) 0)
    ((:status __status) 0)
    )
   (send-super :init)
   (setq _task_id (round __task_id))
   (setq _pri_task_cmd (round __pri_task_cmd))
   (setq _status (round __status))
   self)
  (:task_id
   (&optional __task_id)
   (if __task_id (setq _task_id __task_id)) _task_id)
  (:pri_task_cmd
   (&optional __pri_task_cmd)
   (if __pri_task_cmd (setq _pri_task_cmd __pri_task_cmd)) _pri_task_cmd)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; int64 _task_id
    8
    ;; uint32 _pri_task_cmd
    4
    ;; uint8 _status
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _task_id
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _task_id (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _task_id) (= (length (_task_id . bv)) 2)) ;; bignum
              (write-long (ash (elt (_task_id . bv) 0) 0) s)
              (write-long (ash (elt (_task_id . bv) 1) -1) s))
             ((and (class _task_id) (= (length (_task_id . bv)) 1)) ;; big1
              (write-long (elt (_task_id . bv) 0) s)
              (write-long (if (>= _task_id 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _task_id s)(write-long (if (>= _task_id 0) 0 #xffffffff) s)))
     ;; uint32 _pri_task_cmd
       (write-long _pri_task_cmd s)
     ;; uint8 _status
       (write-byte _status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _task_id
#+(or :alpha :irix6 :x86_64)
      (setf _task_id (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _task_id (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; uint32 _pri_task_cmd
     (setq _pri_task_cmd (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get lxind_msgs::TaskStatus :md5sum-) "7c006c382a86ee1bce524eaad28c8207")
(setf (get lxind_msgs::TaskStatus :datatype-) "lxind_msgs/TaskStatus")
(setf (get lxind_msgs::TaskStatus :definition-)
      "uint8 STATUS_UNFINISHED = 0
uint8 STATUS_SUCCEEDED = 1
uint8 STATUS_FAILED = 2
uint8 STATUS_PAUSED = 3

#  not accepted by diaodu
uint8 STATUS_STOPPED = 10    # task stopped, no need send to diaodu
uint8 STATUS_OFFLINE_PAUSED = 11
uint8 STATUS_SKIP = 12
uint8 STATUS_EXCEPT = 13

int64 task_id
uint32 pri_task_cmd
uint8 status
")



(provide :lxind_msgs/TaskStatus "7c006c382a86ee1bce524eaad28c8207")


