;; Auto-generated. Do not edit!


(when (boundp 'lxind_msgs::ServerInfo)
  (if (not (find-package "LXIND_MSGS"))
    (make-package "LXIND_MSGS"))
  (shadow 'ServerInfo (find-package "LXIND_MSGS")))
(unless (find-package "LXIND_MSGS::SERVERINFO")
  (make-package "LXIND_MSGS::SERVERINFO"))

(in-package "ROS")
;;//! \htmlinclude ServerInfo.msg.html


(defclass lxind_msgs::ServerInfo
  :super ros::object
  :slots (_mode _server_name ))

(defmethod lxind_msgs::ServerInfo
  (:init
   (&key
    ((:mode __mode) 0)
    ((:server_name __server_name) "")
    )
   (send-super :init)
   (setq _mode (round __mode))
   (setq _server_name (string __server_name))
   self)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:server_name
   (&optional __server_name)
   (if __server_name (setq _server_name __server_name)) _server_name)
  (:serialization-length
   ()
   (+
    ;; int32 _mode
    4
    ;; string _server_name
    4 (length _server_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _mode
       (write-long _mode s)
     ;; string _server_name
       (write-long (length _server_name) s) (princ _server_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _mode
     (setq _mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _server_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _server_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get lxind_msgs::ServerInfo :md5sum-) "324d2f7cd1b2d4648d65da12545afb4f")
(setf (get lxind_msgs::ServerInfo :datatype-) "lxind_msgs/ServerInfo")
(setf (get lxind_msgs::ServerInfo :definition-)
      "int32  mode
string server_name

")



(provide :lxind_msgs/ServerInfo "324d2f7cd1b2d4648d65da12545afb4f")


