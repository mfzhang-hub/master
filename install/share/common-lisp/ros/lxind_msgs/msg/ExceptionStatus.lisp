; Auto-generated. Do not edit!


(cl:in-package lxind_msgs-msg)


;//! \htmlinclude ExceptionStatus.msg.html

(cl:defclass <ExceptionStatus> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (isShow
    :reader isShow
    :initarg :isShow
    :type cl:boolean
    :initform cl:nil)
   (warnMode
    :reader warnMode
    :initarg :warnMode
    :type cl:fixnum
    :initform 0)
   (warnid
    :reader warnid
    :initarg :warnid
    :type cl:fixnum
    :initform 0)
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (prompt
    :reader prompt
    :initarg :prompt
    :type cl:string
    :initform "")
   (leftWarnText
    :reader leftWarnText
    :initarg :leftWarnText
    :type cl:string
    :initform "")
   (middleWarnText
    :reader middleWarnText
    :initarg :middleWarnText
    :type cl:string
    :initform "")
   (rightWarnText
    :reader rightWarnText
    :initarg :rightWarnText
    :type cl:string
    :initform "")
   (leftWarnId
    :reader leftWarnId
    :initarg :leftWarnId
    :type cl:fixnum
    :initform 0)
   (middleWarnId
    :reader middleWarnId
    :initarg :middleWarnId
    :type cl:fixnum
    :initform 0)
   (rightWarnId
    :reader rightWarnId
    :initarg :rightWarnId
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ExceptionStatus (<ExceptionStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ExceptionStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ExceptionStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lxind_msgs-msg:<ExceptionStatus> is deprecated: use lxind_msgs-msg:ExceptionStatus instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ExceptionStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-msg:header-val is deprecated.  Use lxind_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'isShow-val :lambda-list '(m))
(cl:defmethod isShow-val ((m <ExceptionStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-msg:isShow-val is deprecated.  Use lxind_msgs-msg:isShow instead.")
  (isShow m))

(cl:ensure-generic-function 'warnMode-val :lambda-list '(m))
(cl:defmethod warnMode-val ((m <ExceptionStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-msg:warnMode-val is deprecated.  Use lxind_msgs-msg:warnMode instead.")
  (warnMode m))

(cl:ensure-generic-function 'warnid-val :lambda-list '(m))
(cl:defmethod warnid-val ((m <ExceptionStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-msg:warnid-val is deprecated.  Use lxind_msgs-msg:warnid instead.")
  (warnid m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <ExceptionStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-msg:name-val is deprecated.  Use lxind_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'prompt-val :lambda-list '(m))
(cl:defmethod prompt-val ((m <ExceptionStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-msg:prompt-val is deprecated.  Use lxind_msgs-msg:prompt instead.")
  (prompt m))

(cl:ensure-generic-function 'leftWarnText-val :lambda-list '(m))
(cl:defmethod leftWarnText-val ((m <ExceptionStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-msg:leftWarnText-val is deprecated.  Use lxind_msgs-msg:leftWarnText instead.")
  (leftWarnText m))

(cl:ensure-generic-function 'middleWarnText-val :lambda-list '(m))
(cl:defmethod middleWarnText-val ((m <ExceptionStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-msg:middleWarnText-val is deprecated.  Use lxind_msgs-msg:middleWarnText instead.")
  (middleWarnText m))

(cl:ensure-generic-function 'rightWarnText-val :lambda-list '(m))
(cl:defmethod rightWarnText-val ((m <ExceptionStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-msg:rightWarnText-val is deprecated.  Use lxind_msgs-msg:rightWarnText instead.")
  (rightWarnText m))

(cl:ensure-generic-function 'leftWarnId-val :lambda-list '(m))
(cl:defmethod leftWarnId-val ((m <ExceptionStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-msg:leftWarnId-val is deprecated.  Use lxind_msgs-msg:leftWarnId instead.")
  (leftWarnId m))

(cl:ensure-generic-function 'middleWarnId-val :lambda-list '(m))
(cl:defmethod middleWarnId-val ((m <ExceptionStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-msg:middleWarnId-val is deprecated.  Use lxind_msgs-msg:middleWarnId instead.")
  (middleWarnId m))

(cl:ensure-generic-function 'rightWarnId-val :lambda-list '(m))
(cl:defmethod rightWarnId-val ((m <ExceptionStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-msg:rightWarnId-val is deprecated.  Use lxind_msgs-msg:rightWarnId instead.")
  (rightWarnId m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ExceptionStatus>) ostream)
  "Serializes a message object of type '<ExceptionStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'isShow) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'warnMode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'warnid)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'prompt))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'prompt))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'leftWarnText))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'leftWarnText))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'middleWarnText))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'middleWarnText))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'rightWarnText))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'rightWarnText))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'leftWarnId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'middleWarnId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rightWarnId)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ExceptionStatus>) istream)
  "Deserializes a message object of type '<ExceptionStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'isShow) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'warnMode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'warnid)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'prompt) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'prompt) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'leftWarnText) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'leftWarnText) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'middleWarnText) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'middleWarnText) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'rightWarnText) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'rightWarnText) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'leftWarnId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'middleWarnId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rightWarnId)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ExceptionStatus>)))
  "Returns string type for a message object of type '<ExceptionStatus>"
  "lxind_msgs/ExceptionStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ExceptionStatus)))
  "Returns string type for a message object of type 'ExceptionStatus"
  "lxind_msgs/ExceptionStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ExceptionStatus>)))
  "Returns md5sum for a message object of type '<ExceptionStatus>"
  "fbfdb4c2bece4216f1e5efbbd716245c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ExceptionStatus)))
  "Returns md5sum for a message object of type 'ExceptionStatus"
  "fbfdb4c2bece4216f1e5efbbd716245c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ExceptionStatus>)))
  "Returns full string definition for message of type '<ExceptionStatus>"
  (cl:format cl:nil "Header header~%~%bool  isShow~%uint8  warnMode~%uint8  warnid~%string name~%string prompt~%~%string leftWarnText~%string middleWarnText~%string rightWarnText~%uint8  leftWarnId~%uint8  middleWarnId~%uint8  rightWarnId~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ExceptionStatus)))
  "Returns full string definition for message of type 'ExceptionStatus"
  (cl:format cl:nil "Header header~%~%bool  isShow~%uint8  warnMode~%uint8  warnid~%string name~%string prompt~%~%string leftWarnText~%string middleWarnText~%string rightWarnText~%uint8  leftWarnId~%uint8  middleWarnId~%uint8  rightWarnId~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ExceptionStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     1
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:length (cl:slot-value msg 'prompt))
     4 (cl:length (cl:slot-value msg 'leftWarnText))
     4 (cl:length (cl:slot-value msg 'middleWarnText))
     4 (cl:length (cl:slot-value msg 'rightWarnText))
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ExceptionStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'ExceptionStatus
    (cl:cons ':header (header msg))
    (cl:cons ':isShow (isShow msg))
    (cl:cons ':warnMode (warnMode msg))
    (cl:cons ':warnid (warnid msg))
    (cl:cons ':name (name msg))
    (cl:cons ':prompt (prompt msg))
    (cl:cons ':leftWarnText (leftWarnText msg))
    (cl:cons ':middleWarnText (middleWarnText msg))
    (cl:cons ':rightWarnText (rightWarnText msg))
    (cl:cons ':leftWarnId (leftWarnId msg))
    (cl:cons ':middleWarnId (middleWarnId msg))
    (cl:cons ':rightWarnId (rightWarnId msg))
))
