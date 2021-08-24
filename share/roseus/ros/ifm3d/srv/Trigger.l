;; Auto-generated. Do not edit!


(when (boundp 'ifm3d::Trigger)
  (if (not (find-package "IFM3D"))
    (make-package "IFM3D"))
  (shadow 'Trigger (find-package "IFM3D")))
(unless (find-package "IFM3D::TRIGGER")
  (make-package "IFM3D::TRIGGER"))
(unless (find-package "IFM3D::TRIGGERREQUEST")
  (make-package "IFM3D::TRIGGERREQUEST"))
(unless (find-package "IFM3D::TRIGGERRESPONSE")
  (make-package "IFM3D::TRIGGERRESPONSE"))

(in-package "ROS")





(defclass ifm3d::TriggerRequest
  :super ros::object
  :slots ())

(defmethod ifm3d::TriggerRequest
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

(defclass ifm3d::TriggerResponse
  :super ros::object
  :slots (_status ))

(defmethod ifm3d::TriggerResponse
  (:init
   (&key
    ((:status __status) 0)
    )
   (send-super :init)
   (setq _status (round __status))
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; int32 _status
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _status
       (write-long _status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _status
     (setq _status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass ifm3d::Trigger
  :super ros::object
  :slots ())

(setf (get ifm3d::Trigger :md5sum-) "86791dcf1de997ec7de5a0de7e4dcfcc")
(setf (get ifm3d::Trigger :datatype-) "ifm3d/Trigger")
(setf (get ifm3d::Trigger :request) ifm3d::TriggerRequest)
(setf (get ifm3d::Trigger :response) ifm3d::TriggerResponse)

(defmethod ifm3d::TriggerRequest
  (:response () (instance ifm3d::TriggerResponse :init)))

(setf (get ifm3d::TriggerRequest :md5sum-) "86791dcf1de997ec7de5a0de7e4dcfcc")
(setf (get ifm3d::TriggerRequest :datatype-) "ifm3d/TriggerRequest")
(setf (get ifm3d::TriggerRequest :definition-)
      "---
int32 status

")

(setf (get ifm3d::TriggerResponse :md5sum-) "86791dcf1de997ec7de5a0de7e4dcfcc")
(setf (get ifm3d::TriggerResponse :datatype-) "ifm3d/TriggerResponse")
(setf (get ifm3d::TriggerResponse :definition-)
      "---
int32 status

")



(provide :ifm3d/Trigger "86791dcf1de997ec7de5a0de7e4dcfcc")


