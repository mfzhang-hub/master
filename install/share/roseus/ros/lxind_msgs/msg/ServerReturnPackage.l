;; Auto-generated. Do not edit!


(when (boundp 'lxind_msgs::ServerReturnPackage)
  (if (not (find-package "LXIND_MSGS"))
    (make-package "LXIND_MSGS"))
  (shadow 'ServerReturnPackage (find-package "LXIND_MSGS")))
(unless (find-package "LXIND_MSGS::SERVERRETURNPACKAGE")
  (make-package "LXIND_MSGS::SERVERRETURNPACKAGE"))

(in-package "ROS")
;;//! \htmlinclude ServerReturnPackage.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass lxind_msgs::ServerReturnPackage
  :super ros::object
  :slots (_header _package_header _warn ))

(defmethod lxind_msgs::ServerReturnPackage
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:package_header __package_header) 0)
    ((:warn __warn) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _package_header (round __package_header))
   (setq _warn (round __warn))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:package_header
   (&optional __package_header)
   (if __package_header (setq _package_header __package_header)) _package_header)
  (:warn
   (&optional __warn)
   (if __warn (setq _warn __warn)) _warn)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int8 _package_header
    1
    ;; int32 _warn
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int8 _package_header
       (write-byte _package_header s)
     ;; int32 _warn
       (write-long _warn s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int8 _package_header
     (setq _package_header (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _package_header 127) (setq _package_header (- _package_header 256)))
   ;; int32 _warn
     (setq _warn (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get lxind_msgs::ServerReturnPackage :md5sum-) "425ca2618ab4a8a07e9ecad46a72601f")
(setf (get lxind_msgs::ServerReturnPackage :datatype-) "lxind_msgs/ServerReturnPackage")
(setf (get lxind_msgs::ServerReturnPackage :definition-)
      "Header header

int8 package_header
int32    warn
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



(provide :lxind_msgs/ServerReturnPackage "425ca2618ab4a8a07e9ecad46a72601f")


