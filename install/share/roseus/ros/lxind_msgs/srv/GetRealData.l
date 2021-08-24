;; Auto-generated. Do not edit!


(when (boundp 'lxind_msgs::GetRealData)
  (if (not (find-package "LXIND_MSGS"))
    (make-package "LXIND_MSGS"))
  (shadow 'GetRealData (find-package "LXIND_MSGS")))
(unless (find-package "LXIND_MSGS::GETREALDATA")
  (make-package "LXIND_MSGS::GETREALDATA"))
(unless (find-package "LXIND_MSGS::GETREALDATAREQUEST")
  (make-package "LXIND_MSGS::GETREALDATAREQUEST"))
(unless (find-package "LXIND_MSGS::GETREALDATARESPONSE")
  (make-package "LXIND_MSGS::GETREALDATARESPONSE"))

(in-package "ROS")





(defclass lxind_msgs::GetRealDataRequest
  :super ros::object
  :slots (_dataJson ))

(defmethod lxind_msgs::GetRealDataRequest
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

(defclass lxind_msgs::GetRealDataResponse
  :super ros::object
  :slots (_dataJsonRet ))

(defmethod lxind_msgs::GetRealDataResponse
  (:init
   (&key
    ((:dataJsonRet __dataJsonRet) "")
    )
   (send-super :init)
   (setq _dataJsonRet (string __dataJsonRet))
   self)
  (:dataJsonRet
   (&optional __dataJsonRet)
   (if __dataJsonRet (setq _dataJsonRet __dataJsonRet)) _dataJsonRet)
  (:serialization-length
   ()
   (+
    ;; string _dataJsonRet
    4 (length _dataJsonRet)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _dataJsonRet
       (write-long (length _dataJsonRet) s) (princ _dataJsonRet s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _dataJsonRet
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _dataJsonRet (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass lxind_msgs::GetRealData
  :super ros::object
  :slots ())

(setf (get lxind_msgs::GetRealData :md5sum-) "569dabf260434c7ed4d7ddae51e72989")
(setf (get lxind_msgs::GetRealData :datatype-) "lxind_msgs/GetRealData")
(setf (get lxind_msgs::GetRealData :request) lxind_msgs::GetRealDataRequest)
(setf (get lxind_msgs::GetRealData :response) lxind_msgs::GetRealDataResponse)

(defmethod lxind_msgs::GetRealDataRequest
  (:response () (instance lxind_msgs::GetRealDataResponse :init)))

(setf (get lxind_msgs::GetRealDataRequest :md5sum-) "569dabf260434c7ed4d7ddae51e72989")
(setf (get lxind_msgs::GetRealDataRequest :datatype-) "lxind_msgs/GetRealDataRequest")
(setf (get lxind_msgs::GetRealDataRequest :definition-)
      "string dataJson
---
string dataJsonRet
")

(setf (get lxind_msgs::GetRealDataResponse :md5sum-) "569dabf260434c7ed4d7ddae51e72989")
(setf (get lxind_msgs::GetRealDataResponse :datatype-) "lxind_msgs/GetRealDataResponse")
(setf (get lxind_msgs::GetRealDataResponse :definition-)
      "string dataJson
---
string dataJsonRet
")



(provide :lxind_msgs/GetRealData "569dabf260434c7ed4d7ddae51e72989")


