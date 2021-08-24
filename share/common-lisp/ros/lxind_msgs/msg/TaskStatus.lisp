; Auto-generated. Do not edit!


(cl:in-package lxind_msgs-msg)


;//! \htmlinclude TaskStatus.msg.html

(cl:defclass <TaskStatus> (roslisp-msg-protocol:ros-message)
  ((task_id
    :reader task_id
    :initarg :task_id
    :type cl:integer
    :initform 0)
   (pri_task_cmd
    :reader pri_task_cmd
    :initarg :pri_task_cmd
    :type cl:integer
    :initform 0)
   (status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0))
)

(cl:defclass TaskStatus (<TaskStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TaskStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TaskStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lxind_msgs-msg:<TaskStatus> is deprecated: use lxind_msgs-msg:TaskStatus instead.")))

(cl:ensure-generic-function 'task_id-val :lambda-list '(m))
(cl:defmethod task_id-val ((m <TaskStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-msg:task_id-val is deprecated.  Use lxind_msgs-msg:task_id instead.")
  (task_id m))

(cl:ensure-generic-function 'pri_task_cmd-val :lambda-list '(m))
(cl:defmethod pri_task_cmd-val ((m <TaskStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-msg:pri_task_cmd-val is deprecated.  Use lxind_msgs-msg:pri_task_cmd instead.")
  (pri_task_cmd m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <TaskStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-msg:status-val is deprecated.  Use lxind_msgs-msg:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TaskStatus>)))
    "Constants for message type '<TaskStatus>"
  '((:STATUS_UNFINISHED . 0)
    (:STATUS_SUCCEEDED . 1)
    (:STATUS_FAILED . 2)
    (:STATUS_PAUSED . 3)
    (:STATUS_STOPPED . 10)
    (:STATUS_OFFLINE_PAUSED . 11)
    (:STATUS_SKIP . 12)
    (:STATUS_EXCEPT . 13))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TaskStatus)))
    "Constants for message type 'TaskStatus"
  '((:STATUS_UNFINISHED . 0)
    (:STATUS_SUCCEEDED . 1)
    (:STATUS_FAILED . 2)
    (:STATUS_PAUSED . 3)
    (:STATUS_STOPPED . 10)
    (:STATUS_OFFLINE_PAUSED . 11)
    (:STATUS_SKIP . 12)
    (:STATUS_EXCEPT . 13))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TaskStatus>) ostream)
  "Serializes a message object of type '<TaskStatus>"
  (cl:let* ((signed (cl:slot-value msg 'task_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pri_task_cmd)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'pri_task_cmd)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'pri_task_cmd)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'pri_task_cmd)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TaskStatus>) istream)
  "Deserializes a message object of type '<TaskStatus>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'task_id) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pri_task_cmd)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'pri_task_cmd)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'pri_task_cmd)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'pri_task_cmd)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TaskStatus>)))
  "Returns string type for a message object of type '<TaskStatus>"
  "lxind_msgs/TaskStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TaskStatus)))
  "Returns string type for a message object of type 'TaskStatus"
  "lxind_msgs/TaskStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TaskStatus>)))
  "Returns md5sum for a message object of type '<TaskStatus>"
  "7c006c382a86ee1bce524eaad28c8207")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TaskStatus)))
  "Returns md5sum for a message object of type 'TaskStatus"
  "7c006c382a86ee1bce524eaad28c8207")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TaskStatus>)))
  "Returns full string definition for message of type '<TaskStatus>"
  (cl:format cl:nil "uint8 STATUS_UNFINISHED = 0~%uint8 STATUS_SUCCEEDED = 1~%uint8 STATUS_FAILED = 2~%uint8 STATUS_PAUSED = 3~%~%#  not accepted by diaodu~%uint8 STATUS_STOPPED = 10    # task stopped, no need send to diaodu~%uint8 STATUS_OFFLINE_PAUSED = 11~%uint8 STATUS_SKIP = 12~%uint8 STATUS_EXCEPT = 13~%~%int64 task_id~%uint32 pri_task_cmd~%uint8 status~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TaskStatus)))
  "Returns full string definition for message of type 'TaskStatus"
  (cl:format cl:nil "uint8 STATUS_UNFINISHED = 0~%uint8 STATUS_SUCCEEDED = 1~%uint8 STATUS_FAILED = 2~%uint8 STATUS_PAUSED = 3~%~%#  not accepted by diaodu~%uint8 STATUS_STOPPED = 10    # task stopped, no need send to diaodu~%uint8 STATUS_OFFLINE_PAUSED = 11~%uint8 STATUS_SKIP = 12~%uint8 STATUS_EXCEPT = 13~%~%int64 task_id~%uint32 pri_task_cmd~%uint8 status~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TaskStatus>))
  (cl:+ 0
     8
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TaskStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'TaskStatus
    (cl:cons ':task_id (task_id msg))
    (cl:cons ':pri_task_cmd (pri_task_cmd msg))
    (cl:cons ':status (status msg))
))
