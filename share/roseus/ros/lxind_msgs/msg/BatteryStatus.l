;; Auto-generated. Do not edit!


(when (boundp 'lxind_msgs::BatteryStatus)
  (if (not (find-package "LXIND_MSGS"))
    (make-package "LXIND_MSGS"))
  (shadow 'BatteryStatus (find-package "LXIND_MSGS")))
(unless (find-package "LXIND_MSGS::BATTERYSTATUS")
  (make-package "LXIND_MSGS::BATTERYSTATUS"))

(in-package "ROS")
;;//! \htmlinclude BatteryStatus.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass lxind_msgs::BatteryStatus
  :super ros::object
  :slots (_header _voltage _current _remain_bat _full_bat _cell_volt _tempterature _batt_cycle _design_capacity _remaining_percentage _is_charging _is_battery_low _is_battery_full ))

(defmethod lxind_msgs::BatteryStatus
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:voltage __voltage) 0)
    ((:current __current) 0)
    ((:remain_bat __remain_bat) 0)
    ((:full_bat __full_bat) 0)
    ((:cell_volt __cell_volt) (make-array 0 :initial-element 0 :element-type :integer))
    ((:tempterature __tempterature) (make-array 0 :initial-element 0 :element-type :integer))
    ((:batt_cycle __batt_cycle) 0)
    ((:design_capacity __design_capacity) 0)
    ((:remaining_percentage __remaining_percentage) 0)
    ((:is_charging __is_charging) nil)
    ((:is_battery_low __is_battery_low) nil)
    ((:is_battery_full __is_battery_full) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _voltage (round __voltage))
   (setq _current (round __current))
   (setq _remain_bat (round __remain_bat))
   (setq _full_bat (round __full_bat))
   (setq _cell_volt __cell_volt)
   (setq _tempterature __tempterature)
   (setq _batt_cycle (round __batt_cycle))
   (setq _design_capacity (round __design_capacity))
   (setq _remaining_percentage (round __remaining_percentage))
   (setq _is_charging __is_charging)
   (setq _is_battery_low __is_battery_low)
   (setq _is_battery_full __is_battery_full)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:voltage
   (&optional __voltage)
   (if __voltage (setq _voltage __voltage)) _voltage)
  (:current
   (&optional __current)
   (if __current (setq _current __current)) _current)
  (:remain_bat
   (&optional __remain_bat)
   (if __remain_bat (setq _remain_bat __remain_bat)) _remain_bat)
  (:full_bat
   (&optional __full_bat)
   (if __full_bat (setq _full_bat __full_bat)) _full_bat)
  (:cell_volt
   (&optional __cell_volt)
   (if __cell_volt (setq _cell_volt __cell_volt)) _cell_volt)
  (:tempterature
   (&optional __tempterature)
   (if __tempterature (setq _tempterature __tempterature)) _tempterature)
  (:batt_cycle
   (&optional __batt_cycle)
   (if __batt_cycle (setq _batt_cycle __batt_cycle)) _batt_cycle)
  (:design_capacity
   (&optional __design_capacity)
   (if __design_capacity (setq _design_capacity __design_capacity)) _design_capacity)
  (:remaining_percentage
   (&optional __remaining_percentage)
   (if __remaining_percentage (setq _remaining_percentage __remaining_percentage)) _remaining_percentage)
  (:is_charging
   (&optional __is_charging)
   (if __is_charging (setq _is_charging __is_charging)) _is_charging)
  (:is_battery_low
   (&optional __is_battery_low)
   (if __is_battery_low (setq _is_battery_low __is_battery_low)) _is_battery_low)
  (:is_battery_full
   (&optional __is_battery_full)
   (if __is_battery_full (setq _is_battery_full __is_battery_full)) _is_battery_full)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint16 _voltage
    2
    ;; int16 _current
    2
    ;; uint16 _remain_bat
    2
    ;; uint16 _full_bat
    2
    ;; uint16[] _cell_volt
    (* 2    (length _cell_volt)) 4
    ;; uint16[] _tempterature
    (* 2    (length _tempterature)) 4
    ;; uint16 _batt_cycle
    2
    ;; uint16 _design_capacity
    2
    ;; uint8 _remaining_percentage
    1
    ;; bool _is_charging
    1
    ;; bool _is_battery_low
    1
    ;; bool _is_battery_full
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint16 _voltage
       (write-word _voltage s)
     ;; int16 _current
       (write-word _current s)
     ;; uint16 _remain_bat
       (write-word _remain_bat s)
     ;; uint16 _full_bat
       (write-word _full_bat s)
     ;; uint16[] _cell_volt
     (write-long (length _cell_volt) s)
     (dotimes (i (length _cell_volt))
       (write-word (elt _cell_volt i) s)
       )
     ;; uint16[] _tempterature
     (write-long (length _tempterature) s)
     (dotimes (i (length _tempterature))
       (write-word (elt _tempterature i) s)
       )
     ;; uint16 _batt_cycle
       (write-word _batt_cycle s)
     ;; uint16 _design_capacity
       (write-word _design_capacity s)
     ;; uint8 _remaining_percentage
       (write-byte _remaining_percentage s)
     ;; bool _is_charging
       (if _is_charging (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_battery_low
       (if _is_battery_low (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_battery_full
       (if _is_battery_full (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint16 _voltage
     (setq _voltage (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _current
     (setq _current (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _remain_bat
     (setq _remain_bat (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _full_bat
     (setq _full_bat (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16[] _cell_volt
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _cell_volt (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _cell_volt i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;; uint16[] _tempterature
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _tempterature (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _tempterature i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;; uint16 _batt_cycle
     (setq _batt_cycle (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _design_capacity
     (setq _design_capacity (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _remaining_percentage
     (setq _remaining_percentage (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _is_charging
     (setq _is_charging (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_battery_low
     (setq _is_battery_low (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_battery_full
     (setq _is_battery_full (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get lxind_msgs::BatteryStatus :md5sum-) "8fbc40232ad20f60cddeccd180074b14")
(setf (get lxind_msgs::BatteryStatus :datatype-) "lxind_msgs/BatteryStatus")
(setf (get lxind_msgs::BatteryStatus :definition-)
      "Header header

uint16 voltage
int16 current

uint16 remain_bat
uint16 full_bat

uint16[] cell_volt
uint16[] tempterature
uint16    batt_cycle
uint16    design_capacity

uint8 remaining_percentage 
bool is_charging
bool is_battery_low
bool is_battery_full
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



(provide :lxind_msgs/BatteryStatus "8fbc40232ad20f60cddeccd180074b14")


