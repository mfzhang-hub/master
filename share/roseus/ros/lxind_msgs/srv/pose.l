;; Auto-generated. Do not edit!


(when (boundp 'lxind_msgs::pose)
  (if (not (find-package "LXIND_MSGS"))
    (make-package "LXIND_MSGS"))
  (shadow 'pose (find-package "LXIND_MSGS")))
(unless (find-package "LXIND_MSGS::POSE")
  (make-package "LXIND_MSGS::POSE"))
(unless (find-package "LXIND_MSGS::POSEREQUEST")
  (make-package "LXIND_MSGS::POSEREQUEST"))
(unless (find-package "LXIND_MSGS::POSERESPONSE")
  (make-package "LXIND_MSGS::POSERESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass lxind_msgs::poseRequest
  :super ros::object
  :slots (_get_pose _init_pose ))

(defmethod lxind_msgs::poseRequest
  (:init
   (&key
    ((:get_pose __get_pose) 0)
    ((:init_pose __init_pose) (instance geometry_msgs::PoseStamped :init))
    )
   (send-super :init)
   (setq _get_pose (round __get_pose))
   (setq _init_pose __init_pose)
   self)
  (:get_pose
   (&optional __get_pose)
   (if __get_pose (setq _get_pose __get_pose)) _get_pose)
  (:init_pose
   (&rest __init_pose)
   (if (keywordp (car __init_pose))
       (send* _init_pose __init_pose)
     (progn
       (if __init_pose (setq _init_pose (car __init_pose)))
       _init_pose)))
  (:serialization-length
   ()
   (+
    ;; int64 _get_pose
    8
    ;; geometry_msgs/PoseStamped _init_pose
    (send _init_pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _get_pose
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _get_pose (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _get_pose) (= (length (_get_pose . bv)) 2)) ;; bignum
              (write-long (ash (elt (_get_pose . bv) 0) 0) s)
              (write-long (ash (elt (_get_pose . bv) 1) -1) s))
             ((and (class _get_pose) (= (length (_get_pose . bv)) 1)) ;; big1
              (write-long (elt (_get_pose . bv) 0) s)
              (write-long (if (>= _get_pose 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _get_pose s)(write-long (if (>= _get_pose 0) 0 #xffffffff) s)))
     ;; geometry_msgs/PoseStamped _init_pose
       (send _init_pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _get_pose
#+(or :alpha :irix6 :x86_64)
      (setf _get_pose (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _get_pose (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; geometry_msgs/PoseStamped _init_pose
     (send _init_pose :deserialize buf ptr-) (incf ptr- (send _init_pose :serialization-length))
   ;;
   self)
  )

(defclass lxind_msgs::poseResponse
  :super ros::object
  :slots (_pose _success ))

(defmethod lxind_msgs::poseResponse
  (:init
   (&key
    ((:pose __pose) (instance geometry_msgs::PoseStamped :init))
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _pose __pose)
   (setq _success __success)
   self)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PoseStamped _pose
    (send _pose :serialization-length)
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PoseStamped _pose
       (send _pose :serialize s)
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PoseStamped _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass lxind_msgs::pose
  :super ros::object
  :slots ())

(setf (get lxind_msgs::pose :md5sum-) "2c6f431f1b0c52ae4c85948feb8a7704")
(setf (get lxind_msgs::pose :datatype-) "lxind_msgs/pose")
(setf (get lxind_msgs::pose :request) lxind_msgs::poseRequest)
(setf (get lxind_msgs::pose :response) lxind_msgs::poseResponse)

(defmethod lxind_msgs::poseRequest
  (:response () (instance lxind_msgs::poseResponse :init)))

(setf (get lxind_msgs::poseRequest :md5sum-) "2c6f431f1b0c52ae4c85948feb8a7704")
(setf (get lxind_msgs::poseRequest :datatype-) "lxind_msgs/poseRequest")
(setf (get lxind_msgs::poseRequest :definition-)
      "int64 get_pose
geometry_msgs/PoseStamped init_pose

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
geometry_msgs/PoseStamped pose
bool success


================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")

(setf (get lxind_msgs::poseResponse :md5sum-) "2c6f431f1b0c52ae4c85948feb8a7704")
(setf (get lxind_msgs::poseResponse :datatype-) "lxind_msgs/poseResponse")
(setf (get lxind_msgs::poseResponse :definition-)
      "int64 get_pose
geometry_msgs/PoseStamped init_pose

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
geometry_msgs/PoseStamped pose
bool success


================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")



(provide :lxind_msgs/pose "2c6f431f1b0c52ae4c85948feb8a7704")


