;; Auto-generated. Do not edit!


(when (boundp 'lxind_msgs::SendElevCtrl)
  (if (not (find-package "LXIND_MSGS"))
    (make-package "LXIND_MSGS"))
  (shadow 'SendElevCtrl (find-package "LXIND_MSGS")))
(unless (find-package "LXIND_MSGS::SENDELEVCTRL")
  (make-package "LXIND_MSGS::SENDELEVCTRL"))
(unless (find-package "LXIND_MSGS::SENDELEVCTRLREQUEST")
  (make-package "LXIND_MSGS::SENDELEVCTRLREQUEST"))
(unless (find-package "LXIND_MSGS::SENDELEVCTRLRESPONSE")
  (make-package "LXIND_MSGS::SENDELEVCTRLRESPONSE"))

(in-package "ROS")





(intern "*ELEV_NOACTION*" (find-package "LXIND_MSGS::SENDELEVCTRLREQUEST"))
(shadow '*ELEV_NOACTION* (find-package "LXIND_MSGS::SENDELEVCTRLREQUEST"))
(defconstant lxind_msgs::SendElevCtrlRequest::*ELEV_NOACTION* 0)
(intern "*ELEV_UP*" (find-package "LXIND_MSGS::SENDELEVCTRLREQUEST"))
(shadow '*ELEV_UP* (find-package "LXIND_MSGS::SENDELEVCTRLREQUEST"))
(defconstant lxind_msgs::SendElevCtrlRequest::*ELEV_UP* 1)
(intern "*ELEV_DOWN*" (find-package "LXIND_MSGS::SENDELEVCTRLREQUEST"))
(shadow '*ELEV_DOWN* (find-package "LXIND_MSGS::SENDELEVCTRLREQUEST"))
(defconstant lxind_msgs::SendElevCtrlRequest::*ELEV_DOWN* 2)
(intern "*ELEV_STOP*" (find-package "LXIND_MSGS::SENDELEVCTRLREQUEST"))
(shadow '*ELEV_STOP* (find-package "LXIND_MSGS::SENDELEVCTRLREQUEST"))
(defconstant lxind_msgs::SendElevCtrlRequest::*ELEV_STOP* 3)
(intern "*ELEV_CLEAR*" (find-package "LXIND_MSGS::SENDELEVCTRLREQUEST"))
(shadow '*ELEV_CLEAR* (find-package "LXIND_MSGS::SENDELEVCTRLREQUEST"))
(defconstant lxind_msgs::SendElevCtrlRequest::*ELEV_CLEAR* 4)
(intern "*ELEV_RESET*" (find-package "LXIND_MSGS::SENDELEVCTRLREQUEST"))
(shadow '*ELEV_RESET* (find-package "LXIND_MSGS::SENDELEVCTRLREQUEST"))
(defconstant lxind_msgs::SendElevCtrlRequest::*ELEV_RESET* 5)
(defclass lxind_msgs::SendElevCtrlRequest
  :super ros::object
  :slots (_cmd ))

(defmethod lxind_msgs::SendElevCtrlRequest
  (:init
   (&key
    ((:cmd __cmd) 0)
    )
   (send-super :init)
   (setq _cmd (round __cmd))
   self)
  (:cmd
   (&optional __cmd)
   (if __cmd (setq _cmd __cmd)) _cmd)
  (:serialization-length
   ()
   (+
    ;; uint8 _cmd
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _cmd
       (write-byte _cmd s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _cmd
     (setq _cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass lxind_msgs::SendElevCtrlResponse
  :super ros::object
  :slots (_ret_msg ))

(defmethod lxind_msgs::SendElevCtrlResponse
  (:init
   (&key
    ((:ret_msg __ret_msg) "")
    )
   (send-super :init)
   (setq _ret_msg (string __ret_msg))
   self)
  (:ret_msg
   (&optional __ret_msg)
   (if __ret_msg (setq _ret_msg __ret_msg)) _ret_msg)
  (:serialization-length
   ()
   (+
    ;; string _ret_msg
    4 (length _ret_msg)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _ret_msg
       (write-long (length _ret_msg) s) (princ _ret_msg s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _ret_msg
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _ret_msg (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass lxind_msgs::SendElevCtrl
  :super ros::object
  :slots ())

(setf (get lxind_msgs::SendElevCtrl :md5sum-) "f5f151d913835fc1ca9ebf1643791e6c")
(setf (get lxind_msgs::SendElevCtrl :datatype-) "lxind_msgs/SendElevCtrl")
(setf (get lxind_msgs::SendElevCtrl :request) lxind_msgs::SendElevCtrlRequest)
(setf (get lxind_msgs::SendElevCtrl :response) lxind_msgs::SendElevCtrlResponse)

(defmethod lxind_msgs::SendElevCtrlRequest
  (:response () (instance lxind_msgs::SendElevCtrlResponse :init)))

(setf (get lxind_msgs::SendElevCtrlRequest :md5sum-) "f5f151d913835fc1ca9ebf1643791e6c")
(setf (get lxind_msgs::SendElevCtrlRequest :datatype-) "lxind_msgs/SendElevCtrlRequest")
(setf (get lxind_msgs::SendElevCtrlRequest :definition-)
      "uint8 ELEV_NOACTION = 0
uint8 ELEV_UP = 1
uint8 ELEV_DOWN = 2
uint8 ELEV_STOP = 3
uint8 ELEV_CLEAR = 4
uint8 ELEV_RESET = 5

uint8 cmd
---
string ret_msg
")

(setf (get lxind_msgs::SendElevCtrlResponse :md5sum-) "f5f151d913835fc1ca9ebf1643791e6c")
(setf (get lxind_msgs::SendElevCtrlResponse :datatype-) "lxind_msgs/SendElevCtrlResponse")
(setf (get lxind_msgs::SendElevCtrlResponse :definition-)
      "uint8 ELEV_NOACTION = 0
uint8 ELEV_UP = 1
uint8 ELEV_DOWN = 2
uint8 ELEV_STOP = 3
uint8 ELEV_CLEAR = 4
uint8 ELEV_RESET = 5

uint8 cmd
---
string ret_msg
")



(provide :lxind_msgs/SendElevCtrl "f5f151d913835fc1ca9ebf1643791e6c")


