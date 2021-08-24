;; Auto-generated. Do not edit!


(when (boundp 'lxind_msgs::GetFootprintSize)
  (if (not (find-package "LXIND_MSGS"))
    (make-package "LXIND_MSGS"))
  (shadow 'GetFootprintSize (find-package "LXIND_MSGS")))
(unless (find-package "LXIND_MSGS::GETFOOTPRINTSIZE")
  (make-package "LXIND_MSGS::GETFOOTPRINTSIZE"))
(unless (find-package "LXIND_MSGS::GETFOOTPRINTSIZEREQUEST")
  (make-package "LXIND_MSGS::GETFOOTPRINTSIZEREQUEST"))
(unless (find-package "LXIND_MSGS::GETFOOTPRINTSIZERESPONSE")
  (make-package "LXIND_MSGS::GETFOOTPRINTSIZERESPONSE"))

(in-package "ROS")





(defclass lxind_msgs::GetFootprintSizeRequest
  :super ros::object
  :slots ())

(defmethod lxind_msgs::GetFootprintSizeRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass lxind_msgs::GetFootprintSizeResponse
  :super ros::object
  :slots (_width _height ))

(defmethod lxind_msgs::GetFootprintSizeResponse
  (:init
   (&key
    ((:width __width) 0.0)
    ((:height __height) 0.0)
    )
   (send-super :init)
   (setq _width (float __width))
   (setq _height (float __height))
   self)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:serialization-length
   ()
   (+
    ;; float64 _width
    8
    ;; float64 _height
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _width
       (sys::poke _width (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _height
       (sys::poke _height (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _width
     (setq _width (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _height
     (setq _height (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass lxind_msgs::GetFootprintSize
  :super ros::object
  :slots ())

(setf (get lxind_msgs::GetFootprintSize :md5sum-) "f86522e647336fb10b55359fe003f673")
(setf (get lxind_msgs::GetFootprintSize :datatype-) "lxind_msgs/GetFootprintSize")
(setf (get lxind_msgs::GetFootprintSize :request) lxind_msgs::GetFootprintSizeRequest)
(setf (get lxind_msgs::GetFootprintSize :response) lxind_msgs::GetFootprintSizeResponse)

(defmethod lxind_msgs::GetFootprintSizeRequest
  (:response () (instance lxind_msgs::GetFootprintSizeResponse :init)))

(setf (get lxind_msgs::GetFootprintSizeRequest :md5sum-) "f86522e647336fb10b55359fe003f673")
(setf (get lxind_msgs::GetFootprintSizeRequest :datatype-) "lxind_msgs/GetFootprintSizeRequest")
(setf (get lxind_msgs::GetFootprintSizeRequest :definition-)
      "---
float64 width
float64 height

")

(setf (get lxind_msgs::GetFootprintSizeResponse :md5sum-) "f86522e647336fb10b55359fe003f673")
(setf (get lxind_msgs::GetFootprintSizeResponse :datatype-) "lxind_msgs/GetFootprintSizeResponse")
(setf (get lxind_msgs::GetFootprintSizeResponse :definition-)
      "---
float64 width
float64 height

")



(provide :lxind_msgs/GetFootprintSize "f86522e647336fb10b55359fe003f673")


