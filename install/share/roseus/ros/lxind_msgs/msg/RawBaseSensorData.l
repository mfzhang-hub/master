;; Auto-generated. Do not edit!


(when (boundp 'lxind_msgs::RawBaseSensorData)
  (if (not (find-package "LXIND_MSGS"))
    (make-package "LXIND_MSGS"))
  (shadow 'RawBaseSensorData (find-package "LXIND_MSGS")))
(unless (find-package "LXIND_MSGS::RAWBASESENSORDATA")
  (make-package "LXIND_MSGS::RAWBASESENSORDATA"))

(in-package "ROS")
;;//! \htmlinclude RawBaseSensorData.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass lxind_msgs::RawBaseSensorData
  :super ros::object
  :slots (_header _left_encoder _right_encoder _yaw _is_bumped _emerg_pressed _switch1_on _switch2_on _switch3_on ))

(defmethod lxind_msgs::RawBaseSensorData
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:left_encoder __left_encoder) 0)
    ((:right_encoder __right_encoder) 0)
    ((:yaw __yaw) 0.0)
    ((:is_bumped __is_bumped) nil)
    ((:emerg_pressed __emerg_pressed) nil)
    ((:switch1_on __switch1_on) nil)
    ((:switch2_on __switch2_on) nil)
    ((:switch3_on __switch3_on) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _left_encoder (round __left_encoder))
   (setq _right_encoder (round __right_encoder))
   (setq _yaw (float __yaw))
   (setq _is_bumped __is_bumped)
   (setq _emerg_pressed __emerg_pressed)
   (setq _switch1_on __switch1_on)
   (setq _switch2_on __switch2_on)
   (setq _switch3_on __switch3_on)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:left_encoder
   (&optional __left_encoder)
   (if __left_encoder (setq _left_encoder __left_encoder)) _left_encoder)
  (:right_encoder
   (&optional __right_encoder)
   (if __right_encoder (setq _right_encoder __right_encoder)) _right_encoder)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:is_bumped
   (&optional __is_bumped)
   (if __is_bumped (setq _is_bumped __is_bumped)) _is_bumped)
  (:emerg_pressed
   (&optional __emerg_pressed)
   (if __emerg_pressed (setq _emerg_pressed __emerg_pressed)) _emerg_pressed)
  (:switch1_on
   (&optional __switch1_on)
   (if __switch1_on (setq _switch1_on __switch1_on)) _switch1_on)
  (:switch2_on
   (&optional __switch2_on)
   (if __switch2_on (setq _switch2_on __switch2_on)) _switch2_on)
  (:switch3_on
   (&optional __switch3_on)
   (if __switch3_on (setq _switch3_on __switch3_on)) _switch3_on)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _left_encoder
    4
    ;; int32 _right_encoder
    4
    ;; float32 _yaw
    4
    ;; bool _is_bumped
    1
    ;; bool _emerg_pressed
    1
    ;; bool _switch1_on
    1
    ;; bool _switch2_on
    1
    ;; bool _switch3_on
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _left_encoder
       (write-long _left_encoder s)
     ;; int32 _right_encoder
       (write-long _right_encoder s)
     ;; float32 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _is_bumped
       (if _is_bumped (write-byte -1 s) (write-byte 0 s))
     ;; bool _emerg_pressed
       (if _emerg_pressed (write-byte -1 s) (write-byte 0 s))
     ;; bool _switch1_on
       (if _switch1_on (write-byte -1 s) (write-byte 0 s))
     ;; bool _switch2_on
       (if _switch2_on (write-byte -1 s) (write-byte 0 s))
     ;; bool _switch3_on
       (if _switch3_on (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _left_encoder
     (setq _left_encoder (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _right_encoder
     (setq _right_encoder (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _yaw
     (setq _yaw (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _is_bumped
     (setq _is_bumped (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _emerg_pressed
     (setq _emerg_pressed (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _switch1_on
     (setq _switch1_on (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _switch2_on
     (setq _switch2_on (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _switch3_on
     (setq _switch3_on (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get lxind_msgs::RawBaseSensorData :md5sum-) "3a215546cf8369a7c4083a9a14c8c42a")
(setf (get lxind_msgs::RawBaseSensorData :datatype-) "lxind_msgs/RawBaseSensorData")
(setf (get lxind_msgs::RawBaseSensorData :definition-)
      "# raw values reported from base controller
Header header

int32 left_encoder
int32 right_encoder
float32 yaw
bool is_bumped
bool emerg_pressed

bool switch1_on
bool switch2_on
bool switch3_on
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



(provide :lxind_msgs/RawBaseSensorData "3a215546cf8369a7c4083a9a14c8c42a")


