; Auto-generated. Do not edit!


(cl:in-package ifm3d-srv)


;//! \htmlinclude Config-request.msg.html

(cl:defclass <Config-request> (roslisp-msg-protocol:ros-message)
  ((json
    :reader json
    :initarg :json
    :type cl:string
    :initform ""))
)

(cl:defclass Config-request (<Config-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Config-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Config-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ifm3d-srv:<Config-request> is deprecated: use ifm3d-srv:Config-request instead.")))

(cl:ensure-generic-function 'json-val :lambda-list '(m))
(cl:defmethod json-val ((m <Config-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ifm3d-srv:json-val is deprecated.  Use ifm3d-srv:json instead.")
  (json m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Config-request>) ostream)
  "Serializes a message object of type '<Config-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'json))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'json))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Config-request>) istream)
  "Deserializes a message object of type '<Config-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'json) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'json) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Config-request>)))
  "Returns string type for a service object of type '<Config-request>"
  "ifm3d/ConfigRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Config-request)))
  "Returns string type for a service object of type 'Config-request"
  "ifm3d/ConfigRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Config-request>)))
  "Returns md5sum for a message object of type '<Config-request>"
  "2ae3559b462614ae239cd0372f7a82af")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Config-request)))
  "Returns md5sum for a message object of type 'Config-request"
  "2ae3559b462614ae239cd0372f7a82af")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Config-request>)))
  "Returns full string definition for message of type '<Config-request>"
  (cl:format cl:nil "string json~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Config-request)))
  "Returns full string definition for message of type 'Config-request"
  (cl:format cl:nil "string json~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Config-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'json))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Config-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Config-request
    (cl:cons ':json (json msg))
))
;//! \htmlinclude Config-response.msg.html

(cl:defclass <Config-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:integer
    :initform 0)
   (msg
    :reader msg
    :initarg :msg
    :type cl:string
    :initform ""))
)

(cl:defclass Config-response (<Config-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Config-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Config-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ifm3d-srv:<Config-response> is deprecated: use ifm3d-srv:Config-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <Config-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ifm3d-srv:status-val is deprecated.  Use ifm3d-srv:status instead.")
  (status m))

(cl:ensure-generic-function 'msg-val :lambda-list '(m))
(cl:defmethod msg-val ((m <Config-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ifm3d-srv:msg-val is deprecated.  Use ifm3d-srv:msg instead.")
  (msg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Config-response>) ostream)
  "Serializes a message object of type '<Config-response>"
  (cl:let* ((signed (cl:slot-value msg 'status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'msg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'msg))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Config-response>) istream)
  "Deserializes a message object of type '<Config-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'msg) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'msg) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Config-response>)))
  "Returns string type for a service object of type '<Config-response>"
  "ifm3d/ConfigResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Config-response)))
  "Returns string type for a service object of type 'Config-response"
  "ifm3d/ConfigResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Config-response>)))
  "Returns md5sum for a message object of type '<Config-response>"
  "2ae3559b462614ae239cd0372f7a82af")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Config-response)))
  "Returns md5sum for a message object of type 'Config-response"
  "2ae3559b462614ae239cd0372f7a82af")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Config-response>)))
  "Returns full string definition for message of type '<Config-response>"
  (cl:format cl:nil "int32 status~%string msg~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Config-response)))
  "Returns full string definition for message of type 'Config-response"
  (cl:format cl:nil "int32 status~%string msg~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Config-response>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'msg))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Config-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Config-response
    (cl:cons ':status (status msg))
    (cl:cons ':msg (msg msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Config)))
  'Config-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Config)))
  'Config-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Config)))
  "Returns string type for a service object of type '<Config>"
  "ifm3d/Config")