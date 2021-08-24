;; Auto-generated. Do not edit!


(when (boundp 'lxind_msgs::SendInt)
  (if (not (find-package "LXIND_MSGS"))
    (make-package "LXIND_MSGS"))
  (shadow 'SendInt (find-package "LXIND_MSGS")))
(unless (find-package "LXIND_MSGS::SENDINT")
  (make-package "LXIND_MSGS::SENDINT"))
(unless (find-package "LXIND_MSGS::SENDINTREQUEST")
  (make-package "LXIND_MSGS::SENDINTREQUEST"))
(unless (find-package "LXIND_MSGS::SENDINTRESPONSE")
  (make-package "LXIND_MSGS::SENDINTRESPONSE"))

(in-package "ROS")





(defclass lxind_msgs::SendIntRequest
  :super ros::object
  :slots (_data ))

(defmethod lxind_msgs::SendIntRequest
  (:init
   (&key
    ((:data __data) 0)
    )
   (send-super :init)
   (setq _data (round __data))
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; int32 _data
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _data
       (write-long _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _data
     (setq _data (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass lxind_msgs::SendIntResponse
  :super ros::object
  :slots (_success ))

(defmethod lxind_msgs::SendIntResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass lxind_msgs::SendInt
  :super ros::object
  :slots ())

(setf (get lxind_msgs::SendInt :md5sum-) "65058a332cdf9eddf11f34077a0b92a4")
(setf (get lxind_msgs::SendInt :datatype-) "lxind_msgs/SendInt")
(setf (get lxind_msgs::SendInt :request) lxind_msgs::SendIntRequest)
(setf (get lxind_msgs::SendInt :response) lxind_msgs::SendIntResponse)

(defmethod lxind_msgs::SendIntRequest
  (:response () (instance lxind_msgs::SendIntResponse :init)))

(setf (get lxind_msgs::SendIntRequest :md5sum-) "65058a332cdf9eddf11f34077a0b92a4")
(setf (get lxind_msgs::SendIntRequest :datatype-) "lxind_msgs/SendIntRequest")
(setf (get lxind_msgs::SendIntRequest :definition-)
      "int32 data
---
bool success
")

(setf (get lxind_msgs::SendIntResponse :md5sum-) "65058a332cdf9eddf11f34077a0b92a4")
(setf (get lxind_msgs::SendIntResponse :datatype-) "lxind_msgs/SendIntResponse")
(setf (get lxind_msgs::SendIntResponse :definition-)
      "int32 data
---
bool success
")



(provide :lxind_msgs/SendInt "65058a332cdf9eddf11f34077a0b92a4")


