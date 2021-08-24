;; Auto-generated. Do not edit!


(when (boundp 'lxind_msgs::Exceptions)
  (if (not (find-package "LXIND_MSGS"))
    (make-package "LXIND_MSGS"))
  (shadow 'Exceptions (find-package "LXIND_MSGS")))
(unless (find-package "LXIND_MSGS::EXCEPTIONS")
  (make-package "LXIND_MSGS::EXCEPTIONS"))

(in-package "ROS")
;;//! \htmlinclude Exceptions.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass lxind_msgs::Exceptions
  :super ros::object
  :slots (_header _exceptions ))

(defmethod lxind_msgs::Exceptions
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:exceptions __exceptions) (let (r) (dotimes (i 0) (push (instance lxind_msgs::Exception :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _exceptions __exceptions)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:exceptions
   (&rest __exceptions)
   (if (keywordp (car __exceptions))
       (send* _exceptions __exceptions)
     (progn
       (if __exceptions (setq _exceptions (car __exceptions)))
       _exceptions)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; lxind_msgs/Exception[] _exceptions
    (apply #'+ (send-all _exceptions :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; lxind_msgs/Exception[] _exceptions
     (write-long (length _exceptions) s)
     (dolist (elem _exceptions)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; lxind_msgs/Exception[] _exceptions
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _exceptions (let (r) (dotimes (i n) (push (instance lxind_msgs::Exception :init) r)) r))
     (dolist (elem- _exceptions)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get lxind_msgs::Exceptions :md5sum-) "e1ee62720c4eba0ee889e14ffdbd8cf5")
(setf (get lxind_msgs::Exceptions :datatype-) "lxind_msgs/Exceptions")
(setf (get lxind_msgs::Exceptions :definition-)
      "Header header

lxind_msgs/Exception[] exceptions
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
MSG: lxind_msgs/Exception
Header header

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

")



(provide :lxind_msgs/Exceptions "e1ee62720c4eba0ee889e14ffdbd8cf5")


