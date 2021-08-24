;; Auto-generated. Do not edit!


(when (boundp 'lxind_msgs::QueryPathAvail)
  (if (not (find-package "LXIND_MSGS"))
    (make-package "LXIND_MSGS"))
  (shadow 'QueryPathAvail (find-package "LXIND_MSGS")))
(unless (find-package "LXIND_MSGS::QUERYPATHAVAIL")
  (make-package "LXIND_MSGS::QUERYPATHAVAIL"))

(in-package "ROS")
;;//! \htmlinclude QueryPathAvail.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass lxind_msgs::QueryPathAvail
  :super ros::object
  :slots (_header _session_id _path_nodes ))

(defmethod lxind_msgs::QueryPathAvail
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:session_id __session_id) 0)
    ((:path_nodes __path_nodes) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _session_id (round __session_id))
   (setq _path_nodes __path_nodes)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:session_id
   (&optional __session_id)
   (if __session_id (setq _session_id __session_id)) _session_id)
  (:path_nodes
   (&optional __path_nodes)
   (if __path_nodes (setq _path_nodes __path_nodes)) _path_nodes)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _session_id
    4
    ;; string[] _path_nodes
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _path_nodes)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _session_id
       (write-long _session_id s)
     ;; string[] _path_nodes
     (write-long (length _path_nodes) s)
     (dolist (elem _path_nodes)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _session_id
     (setq _session_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string[] _path_nodes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _path_nodes (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _path_nodes i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(setf (get lxind_msgs::QueryPathAvail :md5sum-) "c0bb42d59bd907f57ed37938d4d824a0")
(setf (get lxind_msgs::QueryPathAvail :datatype-) "lxind_msgs/QueryPathAvail")
(setf (get lxind_msgs::QueryPathAvail :definition-)
      "Header header

uint32 session_id

string[] path_nodes
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

")



(provide :lxind_msgs/QueryPathAvail "c0bb42d59bd907f57ed37938d4d824a0")


