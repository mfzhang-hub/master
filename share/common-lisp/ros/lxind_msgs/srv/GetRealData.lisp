; Auto-generated. Do not edit!


(cl:in-package lxind_msgs-srv)


;//! \htmlinclude GetRealData-request.msg.html

(cl:defclass <GetRealData-request> (roslisp-msg-protocol:ros-message)
  ((dataJson
    :reader dataJson
    :initarg :dataJson
    :type cl:string
    :initform ""))
)

(cl:defclass GetRealData-request (<GetRealData-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetRealData-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetRealData-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lxind_msgs-srv:<GetRealData-request> is deprecated: use lxind_msgs-srv:GetRealData-request instead.")))

(cl:ensure-generic-function 'dataJson-val :lambda-list '(m))
(cl:defmethod dataJson-val ((m <GetRealData-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-srv:dataJson-val is deprecated.  Use lxind_msgs-srv:dataJson instead.")
  (dataJson m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetRealData-request>) ostream)
  "Serializes a message object of type '<GetRealData-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'dataJson))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'dataJson))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetRealData-request>) istream)
  "Deserializes a message object of type '<GetRealData-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetRealData-request>)))
  "Returns string type for a service object of type '<GetRealData-request>"
  "lxind_msgs/GetRealDataRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetRealData-request)))
  "Returns string type for a service object of type 'GetRealData-request"
  "lxind_msgs/GetRealDataRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetRealData-request>)))
  "Returns md5sum for a message object of type '<GetRealData-request>"
  "569dabf260434c7ed4d7ddae51e72989")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetRealData-request)))
  "Returns md5sum for a message object of type 'GetRealData-request"
  "569dabf260434c7ed4d7ddae51e72989")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetRealData-request>)))
  "Returns full string definition for message of type '<GetRealData-request>"
  (cl:format cl:nil "string dataJson~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetRealData-request)))
  "Returns full string definition for message of type 'GetRealData-request"
  (cl:format cl:nil "string dataJson~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetRealData-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'dataJson))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetRealData-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetRealData-request
    (cl:cons ':dataJson (dataJson msg))
))
;//! \htmlinclude GetRealData-response.msg.html

(cl:defclass <GetRealData-response> (roslisp-msg-protocol:ros-message)
  ((dataJsonRet
    :reader dataJsonRet
    :initarg :dataJsonRet
    :type cl:string
    :initform ""))
)

(cl:defclass GetRealData-response (<GetRealData-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetRealData-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetRealData-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lxind_msgs-srv:<GetRealData-response> is deprecated: use lxind_msgs-srv:GetRealData-response instead.")))

(cl:ensure-generic-function 'dataJsonRet-val :lambda-list '(m))
(cl:defmethod dataJsonRet-val ((m <GetRealData-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-srv:dataJsonRet-val is deprecated.  Use lxind_msgs-srv:dataJsonRet instead.")
  (dataJsonRet m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetRealData-response>) ostream)
  "Serializes a message object of type '<GetRealData-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'dataJsonRet))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'dataJsonRet))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetRealData-response>) istream)
  "Deserializes a message object of type '<GetRealData-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'dataJsonRet) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'dataJsonRet) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetRealData-response>)))
  "Returns string type for a service object of type '<GetRealData-response>"
  "lxind_msgs/GetRealDataResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetRealData-response)))
  "Returns string type for a service object of type 'GetRealData-response"
  "lxind_msgs/GetRealDataResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetRealData-response>)))
  "Returns md5sum for a message object of type '<GetRealData-response>"
  "569dabf260434c7ed4d7ddae51e72989")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetRealData-response)))
  "Returns md5sum for a message object of type 'GetRealData-response"
  "569dabf260434c7ed4d7ddae51e72989")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetRealData-response>)))
  "Returns full string definition for message of type '<GetRealData-response>"
  (cl:format cl:nil "string dataJsonRet~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetRealData-response)))
  "Returns full string definition for message of type 'GetRealData-response"
  (cl:format cl:nil "string dataJsonRet~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetRealData-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'dataJsonRet))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetRealData-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetRealData-response
    (cl:cons ':dataJsonRet (dataJsonRet msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetRealData)))
  'GetRealData-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetRealData)))
  'GetRealData-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetRealData)))
  "Returns string type for a service object of type '<GetRealData>"
  "lxind_msgs/GetRealData")