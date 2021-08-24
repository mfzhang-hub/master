;; Auto-generated. Do not edit!


(when (boundp 'ifm3d::Extrinsics)
  (if (not (find-package "IFM3D"))
    (make-package "IFM3D"))
  (shadow 'Extrinsics (find-package "IFM3D")))
(unless (find-package "IFM3D::EXTRINSICS")
  (make-package "IFM3D::EXTRINSICS"))

(in-package "ROS")
;;//! \htmlinclude Extrinsics.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ifm3d::Extrinsics
  :super ros::object
  :slots (_header _tx _ty _tz _rot_x _rot_y _rot_z ))

(defmethod ifm3d::Extrinsics
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:tx __tx) 0.0)
    ((:ty __ty) 0.0)
    ((:tz __tz) 0.0)
    ((:rot_x __rot_x) 0.0)
    ((:rot_y __rot_y) 0.0)
    ((:rot_z __rot_z) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _tx (float __tx))
   (setq _ty (float __ty))
   (setq _tz (float __tz))
   (setq _rot_x (float __rot_x))
   (setq _rot_y (float __rot_y))
   (setq _rot_z (float __rot_z))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:tx
   (&optional __tx)
   (if __tx (setq _tx __tx)) _tx)
  (:ty
   (&optional __ty)
   (if __ty (setq _ty __ty)) _ty)
  (:tz
   (&optional __tz)
   (if __tz (setq _tz __tz)) _tz)
  (:rot_x
   (&optional __rot_x)
   (if __rot_x (setq _rot_x __rot_x)) _rot_x)
  (:rot_y
   (&optional __rot_y)
   (if __rot_y (setq _rot_y __rot_y)) _rot_y)
  (:rot_z
   (&optional __rot_z)
   (if __rot_z (setq _rot_z __rot_z)) _rot_z)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _tx
    4
    ;; float32 _ty
    4
    ;; float32 _tz
    4
    ;; float32 _rot_x
    4
    ;; float32 _rot_y
    4
    ;; float32 _rot_z
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _tx
       (sys::poke _tx (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ty
       (sys::poke _ty (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _tz
       (sys::poke _tz (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _rot_x
       (sys::poke _rot_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _rot_y
       (sys::poke _rot_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _rot_z
       (sys::poke _rot_z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _tx
     (setq _tx (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ty
     (setq _ty (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _tz
     (setq _tz (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _rot_x
     (setq _rot_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _rot_y
     (setq _rot_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _rot_z
     (setq _rot_z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ifm3d::Extrinsics :md5sum-) "2176c8939b0ab4a10574dd0547818f0d")
(setf (get ifm3d::Extrinsics :datatype-) "ifm3d/Extrinsics")
(setf (get ifm3d::Extrinsics :definition-)
      "#
# Translation uints are mm, rotation units are degrees
#
std_msgs/Header header
float32 tx
float32 ty
float32 tz
float32 rot_x
float32 rot_y
float32 rot_z

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



(provide :ifm3d/Extrinsics "2176c8939b0ab4a10574dd0547818f0d")


