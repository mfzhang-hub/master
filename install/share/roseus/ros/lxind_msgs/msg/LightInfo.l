;; Auto-generated. Do not edit!


(when (boundp 'lxind_msgs::LightInfo)
  (if (not (find-package "LXIND_MSGS"))
    (make-package "LXIND_MSGS"))
  (shadow 'LightInfo (find-package "LXIND_MSGS")))
(unless (find-package "LXIND_MSGS::LIGHTINFO")
  (make-package "LXIND_MSGS::LIGHTINFO"))

(in-package "ROS")
;;//! \htmlinclude LightInfo.msg.html


(intern "*LIGHT_ALARM*" (find-package "LXIND_MSGS::LIGHTINFO"))
(shadow '*LIGHT_ALARM* (find-package "LXIND_MSGS::LIGHTINFO"))
(defconstant lxind_msgs::LightInfo::*LIGHT_ALARM* 7)
(intern "*LIGHT_CHARGING*" (find-package "LXIND_MSGS::LIGHTINFO"))
(shadow '*LIGHT_CHARGING* (find-package "LXIND_MSGS::LIGHTINFO"))
(defconstant lxind_msgs::LightInfo::*LIGHT_CHARGING* 8)
(intern "*LIGHT_NORMAL*" (find-package "LXIND_MSGS::LIGHTINFO"))
(shadow '*LIGHT_NORMAL* (find-package "LXIND_MSGS::LIGHTINFO"))
(defconstant lxind_msgs::LightInfo::*LIGHT_NORMAL* 9)
(intern "*LIGHT_AWAITING*" (find-package "LXIND_MSGS::LIGHTINFO"))
(shadow '*LIGHT_AWAITING* (find-package "LXIND_MSGS::LIGHTINFO"))
(defconstant lxind_msgs::LightInfo::*LIGHT_AWAITING* 10)
(defclass lxind_msgs::LightInfo
  :super ros::object
  :slots (_light_code ))

(defmethod lxind_msgs::LightInfo
  (:init
   (&key
    ((:light_code __light_code) 0)
    )
   (send-super :init)
   (setq _light_code (round __light_code))
   self)
  (:light_code
   (&optional __light_code)
   (if __light_code (setq _light_code __light_code)) _light_code)
  (:serialization-length
   ()
   (+
    ;; uint8 _light_code
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _light_code
       (write-byte _light_code s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _light_code
     (setq _light_code (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get lxind_msgs::LightInfo :md5sum-) "04bae1331d5d0ba1a60c262ecb8137fa")
(setf (get lxind_msgs::LightInfo :datatype-) "lxind_msgs/LightInfo")
(setf (get lxind_msgs::LightInfo :definition-)
      "uint8 LIGHT_ALARM = 7
uint8 LIGHT_CHARGING = 8
uint8 LIGHT_NORMAL = 9
uint8 LIGHT_AWAITING = 10


uint8 light_code
")



(provide :lxind_msgs/LightInfo "04bae1331d5d0ba1a60c262ecb8137fa")


