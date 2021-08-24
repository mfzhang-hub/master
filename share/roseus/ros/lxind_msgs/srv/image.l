;; Auto-generated. Do not edit!


(when (boundp 'lxind_msgs::image)
  (if (not (find-package "LXIND_MSGS"))
    (make-package "LXIND_MSGS"))
  (shadow 'image (find-package "LXIND_MSGS")))
(unless (find-package "LXIND_MSGS::IMAGE")
  (make-package "LXIND_MSGS::IMAGE"))
(unless (find-package "LXIND_MSGS::IMAGEREQUEST")
  (make-package "LXIND_MSGS::IMAGEREQUEST"))
(unless (find-package "LXIND_MSGS::IMAGERESPONSE")
  (make-package "LXIND_MSGS::IMAGERESPONSE"))

(in-package "ROS")



(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass lxind_msgs::imageRequest
  :super ros::object
  :slots (_get_image ))

(defmethod lxind_msgs::imageRequest
  (:init
   (&key
    ((:get_image __get_image) 0)
    )
   (send-super :init)
   (setq _get_image (round __get_image))
   self)
  (:get_image
   (&optional __get_image)
   (if __get_image (setq _get_image __get_image)) _get_image)
  (:serialization-length
   ()
   (+
    ;; int64 _get_image
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _get_image
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _get_image (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _get_image) (= (length (_get_image . bv)) 2)) ;; bignum
              (write-long (ash (elt (_get_image . bv) 0) 0) s)
              (write-long (ash (elt (_get_image . bv) 1) -1) s))
             ((and (class _get_image) (= (length (_get_image . bv)) 1)) ;; big1
              (write-long (elt (_get_image . bv) 0) s)
              (write-long (if (>= _get_image 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _get_image s)(write-long (if (>= _get_image 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _get_image
#+(or :alpha :irix6 :x86_64)
      (setf _get_image (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _get_image (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass lxind_msgs::imageResponse
  :super ros::object
  :slots (_image ))

(defmethod lxind_msgs::imageResponse
  (:init
   (&key
    ((:image __image) (instance sensor_msgs::Image :init))
    )
   (send-super :init)
   (setq _image __image)
   self)
  (:image
   (&rest __image)
   (if (keywordp (car __image))
       (send* _image __image)
     (progn
       (if __image (setq _image (car __image)))
       _image)))
  (:serialization-length
   ()
   (+
    ;; sensor_msgs/Image _image
    (send _image :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/Image _image
       (send _image :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/Image _image
     (send _image :deserialize buf ptr-) (incf ptr- (send _image :serialization-length))
   ;;
   self)
  )

(defclass lxind_msgs::image
  :super ros::object
  :slots ())

(setf (get lxind_msgs::image :md5sum-) "b23513ba12c260b320c4ce474701b6c5")
(setf (get lxind_msgs::image :datatype-) "lxind_msgs/image")
(setf (get lxind_msgs::image :request) lxind_msgs::imageRequest)
(setf (get lxind_msgs::image :response) lxind_msgs::imageResponse)

(defmethod lxind_msgs::imageRequest
  (:response () (instance lxind_msgs::imageResponse :init)))

(setf (get lxind_msgs::imageRequest :md5sum-) "b23513ba12c260b320c4ce474701b6c5")
(setf (get lxind_msgs::imageRequest :datatype-) "lxind_msgs/imageRequest")
(setf (get lxind_msgs::imageRequest :definition-)
      "int64 get_image
---
sensor_msgs/Image image


================================================================================
MSG: sensor_msgs/Image
# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of cameara
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)

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

(setf (get lxind_msgs::imageResponse :md5sum-) "b23513ba12c260b320c4ce474701b6c5")
(setf (get lxind_msgs::imageResponse :datatype-) "lxind_msgs/imageResponse")
(setf (get lxind_msgs::imageResponse :definition-)
      "int64 get_image
---
sensor_msgs/Image image


================================================================================
MSG: sensor_msgs/Image
# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of cameara
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)

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



(provide :lxind_msgs/image "b23513ba12c260b320c4ce474701b6c5")


