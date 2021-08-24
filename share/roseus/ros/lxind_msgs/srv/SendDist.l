;; Auto-generated. Do not edit!


(when (boundp 'lxind_msgs::SendDist)
  (if (not (find-package "LXIND_MSGS"))
    (make-package "LXIND_MSGS"))
  (shadow 'SendDist (find-package "LXIND_MSGS")))
(unless (find-package "LXIND_MSGS::SENDDIST")
  (make-package "LXIND_MSGS::SENDDIST"))
(unless (find-package "LXIND_MSGS::SENDDISTREQUEST")
  (make-package "LXIND_MSGS::SENDDISTREQUEST"))
(unless (find-package "LXIND_MSGS::SENDDISTRESPONSE")
  (make-package "LXIND_MSGS::SENDDISTRESPONSE"))

(in-package "ROS")





(defclass lxind_msgs::SendDistRequest
  :super ros::object
  :slots (_distance ))

(defmethod lxind_msgs::SendDistRequest
  (:init
   (&key
    ((:distance __distance) 0.0)
    )
   (send-super :init)
   (setq _distance (float __distance))
   self)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:serialization-length
   ()
   (+
    ;; float64 _distance
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _distance
       (sys::poke _distance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _distance
     (setq _distance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass lxind_msgs::SendDistResponse
  :super ros::object
  :slots ())

(defmethod lxind_msgs::SendDistResponse
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

(defclass lxind_msgs::SendDist
  :super ros::object
  :slots ())

(setf (get lxind_msgs::SendDist :md5sum-) "acff7fda0c683c872875f5c4b069f124")
(setf (get lxind_msgs::SendDist :datatype-) "lxind_msgs/SendDist")
(setf (get lxind_msgs::SendDist :request) lxind_msgs::SendDistRequest)
(setf (get lxind_msgs::SendDist :response) lxind_msgs::SendDistResponse)

(defmethod lxind_msgs::SendDistRequest
  (:response () (instance lxind_msgs::SendDistResponse :init)))

(setf (get lxind_msgs::SendDistRequest :md5sum-) "acff7fda0c683c872875f5c4b069f124")
(setf (get lxind_msgs::SendDistRequest :datatype-) "lxind_msgs/SendDistRequest")
(setf (get lxind_msgs::SendDistRequest :definition-)
      "float64 distance
---

")

(setf (get lxind_msgs::SendDistResponse :md5sum-) "acff7fda0c683c872875f5c4b069f124")
(setf (get lxind_msgs::SendDistResponse :datatype-) "lxind_msgs/SendDistResponse")
(setf (get lxind_msgs::SendDistResponse :definition-)
      "float64 distance
---

")



(provide :lxind_msgs/SendDist "acff7fda0c683c872875f5c4b069f124")


