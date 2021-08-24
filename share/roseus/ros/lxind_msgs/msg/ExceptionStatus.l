;; Auto-generated. Do not edit!


(when (boundp 'lxind_msgs::ExceptionStatus)
  (if (not (find-package "LXIND_MSGS"))
    (make-package "LXIND_MSGS"))
  (shadow 'ExceptionStatus (find-package "LXIND_MSGS")))
(unless (find-package "LXIND_MSGS::EXCEPTIONSTATUS")
  (make-package "LXIND_MSGS::EXCEPTIONSTATUS"))

(in-package "ROS")
;;//! \htmlinclude ExceptionStatus.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass lxind_msgs::ExceptionStatus
  :super ros::object
  :slots (_header _isShow _warnMode _warnid _name _prompt _leftWarnText _middleWarnText _rightWarnText _leftWarnId _middleWarnId _rightWarnId ))

(defmethod lxind_msgs::ExceptionStatus
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:isShow __isShow) nil)
    ((:warnMode __warnMode) 0)
    ((:warnid __warnid) 0)
    ((:name __name) "")
    ((:prompt __prompt) "")
    ((:leftWarnText __leftWarnText) "")
    ((:middleWarnText __middleWarnText) "")
    ((:rightWarnText __rightWarnText) "")
    ((:leftWarnId __leftWarnId) 0)
    ((:middleWarnId __middleWarnId) 0)
    ((:rightWarnId __rightWarnId) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _isShow __isShow)
   (setq _warnMode (round __warnMode))
   (setq _warnid (round __warnid))
   (setq _name (string __name))
   (setq _prompt (string __prompt))
   (setq _leftWarnText (string __leftWarnText))
   (setq _middleWarnText (string __middleWarnText))
   (setq _rightWarnText (string __rightWarnText))
   (setq _leftWarnId (round __leftWarnId))
   (setq _middleWarnId (round __middleWarnId))
   (setq _rightWarnId (round __rightWarnId))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:isShow
   (&optional __isShow)
   (if __isShow (setq _isShow __isShow)) _isShow)
  (:warnMode
   (&optional __warnMode)
   (if __warnMode (setq _warnMode __warnMode)) _warnMode)
  (:warnid
   (&optional __warnid)
   (if __warnid (setq _warnid __warnid)) _warnid)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:prompt
   (&optional __prompt)
   (if __prompt (setq _prompt __prompt)) _prompt)
  (:leftWarnText
   (&optional __leftWarnText)
   (if __leftWarnText (setq _leftWarnText __leftWarnText)) _leftWarnText)
  (:middleWarnText
   (&optional __middleWarnText)
   (if __middleWarnText (setq _middleWarnText __middleWarnText)) _middleWarnText)
  (:rightWarnText
   (&optional __rightWarnText)
   (if __rightWarnText (setq _rightWarnText __rightWarnText)) _rightWarnText)
  (:leftWarnId
   (&optional __leftWarnId)
   (if __leftWarnId (setq _leftWarnId __leftWarnId)) _leftWarnId)
  (:middleWarnId
   (&optional __middleWarnId)
   (if __middleWarnId (setq _middleWarnId __middleWarnId)) _middleWarnId)
  (:rightWarnId
   (&optional __rightWarnId)
   (if __rightWarnId (setq _rightWarnId __rightWarnId)) _rightWarnId)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _isShow
    1
    ;; uint8 _warnMode
    1
    ;; uint8 _warnid
    1
    ;; string _name
    4 (length _name)
    ;; string _prompt
    4 (length _prompt)
    ;; string _leftWarnText
    4 (length _leftWarnText)
    ;; string _middleWarnText
    4 (length _middleWarnText)
    ;; string _rightWarnText
    4 (length _rightWarnText)
    ;; uint8 _leftWarnId
    1
    ;; uint8 _middleWarnId
    1
    ;; uint8 _rightWarnId
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _isShow
       (if _isShow (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _warnMode
       (write-byte _warnMode s)
     ;; uint8 _warnid
       (write-byte _warnid s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _prompt
       (write-long (length _prompt) s) (princ _prompt s)
     ;; string _leftWarnText
       (write-long (length _leftWarnText) s) (princ _leftWarnText s)
     ;; string _middleWarnText
       (write-long (length _middleWarnText) s) (princ _middleWarnText s)
     ;; string _rightWarnText
       (write-long (length _rightWarnText) s) (princ _rightWarnText s)
     ;; uint8 _leftWarnId
       (write-byte _leftWarnId s)
     ;; uint8 _middleWarnId
       (write-byte _middleWarnId s)
     ;; uint8 _rightWarnId
       (write-byte _rightWarnId s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _isShow
     (setq _isShow (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _warnMode
     (setq _warnMode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _warnid
     (setq _warnid (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _prompt
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _prompt (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _leftWarnText
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _leftWarnText (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _middleWarnText
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _middleWarnText (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _rightWarnText
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _rightWarnText (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _leftWarnId
     (setq _leftWarnId (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _middleWarnId
     (setq _middleWarnId (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _rightWarnId
     (setq _rightWarnId (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get lxind_msgs::ExceptionStatus :md5sum-) "fbfdb4c2bece4216f1e5efbbd716245c")
(setf (get lxind_msgs::ExceptionStatus :datatype-) "lxind_msgs/ExceptionStatus")
(setf (get lxind_msgs::ExceptionStatus :definition-)
      "Header header

bool  isShow
uint8  warnMode
uint8  warnid
string name
string prompt

string leftWarnText
string middleWarnText
string rightWarnText
uint8  leftWarnId
uint8  middleWarnId
uint8  rightWarnId
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



(provide :lxind_msgs/ExceptionStatus "fbfdb4c2bece4216f1e5efbbd716245c")


