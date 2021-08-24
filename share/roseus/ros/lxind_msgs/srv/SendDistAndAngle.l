;; Auto-generated. Do not edit!


(when (boundp 'lxind_msgs::SendDistAndAngle)
  (if (not (find-package "LXIND_MSGS"))
    (make-package "LXIND_MSGS"))
  (shadow 'SendDistAndAngle (find-package "LXIND_MSGS")))
(unless (find-package "LXIND_MSGS::SENDDISTANDANGLE")
  (make-package "LXIND_MSGS::SENDDISTANDANGLE"))
(unless (find-package "LXIND_MSGS::SENDDISTANDANGLEREQUEST")
  (make-package "LXIND_MSGS::SENDDISTANDANGLEREQUEST"))
(unless (find-package "LXIND_MSGS::SENDDISTANDANGLERESPONSE")
  (make-package "LXIND_MSGS::SENDDISTANDANGLERESPONSE"))

(in-package "ROS")





(defclass lxind_msgs::SendDistAndAngleRequest
  :super ros::object
  :slots (_distance _angle ))

(defmethod lxind_msgs::SendDistAndAngleRequest
  (:init
   (&key
    ((:distance __distance) 0.0)
    ((:angle __angle) 0.0)
    )
   (send-super :init)
   (setq _distance (float __distance))
   (setq _angle (float __angle))
   self)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:angle
   (&optional __angle)
   (if __angle (setq _angle __angle)) _angle)
  (:serialization-length
   ()
   (+
    ;; float64 _distance
    8
    ;; float64 _angle
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _distance
       (sys::poke _distance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _angle
       (sys::poke _angle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _distance
     (setq _distance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _angle
     (setq _angle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass lxind_msgs::SendDistAndAngleResponse
  :super ros::object
  :slots ())

(defmethod lxind_msgs::SendDistAndAngleResponse
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

(defclass lxind_msgs::SendDistAndAngle
  :super ros::object
  :slots ())

(setf (get lxind_msgs::SendDistAndAngle :md5sum-) "1f1d53743f4592ee455aa3eaf9019457")
(setf (get lxind_msgs::SendDistAndAngle :datatype-) "lxind_msgs/SendDistAndAngle")
(setf (get lxind_msgs::SendDistAndAngle :request) lxind_msgs::SendDistAndAngleRequest)
(setf (get lxind_msgs::SendDistAndAngle :response) lxind_msgs::SendDistAndAngleResponse)

(defmethod lxind_msgs::SendDistAndAngleRequest
  (:response () (instance lxind_msgs::SendDistAndAngleResponse :init)))

(setf (get lxind_msgs::SendDistAndAngleRequest :md5sum-) "1f1d53743f4592ee455aa3eaf9019457")
(setf (get lxind_msgs::SendDistAndAngleRequest :datatype-) "lxind_msgs/SendDistAndAngleRequest")
(setf (get lxind_msgs::SendDistAndAngleRequest :definition-)
      "float64 distance
float64 angle
---

")

(setf (get lxind_msgs::SendDistAndAngleResponse :md5sum-) "1f1d53743f4592ee455aa3eaf9019457")
(setf (get lxind_msgs::SendDistAndAngleResponse :datatype-) "lxind_msgs/SendDistAndAngleResponse")
(setf (get lxind_msgs::SendDistAndAngleResponse :definition-)
      "float64 distance
float64 angle
---

")



(provide :lxind_msgs/SendDistAndAngle "1f1d53743f4592ee455aa3eaf9019457")


