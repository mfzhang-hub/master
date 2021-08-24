;; Auto-generated. Do not edit!


(when (boundp 'ifm3d::Config)
  (if (not (find-package "IFM3D"))
    (make-package "IFM3D"))
  (shadow 'Config (find-package "IFM3D")))
(unless (find-package "IFM3D::CONFIG")
  (make-package "IFM3D::CONFIG"))
(unless (find-package "IFM3D::CONFIGREQUEST")
  (make-package "IFM3D::CONFIGREQUEST"))
(unless (find-package "IFM3D::CONFIGRESPONSE")
  (make-package "IFM3D::CONFIGRESPONSE"))

(in-package "ROS")





(defclass ifm3d::ConfigRequest
  :super ros::object
  :slots (_json ))

(defmethod ifm3d::ConfigRequest
  (:init
   (&key
    ((:json __json) "")
    )
   (send-super :init)
   (setq _json (string __json))
   self)
  (:json
   (&optional __json)
   (if __json (setq _json __json)) _json)
  (:serialization-length
   ()
   (+
    ;; string _json
    4 (length _json)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _json
       (write-long (length _json) s) (princ _json s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _json
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _json (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass ifm3d::ConfigResponse
  :super ros::object
  :slots (_status _msg ))

(defmethod ifm3d::ConfigResponse
  (:init
   (&key
    ((:status __status) 0)
    ((:msg __msg) "")
    )
   (send-super :init)
   (setq _status (round __status))
   (setq _msg (string __msg))
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:msg
   (&optional __msg)
   (if __msg (setq _msg __msg)) _msg)
  (:serialization-length
   ()
   (+
    ;; int32 _status
    4
    ;; string _msg
    4 (length _msg)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _status
       (write-long _status s)
     ;; string _msg
       (write-long (length _msg) s) (princ _msg s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _status
     (setq _status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _msg
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _msg (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass ifm3d::Config
  :super ros::object
  :slots ())

(setf (get ifm3d::Config :md5sum-) "2ae3559b462614ae239cd0372f7a82af")
(setf (get ifm3d::Config :datatype-) "ifm3d/Config")
(setf (get ifm3d::Config :request) ifm3d::ConfigRequest)
(setf (get ifm3d::Config :response) ifm3d::ConfigResponse)

(defmethod ifm3d::ConfigRequest
  (:response () (instance ifm3d::ConfigResponse :init)))

(setf (get ifm3d::ConfigRequest :md5sum-) "2ae3559b462614ae239cd0372f7a82af")
(setf (get ifm3d::ConfigRequest :datatype-) "ifm3d/ConfigRequest")
(setf (get ifm3d::ConfigRequest :definition-)
      "string json
---
int32 status
string msg

")

(setf (get ifm3d::ConfigResponse :md5sum-) "2ae3559b462614ae239cd0372f7a82af")
(setf (get ifm3d::ConfigResponse :datatype-) "ifm3d/ConfigResponse")
(setf (get ifm3d::ConfigResponse :definition-)
      "string json
---
int32 status
string msg

")



(provide :ifm3d/Config "2ae3559b462614ae239cd0372f7a82af")


