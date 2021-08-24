;; Auto-generated. Do not edit!


(when (boundp 'lxind_msgs::GetNavStatus)
  (if (not (find-package "LXIND_MSGS"))
    (make-package "LXIND_MSGS"))
  (shadow 'GetNavStatus (find-package "LXIND_MSGS")))
(unless (find-package "LXIND_MSGS::GETNAVSTATUS")
  (make-package "LXIND_MSGS::GETNAVSTATUS"))
(unless (find-package "LXIND_MSGS::GETNAVSTATUSREQUEST")
  (make-package "LXIND_MSGS::GETNAVSTATUSREQUEST"))
(unless (find-package "LXIND_MSGS::GETNAVSTATUSRESPONSE")
  (make-package "LXIND_MSGS::GETNAVSTATUSRESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass lxind_msgs::GetNavStatusRequest
  :super ros::object
  :slots ())

(defmethod lxind_msgs::GetNavStatusRequest
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

(intern "*GOAL_NOT_REACHED*" (find-package "LXIND_MSGS::GETNAVSTATUSRESPONSE"))
(shadow '*GOAL_NOT_REACHED* (find-package "LXIND_MSGS::GETNAVSTATUSRESPONSE"))
(defconstant lxind_msgs::GetNavStatusResponse::*GOAL_NOT_REACHED* 0)
(intern "*GOAL_REACHED*" (find-package "LXIND_MSGS::GETNAVSTATUSRESPONSE"))
(shadow '*GOAL_REACHED* (find-package "LXIND_MSGS::GETNAVSTATUSRESPONSE"))
(defconstant lxind_msgs::GetNavStatusResponse::*GOAL_REACHED* 1)
(intern "*GOAL_APPROACHING*" (find-package "LXIND_MSGS::GETNAVSTATUSRESPONSE"))
(shadow '*GOAL_APPROACHING* (find-package "LXIND_MSGS::GETNAVSTATUSRESPONSE"))
(defconstant lxind_msgs::GetNavStatusResponse::*GOAL_APPROACHING* 2)
(intern "*STATE_ADJUST*" (find-package "LXIND_MSGS::GETNAVSTATUSRESPONSE"))
(shadow '*STATE_ADJUST* (find-package "LXIND_MSGS::GETNAVSTATUSRESPONSE"))
(defconstant lxind_msgs::GetNavStatusResponse::*STATE_ADJUST* 0)
(intern "*STATE_WAIT*" (find-package "LXIND_MSGS::GETNAVSTATUSRESPONSE"))
(shadow '*STATE_WAIT* (find-package "LXIND_MSGS::GETNAVSTATUSRESPONSE"))
(defconstant lxind_msgs::GetNavStatusResponse::*STATE_WAIT* 1)
(intern "*STATE_FORWARD*" (find-package "LXIND_MSGS::GETNAVSTATUSRESPONSE"))
(shadow '*STATE_FORWARD* (find-package "LXIND_MSGS::GETNAVSTATUSRESPONSE"))
(defconstant lxind_msgs::GetNavStatusResponse::*STATE_FORWARD* 2)
(intern "*STATE_FINISHED*" (find-package "LXIND_MSGS::GETNAVSTATUSRESPONSE"))
(shadow '*STATE_FINISHED* (find-package "LXIND_MSGS::GETNAVSTATUSRESPONSE"))
(defconstant lxind_msgs::GetNavStatusResponse::*STATE_FINISHED* 3)
(defclass lxind_msgs::GetNavStatusResponse
  :super ros::object
  :slots (_curr_posi _reach_state _prec_state ))

(defmethod lxind_msgs::GetNavStatusResponse
  (:init
   (&key
    ((:curr_posi __curr_posi) (instance geometry_msgs::Pose2D :init))
    ((:reach_state __reach_state) 0)
    ((:prec_state __prec_state) 0)
    )
   (send-super :init)
   (setq _curr_posi __curr_posi)
   (setq _reach_state (round __reach_state))
   (setq _prec_state (round __prec_state))
   self)
  (:curr_posi
   (&rest __curr_posi)
   (if (keywordp (car __curr_posi))
       (send* _curr_posi __curr_posi)
     (progn
       (if __curr_posi (setq _curr_posi (car __curr_posi)))
       _curr_posi)))
  (:reach_state
   (&optional __reach_state)
   (if __reach_state (setq _reach_state __reach_state)) _reach_state)
  (:prec_state
   (&optional __prec_state)
   (if __prec_state (setq _prec_state __prec_state)) _prec_state)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose2D _curr_posi
    (send _curr_posi :serialization-length)
    ;; int8 _reach_state
    1
    ;; int8 _prec_state
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose2D _curr_posi
       (send _curr_posi :serialize s)
     ;; int8 _reach_state
       (write-byte _reach_state s)
     ;; int8 _prec_state
       (write-byte _prec_state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose2D _curr_posi
     (send _curr_posi :deserialize buf ptr-) (incf ptr- (send _curr_posi :serialization-length))
   ;; int8 _reach_state
     (setq _reach_state (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _reach_state 127) (setq _reach_state (- _reach_state 256)))
   ;; int8 _prec_state
     (setq _prec_state (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _prec_state 127) (setq _prec_state (- _prec_state 256)))
   ;;
   self)
  )

(defclass lxind_msgs::GetNavStatus
  :super ros::object
  :slots ())

(setf (get lxind_msgs::GetNavStatus :md5sum-) "db378f79657e7f13f64098eef9409889")
(setf (get lxind_msgs::GetNavStatus :datatype-) "lxind_msgs/GetNavStatus")
(setf (get lxind_msgs::GetNavStatus :request) lxind_msgs::GetNavStatusRequest)
(setf (get lxind_msgs::GetNavStatus :response) lxind_msgs::GetNavStatusResponse)

(defmethod lxind_msgs::GetNavStatusRequest
  (:response () (instance lxind_msgs::GetNavStatusResponse :init)))

(setf (get lxind_msgs::GetNavStatusRequest :md5sum-) "db378f79657e7f13f64098eef9409889")
(setf (get lxind_msgs::GetNavStatusRequest :datatype-) "lxind_msgs/GetNavStatusRequest")
(setf (get lxind_msgs::GetNavStatusRequest :definition-)
      "---
int8 GOAL_NOT_REACHED=0
int8 GOAL_REACHED=1
int8 GOAL_APPROACHING=2

int8 STATE_ADJUST=0
int8 STATE_WAIT=1
int8 STATE_FORWARD=2
int8 STATE_FINISHED=3

geometry_msgs/Pose2D curr_posi
int8 reach_state
int8 prec_state

================================================================================
MSG: geometry_msgs/Pose2D
# This expresses a position and orientation on a 2D manifold.

float64 x
float64 y
")

(setf (get lxind_msgs::GetNavStatusResponse :md5sum-) "db378f79657e7f13f64098eef9409889")
(setf (get lxind_msgs::GetNavStatusResponse :datatype-) "lxind_msgs/GetNavStatusResponse")
(setf (get lxind_msgs::GetNavStatusResponse :definition-)
      "---
int8 GOAL_NOT_REACHED=0
int8 GOAL_REACHED=1
int8 GOAL_APPROACHING=2

int8 STATE_ADJUST=0
int8 STATE_WAIT=1
int8 STATE_FORWARD=2
int8 STATE_FINISHED=3

geometry_msgs/Pose2D curr_posi
int8 reach_state
int8 prec_state

================================================================================
MSG: geometry_msgs/Pose2D
# This expresses a position and orientation on a 2D manifold.

float64 x
float64 y
")



(provide :lxind_msgs/GetNavStatus "db378f79657e7f13f64098eef9409889")


