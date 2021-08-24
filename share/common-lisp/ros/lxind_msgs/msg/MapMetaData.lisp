; Auto-generated. Do not edit!


(cl:in-package lxind_msgs-msg)


;//! \htmlinclude MapMetaData.msg.html

(cl:defclass <MapMetaData> (roslisp-msg-protocol:ros-message)
  ((map_name
    :reader map_name
    :initarg :map_name
    :type cl:string
    :initform "")
   (map_path_prefix
    :reader map_path_prefix
    :initarg :map_path_prefix
    :type cl:string
    :initform "")
   (width
    :reader width
    :initarg :width
    :type cl:integer
    :initform 0)
   (height
    :reader height
    :initarg :height
    :type cl:integer
    :initform 0)
   (origin
    :reader origin
    :initarg :origin
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (resolution
    :reader resolution
    :initarg :resolution
    :type cl:float
    :initform 0.0)
   (is_switched_map
    :reader is_switched_map
    :initarg :is_switched_map
    :type cl:boolean
    :initform cl:nil)
   (initial_pose
    :reader initial_pose
    :initarg :initial_pose
    :type geometry_msgs-msg:Pose2D
    :initform (cl:make-instance 'geometry_msgs-msg:Pose2D)))
)

(cl:defclass MapMetaData (<MapMetaData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MapMetaData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MapMetaData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lxind_msgs-msg:<MapMetaData> is deprecated: use lxind_msgs-msg:MapMetaData instead.")))

(cl:ensure-generic-function 'map_name-val :lambda-list '(m))
(cl:defmethod map_name-val ((m <MapMetaData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-msg:map_name-val is deprecated.  Use lxind_msgs-msg:map_name instead.")
  (map_name m))

(cl:ensure-generic-function 'map_path_prefix-val :lambda-list '(m))
(cl:defmethod map_path_prefix-val ((m <MapMetaData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-msg:map_path_prefix-val is deprecated.  Use lxind_msgs-msg:map_path_prefix instead.")
  (map_path_prefix m))

(cl:ensure-generic-function 'width-val :lambda-list '(m))
(cl:defmethod width-val ((m <MapMetaData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-msg:width-val is deprecated.  Use lxind_msgs-msg:width instead.")
  (width m))

(cl:ensure-generic-function 'height-val :lambda-list '(m))
(cl:defmethod height-val ((m <MapMetaData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-msg:height-val is deprecated.  Use lxind_msgs-msg:height instead.")
  (height m))

(cl:ensure-generic-function 'origin-val :lambda-list '(m))
(cl:defmethod origin-val ((m <MapMetaData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-msg:origin-val is deprecated.  Use lxind_msgs-msg:origin instead.")
  (origin m))

(cl:ensure-generic-function 'resolution-val :lambda-list '(m))
(cl:defmethod resolution-val ((m <MapMetaData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-msg:resolution-val is deprecated.  Use lxind_msgs-msg:resolution instead.")
  (resolution m))

(cl:ensure-generic-function 'is_switched_map-val :lambda-list '(m))
(cl:defmethod is_switched_map-val ((m <MapMetaData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-msg:is_switched_map-val is deprecated.  Use lxind_msgs-msg:is_switched_map instead.")
  (is_switched_map m))

(cl:ensure-generic-function 'initial_pose-val :lambda-list '(m))
(cl:defmethod initial_pose-val ((m <MapMetaData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-msg:initial_pose-val is deprecated.  Use lxind_msgs-msg:initial_pose instead.")
  (initial_pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MapMetaData>) ostream)
  "Serializes a message object of type '<MapMetaData>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'map_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'map_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'map_path_prefix))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'map_path_prefix))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'width)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'width)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'width)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'width)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'height)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'height)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'height)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'height)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'origin) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'resolution))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_switched_map) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'initial_pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MapMetaData>) istream)
  "Deserializes a message object of type '<MapMetaData>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'map_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'map_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'map_path_prefix) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'map_path_prefix) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'width)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'width)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'width)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'width)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'height)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'height)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'height)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'height)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'origin) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'resolution) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'is_switched_map) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'initial_pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MapMetaData>)))
  "Returns string type for a message object of type '<MapMetaData>"
  "lxind_msgs/MapMetaData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MapMetaData)))
  "Returns string type for a message object of type 'MapMetaData"
  "lxind_msgs/MapMetaData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MapMetaData>)))
  "Returns md5sum for a message object of type '<MapMetaData>"
  "6bf1e47e51e46074d8693b0726c02fb3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MapMetaData)))
  "Returns md5sum for a message object of type 'MapMetaData"
  "6bf1e47e51e46074d8693b0726c02fb3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MapMetaData>)))
  "Returns full string definition for message of type '<MapMetaData>"
  (cl:format cl:nil "# map name~%string map_name             # map name, ex.outmzpick~%string map_path_prefix      # path without suffix, ex: /home/fr1511b/lxind_ws/install/share/lxind_nav/maps/~%~%# Map width [cells]~%uint32 width~%# Map height [cells]~%uint32 height~%~%# The origin of the map [m, m, rad].  This is the real-world pose of the~%# cell (0,0) in the map.~%geometry_msgs/Pose origin~%float32 resolution~%~%~%####################################################~%bool is_switched_map             # 是否是切换地图 ~%geometry_msgs/Pose2D initial_pose  # 切换地图后的初始点~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MapMetaData)))
  "Returns full string definition for message of type 'MapMetaData"
  (cl:format cl:nil "# map name~%string map_name             # map name, ex.outmzpick~%string map_path_prefix      # path without suffix, ex: /home/fr1511b/lxind_ws/install/share/lxind_nav/maps/~%~%# Map width [cells]~%uint32 width~%# Map height [cells]~%uint32 height~%~%# The origin of the map [m, m, rad].  This is the real-world pose of the~%# cell (0,0) in the map.~%geometry_msgs/Pose origin~%float32 resolution~%~%~%####################################################~%bool is_switched_map             # 是否是切换地图 ~%geometry_msgs/Pose2D initial_pose  # 切换地图后的初始点~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MapMetaData>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'map_name))
     4 (cl:length (cl:slot-value msg 'map_path_prefix))
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'origin))
     4
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'initial_pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MapMetaData>))
  "Converts a ROS message object to a list"
  (cl:list 'MapMetaData
    (cl:cons ':map_name (map_name msg))
    (cl:cons ':map_path_prefix (map_path_prefix msg))
    (cl:cons ':width (width msg))
    (cl:cons ':height (height msg))
    (cl:cons ':origin (origin msg))
    (cl:cons ':resolution (resolution msg))
    (cl:cons ':is_switched_map (is_switched_map msg))
    (cl:cons ':initial_pose (initial_pose msg))
))
