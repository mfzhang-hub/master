;; Auto-generated. Do not edit!


(when (boundp 'lxind_msgs::UpdateRealData)
  (if (not (find-package "LXIND_MSGS"))
    (make-package "LXIND_MSGS"))
  (shadow 'UpdateRealData (find-package "LXIND_MSGS")))
(unless (find-package "LXIND_MSGS::UPDATEREALDATA")
  (make-package "LXIND_MSGS::UPDATEREALDATA"))
(unless (find-package "LXIND_MSGS::UPDATEREALDATAREQUEST")
  (make-package "LXIND_MSGS::UPDATEREALDATAREQUEST"))
(unless (find-package "LXIND_MSGS::UPDATEREALDATARESPONSE")
  (make-package "LXIND_MSGS::UPDATEREALDATARESPONSE"))

(in-package "ROS")





(defclass lxind_msgs::UpdateRealDataRequest
  :super ros::object
  :slots (_dataJson ))

(defmethod lxind_msgs::UpdateRealDataRequest
  (:init
   (&key
    ((:dataJson __dataJson) "")
    )
   (send-super :init)
   (setq _dataJson (string __dataJson))
   self)
  (:dataJson
   (&optional __dataJson)
   (if __dataJson (setq _dataJson __dataJson)) _dataJson)
  (:serialization-length
   ()
   (+
    ;; string _dataJson
    4 (length _dataJson)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _dataJson
       (write-long (length _dataJson) s) (princ _dataJson s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _dataJson
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _dataJson (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass lxind_msgs::UpdateRealDataResponse
  :super ros::object
  :slots (_isSuccess ))

(defmethod lxind_msgs::UpdateRealDataResponse
  (:init
   (&key
    ((:isSuccess __isSuccess) nil)
    )
   (send-super :init)
   (setq _isSuccess __isSuccess)
   self)
  (:isSuccess
   (&optional __isSuccess)
   (if __isSuccess (setq _isSuccess __isSuccess)) _isSuccess)
  (:serialization-length
   ()
   (+
    ;; bool _isSuccess
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _isSuccess
       (if _isSuccess (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _isSuccess
     (setq _isSuccess (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass lxind_msgs::UpdateRealData
  :super ros::object
  :slots ())

(setf (get lxind_msgs::UpdateRealData :md5sum-) "36ec269d8e7b5ed35b8fdfab67c704d0")
(setf (get lxind_msgs::UpdateRealData :datatype-) "lxind_msgs/UpdateRealData")
(setf (get lxind_msgs::UpdateRealData :request) lxind_msgs::UpdateRealDataRequest)
(setf (get lxind_msgs::UpdateRealData :response) lxind_msgs::UpdateRealDataResponse)

(defmethod lxind_msgs::UpdateRealDataRequest
  (:response () (instance lxind_msgs::UpdateRealDataResponse :init)))

(setf (get lxind_msgs::UpdateRealDataRequest :md5sum-) "36ec269d8e7b5ed35b8fdfab67c704d0")
(setf (get lxind_msgs::UpdateRealDataRequest :datatype-) "lxind_msgs/UpdateRealDataRequest")
(setf (get lxind_msgs::UpdateRealDataRequest :definition-)
      "string dataJson
---
bool isSuccess
")

(setf (get lxind_msgs::UpdateRealDataResponse :md5sum-) "36ec269d8e7b5ed35b8fdfab67c704d0")
(setf (get lxind_msgs::UpdateRealDataResponse :datatype-) "lxind_msgs/UpdateRealDataResponse")
(setf (get lxind_msgs::UpdateRealDataResponse :definition-)
      "string dataJson
---
bool isSuccess
")



(provide :lxind_msgs/UpdateRealData "36ec269d8e7b5ed35b8fdfab67c704d0")


