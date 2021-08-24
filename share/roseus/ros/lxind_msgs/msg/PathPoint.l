;; Auto-generated. Do not edit!


(when (boundp 'lxind_msgs::PathPoint)
  (if (not (find-package "LXIND_MSGS"))
    (make-package "LXIND_MSGS"))
  (shadow 'PathPoint (find-package "LXIND_MSGS")))
(unless (find-package "LXIND_MSGS::PATHPOINT")
  (make-package "LXIND_MSGS::PATHPOINT"))

(in-package "ROS")
;;//! \htmlinclude PathPoint.msg.html


(defclass lxind_msgs::PathPoint
  :super ros::object
  :slots (_x _y _th _node_name ))

(defmethod lxind_msgs::PathPoint
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:th __th) 0.0)
    ((:node_name __node_name) "")
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _th (float __th))
   (setq _node_name (string __node_name))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:th
   (&optional __th)
   (if __th (setq _th __th)) _th)
  (:node_name
   (&optional __node_name)
   (if __node_name (setq _node_name __node_name)) _node_name)
  (:serialization-length
   ()
   (+
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _th
    4
    ;; string _node_name
    4 (length _node_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _th
       (sys::poke _th (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _node_name
       (write-long (length _node_name) s) (princ _node_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _th
     (setq _th (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _node_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _node_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get lxind_msgs::PathPoint :md5sum-) "016e9ae0e005a2632fb1469bab8e2fdc")
(setf (get lxind_msgs::PathPoint :datatype-) "lxind_msgs/PathPoint")
(setf (get lxind_msgs::PathPoint :definition-)
      "float32 x
float32 y
float32 th

string node_name
")



(provide :lxind_msgs/PathPoint "016e9ae0e005a2632fb1469bab8e2fdc")


