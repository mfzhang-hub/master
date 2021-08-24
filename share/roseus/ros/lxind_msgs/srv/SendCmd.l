;; Auto-generated. Do not edit!


(when (boundp 'lxind_msgs::SendCmd)
  (if (not (find-package "LXIND_MSGS"))
    (make-package "LXIND_MSGS"))
  (shadow 'SendCmd (find-package "LXIND_MSGS")))
(unless (find-package "LXIND_MSGS::SENDCMD")
  (make-package "LXIND_MSGS::SENDCMD"))
(unless (find-package "LXIND_MSGS::SENDCMDREQUEST")
  (make-package "LXIND_MSGS::SENDCMDREQUEST"))
(unless (find-package "LXIND_MSGS::SENDCMDRESPONSE")
  (make-package "LXIND_MSGS::SENDCMDRESPONSE"))

(in-package "ROS")





(defclass lxind_msgs::SendCmdRequest
  :super ros::object
  :slots (_cmd ))

(defmethod lxind_msgs::SendCmdRequest
  (:init
   (&key
    ((:cmd __cmd) "")
    )
   (send-super :init)
   (setq _cmd (string __cmd))
   self)
  (:cmd
   (&optional __cmd)
   (if __cmd (setq _cmd __cmd)) _cmd)
  (:serialization-length
   ()
   (+
    ;; string _cmd
    4 (length _cmd)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _cmd
       (write-long (length _cmd) s) (princ _cmd s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _cmd
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _cmd (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass lxind_msgs::SendCmdResponse
  :super ros::object
  :slots ())

(defmethod lxind_msgs::SendCmdResponse
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

(defclass lxind_msgs::SendCmd
  :super ros::object
  :slots ())

(setf (get lxind_msgs::SendCmd :md5sum-) "43a54fa49066cddcf148717d9d4a6353")
(setf (get lxind_msgs::SendCmd :datatype-) "lxind_msgs/SendCmd")
(setf (get lxind_msgs::SendCmd :request) lxind_msgs::SendCmdRequest)
(setf (get lxind_msgs::SendCmd :response) lxind_msgs::SendCmdResponse)

(defmethod lxind_msgs::SendCmdRequest
  (:response () (instance lxind_msgs::SendCmdResponse :init)))

(setf (get lxind_msgs::SendCmdRequest :md5sum-) "43a54fa49066cddcf148717d9d4a6353")
(setf (get lxind_msgs::SendCmdRequest :datatype-) "lxind_msgs/SendCmdRequest")
(setf (get lxind_msgs::SendCmdRequest :definition-)
      "string cmd
---

")

(setf (get lxind_msgs::SendCmdResponse :md5sum-) "43a54fa49066cddcf148717d9d4a6353")
(setf (get lxind_msgs::SendCmdResponse :datatype-) "lxind_msgs/SendCmdResponse")
(setf (get lxind_msgs::SendCmdResponse :definition-)
      "string cmd
---

")



(provide :lxind_msgs/SendCmd "43a54fa49066cddcf148717d9d4a6353")


