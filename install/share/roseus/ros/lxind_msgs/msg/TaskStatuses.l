;; Auto-generated. Do not edit!


(when (boundp 'lxind_msgs::TaskStatuses)
  (if (not (find-package "LXIND_MSGS"))
    (make-package "LXIND_MSGS"))
  (shadow 'TaskStatuses (find-package "LXIND_MSGS")))
(unless (find-package "LXIND_MSGS::TASKSTATUSES")
  (make-package "LXIND_MSGS::TASKSTATUSES"))

(in-package "ROS")
;;//! \htmlinclude TaskStatuses.msg.html


(defclass lxind_msgs::TaskStatuses
  :super ros::object
  :slots (_statuses ))

(defmethod lxind_msgs::TaskStatuses
  (:init
   (&key
    ((:statuses __statuses) (let (r) (dotimes (i 0) (push (instance lxind_msgs::TaskStatus :init) r)) r))
    )
   (send-super :init)
   (setq _statuses __statuses)
   self)
  (:statuses
   (&rest __statuses)
   (if (keywordp (car __statuses))
       (send* _statuses __statuses)
     (progn
       (if __statuses (setq _statuses (car __statuses)))
       _statuses)))
  (:serialization-length
   ()
   (+
    ;; lxind_msgs/TaskStatus[] _statuses
    (apply #'+ (send-all _statuses :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; lxind_msgs/TaskStatus[] _statuses
     (write-long (length _statuses) s)
     (dolist (elem _statuses)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; lxind_msgs/TaskStatus[] _statuses
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _statuses (let (r) (dotimes (i n) (push (instance lxind_msgs::TaskStatus :init) r)) r))
     (dolist (elem- _statuses)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get lxind_msgs::TaskStatuses :md5sum-) "a910037bbbb83eb5213f09190db3e871")
(setf (get lxind_msgs::TaskStatuses :datatype-) "lxind_msgs/TaskStatuses")
(setf (get lxind_msgs::TaskStatuses :definition-)
      "lxind_msgs/TaskStatus[] statuses
================================================================================
MSG: lxind_msgs/TaskStatus
uint8 STATUS_UNFINISHED = 0
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



(provide :lxind_msgs/TaskStatuses "a910037bbbb83eb5213f09190db3e871")


