;; Auto-generated. Do not edit!


(when (boundp 'lxind_msgs::MapMetaData)
  (if (not (find-package "LXIND_MSGS"))
    (make-package "LXIND_MSGS"))
  (shadow 'MapMetaData (find-package "LXIND_MSGS")))
(unless (find-package "LXIND_MSGS::MAPMETADATA")
  (make-package "LXIND_MSGS::MAPMETADATA"))

(in-package "ROS")
;;//! \htmlinclude MapMetaData.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass lxind_msgs::MapMetaData
  :super ros::object
  :slots (_map_name _map_path_prefix _width _height _origin _resolution _is_switched_map _initial_pose ))

(defmethod lxind_msgs::MapMetaData
  (:init
   (&key
    ((:map_name __map_name) "")
    ((:map_path_prefix __map_path_prefix) "")
    ((:width __width) 0)
    ((:height __height) 0)
    ((:origin __origin) (instance geometry_msgs::Pose :init))
    ((:resolution __resolution) 0.0)
    ((:is_switched_map __is_switched_map) nil)
    ((:initial_pose __initial_pose) (instance geometry_msgs::Pose2D :init))
    )
   (send-super :init)
   (setq _map_name (string __map_name))
   (setq _map_path_prefix (string __map_path_prefix))
   (setq _width (round __width))
   (setq _height (round __height))
   (setq _origin __origin)
   (setq _resolution (float __resolution))
   (setq _is_switched_map __is_switched_map)
   (setq _initial_pose __initial_pose)
   self)
  (:map_name
   (&optional __map_name)
   (if __map_name (setq _map_name __map_name)) _map_name)
  (:map_path_prefix
   (&optional __map_path_prefix)
   (if __map_path_prefix (setq _map_path_prefix __map_path_prefix)) _map_path_prefix)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:origin
   (&rest __origin)
   (if (keywordp (car __origin))
       (send* _origin __origin)
     (progn
       (if __origin (setq _origin (car __origin)))
       _origin)))
  (:resolution
   (&optional __resolution)
   (if __resolution (setq _resolution __resolution)) _resolution)
  (:is_switched_map
   (&optional __is_switched_map)
   (if __is_switched_map (setq _is_switched_map __is_switched_map)) _is_switched_map)
  (:initial_pose
   (&rest __initial_pose)
   (if (keywordp (car __initial_pose))
       (send* _initial_pose __initial_pose)
     (progn
       (if __initial_pose (setq _initial_pose (car __initial_pose)))
       _initial_pose)))
  (:serialization-length
   ()
   (+
    ;; string _map_name
    4 (length _map_name)
    ;; string _map_path_prefix
    4 (length _map_path_prefix)
    ;; uint32 _width
    4
    ;; uint32 _height
    4
    ;; geometry_msgs/Pose _origin
    (send _origin :serialization-length)
    ;; float32 _resolution
    4
    ;; bool _is_switched_map
    1
    ;; geometry_msgs/Pose2D _initial_pose
    (send _initial_pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _map_name
       (write-long (length _map_name) s) (princ _map_name s)
     ;; string _map_path_prefix
       (write-long (length _map_path_prefix) s) (princ _map_path_prefix s)
     ;; uint32 _width
       (write-long _width s)
     ;; uint32 _height
       (write-long _height s)
     ;; geometry_msgs/Pose _origin
       (send _origin :serialize s)
     ;; float32 _resolution
       (sys::poke _resolution (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _is_switched_map
       (if _is_switched_map (write-byte -1 s) (write-byte 0 s))
     ;; geometry_msgs/Pose2D _initial_pose
       (send _initial_pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _map_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _map_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _map_path_prefix
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _map_path_prefix (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint32 _width
     (setq _width (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _height
     (setq _height (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Pose _origin
     (send _origin :deserialize buf ptr-) (incf ptr- (send _origin :serialization-length))
   ;; float32 _resolution
     (setq _resolution (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _is_switched_map
     (setq _is_switched_map (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; geometry_msgs/Pose2D _initial_pose
     (send _initial_pose :deserialize buf ptr-) (incf ptr- (send _initial_pose :serialization-length))
   ;;
   self)
  )

(setf (get lxind_msgs::MapMetaData :md5sum-) "6bf1e47e51e46074d8693b0726c02fb3")
(setf (get lxind_msgs::MapMetaData :datatype-) "lxind_msgs/MapMetaData")
(setf (get lxind_msgs::MapMetaData :definition-)
      "# map name
string map_name             # map name, ex.outmzpick
string map_path_prefix      # path without suffix, ex: /home/fr1511b/lxind_ws/install/share/lxind_nav/maps/

# Map width [cells]
uint32 width
# Map height [cells]
uint32 height

# The origin of the map [m, m, rad].  This is the real-world pose of the
# cell (0,0) in the map.
geometry_msgs/Pose origin
float32 resolution


####################################################
bool is_switched_map             # 是否是切换地图 
geometry_msgs/Pose2D initial_pose  # 切换地图后的初始点
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

================================================================================
MSG: geometry_msgs/Pose2D
# This expresses a position and orientation on a 2D manifold.

float64 x
float64 y
float64 theta
")



(provide :lxind_msgs/MapMetaData "6bf1e47e51e46074d8693b0726c02fb3")


