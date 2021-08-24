; Auto-generated. Do not edit!


(cl:in-package lxind_msgs-srv)


;//! \htmlinclude image-request.msg.html

(cl:defclass <image-request> (roslisp-msg-protocol:ros-message)
  ((get_image
    :reader get_image
    :initarg :get_image
    :type cl:integer
    :initform 0))
)

(cl:defclass image-request (<image-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <image-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'image-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lxind_msgs-srv:<image-request> is deprecated: use lxind_msgs-srv:image-request instead.")))

(cl:ensure-generic-function 'get_image-val :lambda-list '(m))
(cl:defmethod get_image-val ((m <image-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-srv:get_image-val is deprecated.  Use lxind_msgs-srv:get_image instead.")
  (get_image m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <image-request>) ostream)
  "Serializes a message object of type '<image-request>"
  (cl:let* ((signed (cl:slot-value msg 'get_image)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <image-request>) istream)
  "Deserializes a message object of type '<image-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'get_image) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<image-request>)))
  "Returns string type for a service object of type '<image-request>"
  "lxind_msgs/imageRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'image-request)))
  "Returns string type for a service object of type 'image-request"
  "lxind_msgs/imageRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<image-request>)))
  "Returns md5sum for a message object of type '<image-request>"
  "b23513ba12c260b320c4ce474701b6c5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'image-request)))
  "Returns md5sum for a message object of type 'image-request"
  "b23513ba12c260b320c4ce474701b6c5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<image-request>)))
  "Returns full string definition for message of type '<image-request>"
  (cl:format cl:nil "int64 get_image~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'image-request)))
  "Returns full string definition for message of type 'image-request"
  (cl:format cl:nil "int64 get_image~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <image-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <image-request>))
  "Converts a ROS message object to a list"
  (cl:list 'image-request
    (cl:cons ':get_image (get_image msg))
))
;//! \htmlinclude image-response.msg.html

(cl:defclass <image-response> (roslisp-msg-protocol:ros-message)
  ((image
    :reader image
    :initarg :image
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image)))
)

(cl:defclass image-response (<image-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <image-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'image-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lxind_msgs-srv:<image-response> is deprecated: use lxind_msgs-srv:image-response instead.")))

(cl:ensure-generic-function 'image-val :lambda-list '(m))
(cl:defmethod image-val ((m <image-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-srv:image-val is deprecated.  Use lxind_msgs-srv:image instead.")
  (image m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <image-response>) ostream)
  "Serializes a message object of type '<image-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'image) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <image-response>) istream)
  "Deserializes a message object of type '<image-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'image) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<image-response>)))
  "Returns string type for a service object of type '<image-response>"
  "lxind_msgs/imageResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'image-response)))
  "Returns string type for a service object of type 'image-response"
  "lxind_msgs/imageResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<image-response>)))
  "Returns md5sum for a message object of type '<image-response>"
  "b23513ba12c260b320c4ce474701b6c5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'image-response)))
  "Returns md5sum for a message object of type 'image-response"
  "b23513ba12c260b320c4ce474701b6c5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<image-response>)))
  "Returns full string definition for message of type '<image-response>"
  (cl:format cl:nil "sensor_msgs/Image image~%~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of cameara~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'image-response)))
  "Returns full string definition for message of type 'image-response"
  (cl:format cl:nil "sensor_msgs/Image image~%~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of cameara~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <image-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'image))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <image-response>))
  "Converts a ROS message object to a list"
  (cl:list 'image-response
    (cl:cons ':image (image msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'image)))
  'image-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'image)))
  'image-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'image)))
  "Returns string type for a service object of type '<image>"
  "lxind_msgs/image")