;; Auto-generated. Do not edit!


(when (boundp 'lxind_msgs::DevStatus)
  (if (not (find-package "LXIND_MSGS"))
    (make-package "LXIND_MSGS"))
  (shadow 'DevStatus (find-package "LXIND_MSGS")))
(unless (find-package "LXIND_MSGS::DEVSTATUS")
  (make-package "LXIND_MSGS::DEVSTATUS"))

(in-package "ROS")
;;//! \htmlinclude DevStatus.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass lxind_msgs::DevStatus
  :super ros::object
  :slots (_header _sys_temp ))

(defmethod lxind_msgs::DevStatus
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:sys_temp __sys_temp) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _sys_temp (round __sys_temp))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:sys_temp
   (&optional __sys_temp)
   (if __sys_temp (setq _sys_temp __sys_temp)) _sys_temp)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int8 _sys_temp
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int8 _sys_temp
       (write-byte _sys_temp s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int8 _sys_temp
     (setq _sys_temp (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _sys_temp 127) (setq _sys_temp (- _sys_temp 256)))
   ;;
   self)
  )

(setf (get lxind_msgs::DevStatus :md5sum-) "0b9d3ade8a89327b08146f1067c78b2b")
(setf (get lxind_msgs::DevStatus :datatype-) "lxind_msgs/DevStatus")
(setf (get lxind_msgs::DevStatus :definition-)
      "Header header

int8 sys_temp
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

")



(provide :lxind_msgs/DevStatus "0b9d3ade8a89327b08146f1067c78b2b")


