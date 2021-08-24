;; Auto-generated. Do not edit!


(when (boundp 'ifm3d::Dump)
  (if (not (find-package "IFM3D"))
    (make-package "IFM3D"))
  (shadow 'Dump (find-package "IFM3D")))
(unless (find-package "IFM3D::DUMP")
  (make-package "IFM3D::DUMP"))
(unless (find-package "IFM3D::DUMPREQUEST")
  (make-package "IFM3D::DUMPREQUEST"))
(unless (find-package "IFM3D::DUMPRESPONSE")
  (make-package "IFM3D::DUMPRESPONSE"))

(in-package "ROS")





(defclass ifm3d::DumpRequest
  :super ros::object
  :slots ())

(defmethod ifm3d::DumpRequest
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

(defclass ifm3d::DumpResponse
  :super ros::object
  :slots (_status _config ))

(defmethod ifm3d::DumpResponse
  (:init
   (&key
    ((:status __status) 0)
    ((:config __config) "")
    )
   (send-super :init)
   (setq _status (round __status))
   (setq _config (string __config))
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:config
   (&optional __config)
   (if __config (setq _config __config)) _config)
  (:serialization-length
   ()
   (+
    ;; int32 _status
    4
    ;; string _config
    4 (length _config)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _status
       (write-long _status s)
     ;; string _config
       (write-long (length _config) s) (princ _config s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _status
     (setq _status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _config
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _config (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass ifm3d::Dump
  :super ros::object
  :slots ())

(setf (get ifm3d::Dump :md5sum-) "44475fe0541e5cf305abe53be7686d7a")
(setf (get ifm3d::Dump :datatype-) "ifm3d/Dump")
(setf (get ifm3d::Dump :request) ifm3d::DumpRequest)
(setf (get ifm3d::Dump :response) ifm3d::DumpResponse)

(defmethod ifm3d::DumpRequest
  (:response () (instance ifm3d::DumpResponse :init)))

(setf (get ifm3d::DumpRequest :md5sum-) "44475fe0541e5cf305abe53be7686d7a")
(setf (get ifm3d::DumpRequest :datatype-) "ifm3d/DumpRequest")
(setf (get ifm3d::DumpRequest :definition-)
      "---
int32 status
string config

")

(setf (get ifm3d::DumpResponse :md5sum-) "44475fe0541e5cf305abe53be7686d7a")
(setf (get ifm3d::DumpResponse :datatype-) "ifm3d/DumpResponse")
(setf (get ifm3d::DumpResponse :definition-)
      "---
int32 status
string config

")



(provide :ifm3d/Dump "44475fe0541e5cf305abe53be7686d7a")


