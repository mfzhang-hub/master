;; Auto-generated. Do not edit!


(when (boundp 'lxind_msgs::CertificateInfo)
  (if (not (find-package "LXIND_MSGS"))
    (make-package "LXIND_MSGS"))
  (shadow 'CertificateInfo (find-package "LXIND_MSGS")))
(unless (find-package "LXIND_MSGS::CERTIFICATEINFO")
  (make-package "LXIND_MSGS::CERTIFICATEINFO"))

(in-package "ROS")
;;//! \htmlinclude CertificateInfo.msg.html


(defclass lxind_msgs::CertificateInfo
  :super ros::object
  :slots (_info_type _info_detail ))

(defmethod lxind_msgs::CertificateInfo
  (:init
   (&key
    ((:info_type __info_type) "")
    ((:info_detail __info_detail) "")
    )
   (send-super :init)
   (setq _info_type (string __info_type))
   (setq _info_detail (string __info_detail))
   self)
  (:info_type
   (&optional __info_type)
   (if __info_type (setq _info_type __info_type)) _info_type)
  (:info_detail
   (&optional __info_detail)
   (if __info_detail (setq _info_detail __info_detail)) _info_detail)
  (:serialization-length
   ()
   (+
    ;; string _info_type
    4 (length _info_type)
    ;; string _info_detail
    4 (length _info_detail)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _info_type
       (write-long (length _info_type) s) (princ _info_type s)
     ;; string _info_detail
       (write-long (length _info_detail) s) (princ _info_detail s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _info_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _info_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _info_detail
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _info_detail (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get lxind_msgs::CertificateInfo :md5sum-) "6beea3a96ca34ec05821cc6a164f8ac7")
(setf (get lxind_msgs::CertificateInfo :datatype-) "lxind_msgs/CertificateInfo")
(setf (get lxind_msgs::CertificateInfo :definition-)
      "string info_type
string info_detail
")



(provide :lxind_msgs/CertificateInfo "6beea3a96ca34ec05821cc6a164f8ac7")


