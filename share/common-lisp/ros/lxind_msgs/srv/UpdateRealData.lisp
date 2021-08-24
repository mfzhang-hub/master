; Auto-generated. Do not edit!


(cl:in-package lxind_msgs-srv)


;//! \htmlinclude UpdateRealData-request.msg.html

(cl:defclass <UpdateRealData-request> (roslisp-msg-protocol:ros-message)
  ((dataJson
    :reader dataJson
    :initarg :dataJson
    :type cl:string
    :initform ""))
)

(cl:defclass UpdateRealData-request (<UpdateRealData-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UpdateRealData-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UpdateRealData-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lxind_msgs-srv:<UpdateRealData-request> is deprecated: use lxind_msgs-srv:UpdateRealData-request instead.")))

(cl:ensure-generic-function 'dataJson-val :lambda-list '(m))
(cl:defmethod dataJson-val ((m <UpdateRealData-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-srv:dataJson-val is deprecated.  Use lxind_msgs-srv:dataJson instead.")
  (dataJson m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UpdateRealData-request>) ostream)
  "Serializes a message object of type '<UpdateRealData-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'dataJson))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'dataJson))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UpdateRealData-request>) istream)
  "Deserializes a message object of type '<UpdateRealData-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'dataJson) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'dataJson) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UpdateRealData-request>)))
  "Returns string type for a service object of type '<UpdateRealData-request>"
  "lxind_msgs/UpdateRealDataRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UpdateRealData-request)))
  "Returns string type for a service object of type 'UpdateRealData-request"
  "lxind_msgs/UpdateRealDataRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UpdateRealData-request>)))
  "Returns md5sum for a message object of type '<UpdateRealData-request>"
  "36ec269d8e7b5ed35b8fdfab67c704d0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UpdateRealData-request)))
  "Returns md5sum for a message object of type 'UpdateRealData-request"
  "36ec269d8e7b5ed35b8fdfab67c704d0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UpdateRealData-request>)))
  "Returns full string definition for message of type '<UpdateRealData-request>"
  (cl:format cl:nil "string dataJson~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UpdateRealData-request)))
  "Returns full string definition for message of type 'UpdateRealData-request"
  (cl:format cl:nil "string dataJson~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UpdateRealData-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'dataJson))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UpdateRealData-request>))
  "Converts a ROS message object to a list"
  (cl:list 'UpdateRealData-request
    (cl:cons ':dataJson (dataJson msg))
))
;//! \htmlinclude UpdateRealData-response.msg.html

(cl:defclass <UpdateRealData-response> (roslisp-msg-protocol:ros-message)
  ((isSuccess
    :reader isSuccess
    :initarg :isSuccess
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass UpdateRealData-response (<UpdateRealData-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UpdateRealData-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UpdateRealData-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lxind_msgs-srv:<UpdateRealData-response> is deprecated: use lxind_msgs-srv:UpdateRealData-response instead.")))

(cl:ensure-generic-function 'isSuccess-val :lambda-list '(m))
(cl:defmethod isSuccess-val ((m <UpdateRealData-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-srv:isSuccess-val is deprecated.  Use lxind_msgs-srv:isSuccess instead.")
  (isSuccess m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UpdateRealData-response>) ostream)
  "Serializes a message object of type '<UpdateRealData-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'isSuccess) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UpdateRealData-response>) istream)
  "Deserializes a message object of type '<UpdateRealData-response>"
    (cl:setf (cl:slot-value msg 'isSuccess) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UpdateRealData-response>)))
  "Returns string type for a service object of type '<UpdateRealData-response>"
  "lxind_msgs/UpdateRealDataResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UpdateRealData-response)))
  "Returns string type for a service object of type 'UpdateRealData-response"
  "lxind_msgs/UpdateRealDataResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UpdateRealData-response>)))
  "Returns md5sum for a message object of type '<UpdateRealData-response>"
  "36ec269d8e7b5ed35b8fdfab67c704d0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UpdateRealData-response)))
  "Returns md5sum for a message object of type 'UpdateRealData-response"
  "36ec269d8e7b5ed35b8fdfab67c704d0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UpdateRealData-response>)))
  "Returns full string definition for message of type '<UpdateRealData-response>"
  (cl:format cl:nil "bool isSuccess~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UpdateRealData-response)))
  "Returns full string definition for message of type 'UpdateRealData-response"
  (cl:format cl:nil "bool isSuccess~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UpdateRealData-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UpdateRealData-response>))
  "Converts a ROS message object to a list"
  (cl:list 'UpdateRealData-response
    (cl:cons ':isSuccess (isSuccess msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'UpdateRealData)))
  'UpdateRealData-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'UpdateRealData)))
  'UpdateRealData-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UpdateRealData)))
  "Returns string type for a service object of type '<UpdateRealData>"
  "lxind_msgs/UpdateRealData")