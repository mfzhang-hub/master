;; Auto-generated. Do not edit!


(when (boundp 'lxind_msgs::InitializeLocStatus)
  (if (not (find-package "LXIND_MSGS"))
    (make-package "LXIND_MSGS"))
  (shadow 'InitializeLocStatus (find-package "LXIND_MSGS")))
(unless (find-package "LXIND_MSGS::INITIALIZELOCSTATUS")
  (make-package "LXIND_MSGS::INITIALIZELOCSTATUS"))

(in-package "ROS")
;;//! \htmlinclude InitializeLocStatus.msg.html


(defclass lxind_msgs::InitializeLocStatus
  :super ros::object
  :slots (_isSuccess _weight _relocInfo ))

(defmethod lxind_msgs::InitializeLocStatus
  (:init
   (&key
    ((:isSuccess __isSuccess) nil)
    ((:weight __weight) 0)
    ((:relocInfo __relocInfo) (instance lxind_msgs::InitializeLoc :init))
    )
   (send-super :init)
   (setq _isSuccess __isSuccess)
   (setq _weight (round __weight))
   (setq _relocInfo __relocInfo)
   self)
  (:isSuccess
   (&optional __isSuccess)
   (if __isSuccess (setq _isSuccess __isSuccess)) _isSuccess)
  (:weight
   (&optional __weight)
   (if __weight (setq _weight __weight)) _weight)
  (:relocInfo
   (&rest __relocInfo)
   (if (keywordp (car __relocInfo))
       (send* _relocInfo __relocInfo)
     (progn
       (if __relocInfo (setq _relocInfo (car __relocInfo)))
       _relocInfo)))
  (:serialization-length
   ()
   (+
    ;; bool _isSuccess
    1
    ;; int32 _weight
    4
    ;; lxind_msgs/InitializeLoc _relocInfo
    (send _relocInfo :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _isSuccess
       (if _isSuccess (write-byte -1 s) (write-byte 0 s))
     ;; int32 _weight
       (write-long _weight s)
     ;; lxind_msgs/InitializeLoc _relocInfo
       (send _relocInfo :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _isSuccess
     (setq _isSuccess (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _weight
     (setq _weight (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; lxind_msgs/InitializeLoc _relocInfo
     (send _relocInfo :deserialize buf ptr-) (incf ptr- (send _relocInfo :serialization-length))
   ;;
   self)
  )

(setf (get lxind_msgs::InitializeLocStatus :md5sum-) "5d6cace685863e5309090db1004f6f1c")
(setf (get lxind_msgs::InitializeLocStatus :datatype-) "lxind_msgs/InitializeLocStatus")
(setf (get lxind_msgs::InitializeLocStatus :definition-)
      "bool isSuccess
int32 weight
InitializeLoc relocInfo
================================================================================
MSG: lxind_msgs/InitializeLoc
Header header
string name
float32 x
float32 y
float32 theta
bool is_startup_reloc
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



(provide :lxind_msgs/InitializeLocStatus "5d6cace685863e5309090db1004f6f1c")


