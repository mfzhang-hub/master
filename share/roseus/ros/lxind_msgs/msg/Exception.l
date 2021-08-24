;; Auto-generated. Do not edit!


(when (boundp 'lxind_msgs::Exception)
  (if (not (find-package "LXIND_MSGS"))
    (make-package "LXIND_MSGS"))
  (shadow 'Exception (find-package "LXIND_MSGS")))
(unless (find-package "LXIND_MSGS::EXCEPTION")
  (make-package "LXIND_MSGS::EXCEPTION"))

(in-package "ROS")
;;//! \htmlinclude Exception.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass lxind_msgs::Exception
  :super ros::object
  :slots (_header _module_name _exc_code _description ))

(defmethod lxind_msgs::Exception
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:module_name __module_name) "")
    ((:exc_code __exc_code) 0)
    ((:description __description) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _module_name (string __module_name))
   (setq _exc_code (round __exc_code))
   (setq _description (string __description))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:module_name
   (&optional __module_name)
   (if __module_name (setq _module_name __module_name)) _module_name)
  (:exc_code
   (&optional __exc_code)
   (if __exc_code (setq _exc_code __exc_code)) _exc_code)
  (:description
   (&optional __description)
   (if __description (setq _description __description)) _description)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _module_name
    4 (length _module_name)
    ;; int32 _exc_code
    4
    ;; string _description
    4 (length _description)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _module_name
       (write-long (length _module_name) s) (princ _module_name s)
     ;; int32 _exc_code
       (write-long _exc_code s)
     ;; string _description
       (write-long (length _description) s) (princ _description s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _module_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _module_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _exc_code
     (setq _exc_code (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _description
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _description (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get lxind_msgs::Exception :md5sum-) "0f291ef6a0311d2b715a94b5bf101ae5")
(setf (get lxind_msgs::Exception :datatype-) "lxind_msgs/Exception")
(setf (get lxind_msgs::Exception :definition-)
      "Header header

string module_name
int32 exc_code
string description

## 视觉定位异常
## 0: 正常
## 1: 相机启动失败
## 2: 图像数据为空
## 3: 图像数据较老，当前时间减去图像发送时间超过100ms
## 4: 长时间(3s)没有图像数据
## 5: 长时间(3s)没有里程计数据
## 6: 图像过曝或欠曝
## 7: 地图数据读取失败
## 8: 特征检测服务异常
## 9: 定位初始化失败
## 10: 长时间(10s)特征检测失败
## 11: 偏离路径，长距离(10m)无特征
## 12: 重定位超时(10s)，定位丢失
## 999: 其他异常

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



(provide :lxind_msgs/Exception "0f291ef6a0311d2b715a94b5bf101ae5")


