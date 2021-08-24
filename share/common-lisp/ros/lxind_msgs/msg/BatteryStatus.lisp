; Auto-generated. Do not edit!


(cl:in-package lxind_msgs-msg)


;//! \htmlinclude BatteryStatus.msg.html

(cl:defclass <BatteryStatus> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (voltage
    :reader voltage
    :initarg :voltage
    :type cl:fixnum
    :initform 0)
   (current
    :reader current
    :initarg :current
    :type cl:fixnum
    :initform 0)
   (remain_bat
    :reader remain_bat
    :initarg :remain_bat
    :type cl:fixnum
    :initform 0)
   (full_bat
    :reader full_bat
    :initarg :full_bat
    :type cl:fixnum
    :initform 0)
   (cell_volt
    :reader cell_volt
    :initarg :cell_volt
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (tempterature
    :reader tempterature
    :initarg :tempterature
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (batt_cycle
    :reader batt_cycle
    :initarg :batt_cycle
    :type cl:fixnum
    :initform 0)
   (design_capacity
    :reader design_capacity
    :initarg :design_capacity
    :type cl:fixnum
    :initform 0)
   (remaining_percentage
    :reader remaining_percentage
    :initarg :remaining_percentage
    :type cl:fixnum
    :initform 0)
   (is_charging
    :reader is_charging
    :initarg :is_charging
    :type cl:boolean
    :initform cl:nil)
   (is_battery_low
    :reader is_battery_low
    :initarg :is_battery_low
    :type cl:boolean
    :initform cl:nil)
   (is_battery_full
    :reader is_battery_full
    :initarg :is_battery_full
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass BatteryStatus (<BatteryStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BatteryStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BatteryStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lxind_msgs-msg:<BatteryStatus> is deprecated: use lxind_msgs-msg:BatteryStatus instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <BatteryStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-msg:header-val is deprecated.  Use lxind_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'voltage-val :lambda-list '(m))
(cl:defmethod voltage-val ((m <BatteryStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-msg:voltage-val is deprecated.  Use lxind_msgs-msg:voltage instead.")
  (voltage m))

(cl:ensure-generic-function 'current-val :lambda-list '(m))
(cl:defmethod current-val ((m <BatteryStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-msg:current-val is deprecated.  Use lxind_msgs-msg:current instead.")
  (current m))

(cl:ensure-generic-function 'remain_bat-val :lambda-list '(m))
(cl:defmethod remain_bat-val ((m <BatteryStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-msg:remain_bat-val is deprecated.  Use lxind_msgs-msg:remain_bat instead.")
  (remain_bat m))

(cl:ensure-generic-function 'full_bat-val :lambda-list '(m))
(cl:defmethod full_bat-val ((m <BatteryStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-msg:full_bat-val is deprecated.  Use lxind_msgs-msg:full_bat instead.")
  (full_bat m))

(cl:ensure-generic-function 'cell_volt-val :lambda-list '(m))
(cl:defmethod cell_volt-val ((m <BatteryStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-msg:cell_volt-val is deprecated.  Use lxind_msgs-msg:cell_volt instead.")
  (cell_volt m))

(cl:ensure-generic-function 'tempterature-val :lambda-list '(m))
(cl:defmethod tempterature-val ((m <BatteryStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-msg:tempterature-val is deprecated.  Use lxind_msgs-msg:tempterature instead.")
  (tempterature m))

(cl:ensure-generic-function 'batt_cycle-val :lambda-list '(m))
(cl:defmethod batt_cycle-val ((m <BatteryStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-msg:batt_cycle-val is deprecated.  Use lxind_msgs-msg:batt_cycle instead.")
  (batt_cycle m))

(cl:ensure-generic-function 'design_capacity-val :lambda-list '(m))
(cl:defmethod design_capacity-val ((m <BatteryStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-msg:design_capacity-val is deprecated.  Use lxind_msgs-msg:design_capacity instead.")
  (design_capacity m))

(cl:ensure-generic-function 'remaining_percentage-val :lambda-list '(m))
(cl:defmethod remaining_percentage-val ((m <BatteryStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-msg:remaining_percentage-val is deprecated.  Use lxind_msgs-msg:remaining_percentage instead.")
  (remaining_percentage m))

(cl:ensure-generic-function 'is_charging-val :lambda-list '(m))
(cl:defmethod is_charging-val ((m <BatteryStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-msg:is_charging-val is deprecated.  Use lxind_msgs-msg:is_charging instead.")
  (is_charging m))

(cl:ensure-generic-function 'is_battery_low-val :lambda-list '(m))
(cl:defmethod is_battery_low-val ((m <BatteryStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-msg:is_battery_low-val is deprecated.  Use lxind_msgs-msg:is_battery_low instead.")
  (is_battery_low m))

(cl:ensure-generic-function 'is_battery_full-val :lambda-list '(m))
(cl:defmethod is_battery_full-val ((m <BatteryStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-msg:is_battery_full-val is deprecated.  Use lxind_msgs-msg:is_battery_full instead.")
  (is_battery_full m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BatteryStatus>) ostream)
  "Serializes a message object of type '<BatteryStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'voltage)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'voltage)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'current)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'remain_bat)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'remain_bat)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'full_bat)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'full_bat)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'cell_volt))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream))
   (cl:slot-value msg 'cell_volt))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'tempterature))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream))
   (cl:slot-value msg 'tempterature))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'batt_cycle)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'batt_cycle)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'design_capacity)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'design_capacity)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'remaining_percentage)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_charging) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_battery_low) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_battery_full) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BatteryStatus>) istream)
  "Deserializes a message object of type '<BatteryStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'voltage)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'voltage)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'current) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'remain_bat)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'remain_bat)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'full_bat)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'full_bat)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'cell_volt) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'cell_volt)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'tempterature) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'tempterature)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'batt_cycle)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'batt_cycle)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'design_capacity)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'design_capacity)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'remaining_percentage)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'is_charging) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_battery_low) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_battery_full) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BatteryStatus>)))
  "Returns string type for a message object of type '<BatteryStatus>"
  "lxind_msgs/BatteryStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BatteryStatus)))
  "Returns string type for a message object of type 'BatteryStatus"
  "lxind_msgs/BatteryStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BatteryStatus>)))
  "Returns md5sum for a message object of type '<BatteryStatus>"
  "8fbc40232ad20f60cddeccd180074b14")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BatteryStatus)))
  "Returns md5sum for a message object of type 'BatteryStatus"
  "8fbc40232ad20f60cddeccd180074b14")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BatteryStatus>)))
  "Returns full string definition for message of type '<BatteryStatus>"
  (cl:format cl:nil "Header header~%~%uint16 voltage~%int16 current~%~%uint16 remain_bat~%uint16 full_bat~%~%uint16[] cell_volt~%uint16[] tempterature~%uint16    batt_cycle~%uint16    design_capacity~%~%uint8 remaining_percentage ~%bool is_charging~%bool is_battery_low~%bool is_battery_full~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BatteryStatus)))
  "Returns full string definition for message of type 'BatteryStatus"
  (cl:format cl:nil "Header header~%~%uint16 voltage~%int16 current~%~%uint16 remain_bat~%uint16 full_bat~%~%uint16[] cell_volt~%uint16[] tempterature~%uint16    batt_cycle~%uint16    design_capacity~%~%uint8 remaining_percentage ~%bool is_charging~%bool is_battery_low~%bool is_battery_full~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BatteryStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     2
     2
     2
     2
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'cell_volt) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'tempterature) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
     2
     2
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BatteryStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'BatteryStatus
    (cl:cons ':header (header msg))
    (cl:cons ':voltage (voltage msg))
    (cl:cons ':current (current msg))
    (cl:cons ':remain_bat (remain_bat msg))
    (cl:cons ':full_bat (full_bat msg))
    (cl:cons ':cell_volt (cell_volt msg))
    (cl:cons ':tempterature (tempterature msg))
    (cl:cons ':batt_cycle (batt_cycle msg))
    (cl:cons ':design_capacity (design_capacity msg))
    (cl:cons ':remaining_percentage (remaining_percentage msg))
    (cl:cons ':is_charging (is_charging msg))
    (cl:cons ':is_battery_low (is_battery_low msg))
    (cl:cons ':is_battery_full (is_battery_full msg))
))
