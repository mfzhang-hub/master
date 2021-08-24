; Auto-generated. Do not edit!


(cl:in-package lxind_msgs-srv)


;//! \htmlinclude GetNavStatus-request.msg.html

(cl:defclass <GetNavStatus-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetNavStatus-request (<GetNavStatus-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetNavStatus-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetNavStatus-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lxind_msgs-srv:<GetNavStatus-request> is deprecated: use lxind_msgs-srv:GetNavStatus-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetNavStatus-request>) ostream)
  "Serializes a message object of type '<GetNavStatus-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetNavStatus-request>) istream)
  "Deserializes a message object of type '<GetNavStatus-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetNavStatus-request>)))
  "Returns string type for a service object of type '<GetNavStatus-request>"
  "lxind_msgs/GetNavStatusRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetNavStatus-request)))
  "Returns string type for a service object of type 'GetNavStatus-request"
  "lxind_msgs/GetNavStatusRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetNavStatus-request>)))
  "Returns md5sum for a message object of type '<GetNavStatus-request>"
  "db378f79657e7f13f64098eef9409889")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetNavStatus-request)))
  "Returns md5sum for a message object of type 'GetNavStatus-request"
  "db378f79657e7f13f64098eef9409889")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetNavStatus-request>)))
  "Returns full string definition for message of type '<GetNavStatus-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetNavStatus-request)))
  "Returns full string definition for message of type 'GetNavStatus-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetNavStatus-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetNavStatus-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetNavStatus-request
))
;//! \htmlinclude GetNavStatus-response.msg.html

(cl:defclass <GetNavStatus-response> (roslisp-msg-protocol:ros-message)
  ((curr_posi
    :reader curr_posi
    :initarg :curr_posi
    :type geometry_msgs-msg:Pose2D
    :initform (cl:make-instance 'geometry_msgs-msg:Pose2D))
   (reach_state
    :reader reach_state
    :initarg :reach_state
    :type cl:fixnum
    :initform 0)
   (prec_state
    :reader prec_state
    :initarg :prec_state
    :type cl:fixnum
    :initform 0))
)

(cl:defclass GetNavStatus-response (<GetNavStatus-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetNavStatus-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetNavStatus-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lxind_msgs-srv:<GetNavStatus-response> is deprecated: use lxind_msgs-srv:GetNavStatus-response instead.")))

(cl:ensure-generic-function 'curr_posi-val :lambda-list '(m))
(cl:defmethod curr_posi-val ((m <GetNavStatus-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-srv:curr_posi-val is deprecated.  Use lxind_msgs-srv:curr_posi instead.")
  (curr_posi m))

(cl:ensure-generic-function 'reach_state-val :lambda-list '(m))
(cl:defmethod reach_state-val ((m <GetNavStatus-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-srv:reach_state-val is deprecated.  Use lxind_msgs-srv:reach_state instead.")
  (reach_state m))

(cl:ensure-generic-function 'prec_state-val :lambda-list '(m))
(cl:defmethod prec_state-val ((m <GetNavStatus-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-srv:prec_state-val is deprecated.  Use lxind_msgs-srv:prec_state instead.")
  (prec_state m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<GetNavStatus-response>)))
    "Constants for message type '<GetNavStatus-response>"
  '((:GOAL_NOT_REACHED . 0)
    (:GOAL_REACHED . 1)
    (:GOAL_APPROACHING . 2)
    (:STATE_ADJUST . 0)
    (:STATE_WAIT . 1)
    (:STATE_FORWARD . 2)
    (:STATE_FINISHED . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'GetNavStatus-response)))
    "Constants for message type 'GetNavStatus-response"
  '((:GOAL_NOT_REACHED . 0)
    (:GOAL_REACHED . 1)
    (:GOAL_APPROACHING . 2)
    (:STATE_ADJUST . 0)
    (:STATE_WAIT . 1)
    (:STATE_FORWARD . 2)
    (:STATE_FINISHED . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetNavStatus-response>) ostream)
  "Serializes a message object of type '<GetNavStatus-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'curr_posi) ostream)
  (cl:let* ((signed (cl:slot-value msg 'reach_state)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'prec_state)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetNavStatus-response>) istream)
  "Deserializes a message object of type '<GetNavStatus-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'curr_posi) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'reach_state) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'prec_state) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetNavStatus-response>)))
  "Returns string type for a service object of type '<GetNavStatus-response>"
  "lxind_msgs/GetNavStatusResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetNavStatus-response)))
  "Returns string type for a service object of type 'GetNavStatus-response"
  "lxind_msgs/GetNavStatusResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetNavStatus-response>)))
  "Returns md5sum for a message object of type '<GetNavStatus-response>"
  "db378f79657e7f13f64098eef9409889")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetNavStatus-response)))
  "Returns md5sum for a message object of type 'GetNavStatus-response"
  "db378f79657e7f13f64098eef9409889")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetNavStatus-response>)))
  "Returns full string definition for message of type '<GetNavStatus-response>"
  (cl:format cl:nil "int8 GOAL_NOT_REACHED=0~%int8 GOAL_REACHED=1~%int8 GOAL_APPROACHING=2~%~%int8 STATE_ADJUST=0~%int8 STATE_WAIT=1~%int8 STATE_FORWARD=2~%int8 STATE_FINISHED=3~%~%geometry_msgs/Pose2D curr_posi~%int8 reach_state~%int8 prec_state~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetNavStatus-response)))
  "Returns full string definition for message of type 'GetNavStatus-response"
  (cl:format cl:nil "int8 GOAL_NOT_REACHED=0~%int8 GOAL_REACHED=1~%int8 GOAL_APPROACHING=2~%~%int8 STATE_ADJUST=0~%int8 STATE_WAIT=1~%int8 STATE_FORWARD=2~%int8 STATE_FINISHED=3~%~%geometry_msgs/Pose2D curr_posi~%int8 reach_state~%int8 prec_state~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetNavStatus-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'curr_posi))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetNavStatus-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetNavStatus-response
    (cl:cons ':curr_posi (curr_posi msg))
    (cl:cons ':reach_state (reach_state msg))
    (cl:cons ':prec_state (prec_state msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetNavStatus)))
  'GetNavStatus-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetNavStatus)))
  'GetNavStatus-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetNavStatus)))
  "Returns string type for a service object of type '<GetNavStatus>"
  "lxind_msgs/GetNavStatus")