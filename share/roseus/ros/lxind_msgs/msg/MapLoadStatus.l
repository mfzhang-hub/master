;; Auto-generated. Do not edit!


(when (boundp 'lxind_msgs::MapLoadStatus)
  (if (not (find-package "LXIND_MSGS"))
    (make-package "LXIND_MSGS"))
  (shadow 'MapLoadStatus (find-package "LXIND_MSGS")))
(unless (find-package "LXIND_MSGS::MAPLOADSTATUS")
  (make-package "LXIND_MSGS::MAPLOADSTATUS"))

(in-package "ROS")
;;//! \htmlinclude MapLoadStatus.msg.html


(defclass lxind_msgs::MapLoadStatus
  :super ros::object
  :slots (_module_name _map_name _is_loaded ))

(defmethod lxind_msgs::MapLoadStatus
  (:init
   (&key
    ((:module_name __module_name) "")
    ((:map_name __map_name) "")
    ((:is_loaded __is_loaded) nil)
    )
   (send-super :init)
   (setq _module_name (string __module_name))
   (setq _map_name (string __map_name))
   (setq _is_loaded __is_loaded)
   self)
  (:module_name
   (&optional __module_name)
   (if __module_name (setq _module_name __module_name)) _module_name)
  (:map_name
   (&optional __map_name)
   (if __map_name (setq _map_name __map_name)) _map_name)
  (:is_loaded
   (&optional __is_loaded)
   (if __is_loaded (setq _is_loaded __is_loaded)) _is_loaded)
  (:serialization-length
   ()
   (+
    ;; string _module_name
    4 (length _module_name)
    ;; string _map_name
    4 (length _map_name)
    ;; bool _is_loaded
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _module_name
       (write-long (length _module_name) s) (princ _module_name s)
     ;; string _map_name
       (write-long (length _map_name) s) (princ _map_name s)
     ;; bool _is_loaded
       (if _is_loaded (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _module_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _module_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _map_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _map_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _is_loaded
     (setq _is_loaded (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get lxind_msgs::MapLoadStatus :md5sum-) "b3555824c32229073694e08cee0c3f84")
(setf (get lxind_msgs::MapLoadStatus :datatype-) "lxind_msgs/MapLoadStatus")
(setf (get lxind_msgs::MapLoadStatus :definition-)
      "string module_name
string map_name
bool is_loaded
")



(provide :lxind_msgs/MapLoadStatus "b3555824c32229073694e08cee0c3f84")


