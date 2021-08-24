; Auto-generated. Do not edit!


(cl:in-package lxind_msgs-msg)


;//! \htmlinclude TaskStatuses.msg.html

(cl:defclass <TaskStatuses> (roslisp-msg-protocol:ros-message)
  ((statuses
    :reader statuses
    :initarg :statuses
    :type (cl:vector lxind_msgs-msg:TaskStatus)
   :initform (cl:make-array 0 :element-type 'lxind_msgs-msg:TaskStatus :initial-element (cl:make-instance 'lxind_msgs-msg:TaskStatus))))
)

(cl:defclass TaskStatuses (<TaskStatuses>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TaskStatuses>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TaskStatuses)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lxind_msgs-msg:<TaskStatuses> is deprecated: use lxind_msgs-msg:TaskStatuses instead.")))

(cl:ensure-generic-function 'statuses-val :lambda-list '(m))
(cl:defmethod statuses-val ((m <TaskStatuses>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-msg:statuses-val is deprecated.  Use lxind_msgs-msg:statuses instead.")
  (statuses m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TaskStatuses>) ostream)
  "Serializes a message object of type '<TaskStatuses>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'statuses))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'statuses))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TaskStatuses>) istream)
  "Deserializes a message object of type '<TaskStatuses>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'statuses) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'statuses)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'lxind_msgs-msg:TaskStatus))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TaskStatuses>)))
  "Returns string type for a message object of type '<TaskStatuses>"
  "lxind_msgs/TaskStatuses")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TaskStatuses)))
  "Returns string type for a message object of type 'TaskStatuses"
  "lxind_msgs/TaskStatuses")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TaskStatuses>)))
  "Returns md5sum for a message object of type '<TaskStatuses>"
  "a910037bbbb83eb5213f09190db3e871")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TaskStatuses)))
  "Returns md5sum for a message object of type 'TaskStatuses"
  "a910037bbbb83eb5213f09190db3e871")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TaskStatuses>)))
  "Returns full string definition for message of type '<TaskStatuses>"
  (cl:format cl:nil "lxind_msgs/TaskStatus[] statuses~%================================================================================~%MSG: lxind_msgs/TaskStatus~%uint8 STATUS_UNFINISHED = 0~%uint8 STATUS_SUCCEEDED = 1~%uint8 STATUS_FAILED = 2~%uint8 STATUS_PAUSED = 3~%~%#  not accepted by diaodu~%uint8 STATUS_STOPPED = 10    # task stopped, no need send to diaodu~%uint8 STATUS_OFFLINE_PAUSED = 11~%uint8 STATUS_SKIP = 12~%uint8 STATUS_EXCEPT = 13~%~%int64 task_id~%uint32 pri_task_cmd~%uint8 status~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TaskStatuses)))
  "Returns full string definition for message of type 'TaskStatuses"
  (cl:format cl:nil "lxind_msgs/TaskStatus[] statuses~%================================================================================~%MSG: lxind_msgs/TaskStatus~%uint8 STATUS_UNFINISHED = 0~%uint8 STATUS_SUCCEEDED = 1~%uint8 STATUS_FAILED = 2~%uint8 STATUS_PAUSED = 3~%~%#  not accepted by diaodu~%uint8 STATUS_STOPPED = 10    # task stopped, no need send to diaodu~%uint8 STATUS_OFFLINE_PAUSED = 11~%uint8 STATUS_SKIP = 12~%uint8 STATUS_EXCEPT = 13~%~%int64 task_id~%uint32 pri_task_cmd~%uint8 status~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TaskStatuses>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'statuses) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TaskStatuses>))
  "Converts a ROS message object to a list"
  (cl:list 'TaskStatuses
    (cl:cons ':statuses (statuses msg))
))
