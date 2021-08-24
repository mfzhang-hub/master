;; Auto-generated. Do not edit!


(when (boundp 'lxind_msgs::CertificateInfos)
  (if (not (find-package "LXIND_MSGS"))
    (make-package "LXIND_MSGS"))
  (shadow 'CertificateInfos (find-package "LXIND_MSGS")))
(unless (find-package "LXIND_MSGS::CERTIFICATEINFOS")
  (make-package "LXIND_MSGS::CERTIFICATEINFOS"))

(in-package "ROS")
;;//! \htmlinclude CertificateInfos.msg.html


(defclass lxind_msgs::CertificateInfos
  :super ros::object
  :slots (_infos ))

(defmethod lxind_msgs::CertificateInfos
  (:init
   (&key
    ((:infos __infos) (let (r) (dotimes (i 0) (push (instance lxind_msgs::CertificateInfo :init) r)) r))
    )
   (send-super :init)
   (setq _infos __infos)
   self)
  (:infos
   (&rest __infos)
   (if (keywordp (car __infos))
       (send* _infos __infos)
     (progn
       (if __infos (setq _infos (car __infos)))
       _infos)))
  (:serialization-length
   ()
   (+
    ;; lxind_msgs/CertificateInfo[] _infos
    (apply #'+ (send-all _infos :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; lxind_msgs/CertificateInfo[] _infos
     (write-long (length _infos) s)
     (dolist (elem _infos)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; lxind_msgs/CertificateInfo[] _infos
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _infos (let (r) (dotimes (i n) (push (instance lxind_msgs::CertificateInfo :init) r)) r))
     (dolist (elem- _infos)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get lxind_msgs::CertificateInfos :md5sum-) "86a25173dc2ad721a4f1ce4f2a9ec294")
(setf (get lxind_msgs::CertificateInfos :datatype-) "lxind_msgs/CertificateInfos")
(setf (get lxind_msgs::CertificateInfos :definition-)
      "
lxind_msgs/CertificateInfo[] infos
================================================================================
MSG: lxind_msgs/CertificateInfo
string info_type
string info_detail
")



(provide :lxind_msgs/CertificateInfos "86a25173dc2ad721a4f1ce4f2a9ec294")


