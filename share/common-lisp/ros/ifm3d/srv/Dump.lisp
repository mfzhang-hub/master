; Auto-generated. Do not edit!


(cl:in-package ifm3d-srv)


;//! \htmlinclude Dump-request.msg.html

(cl:defclass <Dump-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Dump-request (<Dump-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Dump-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Dump-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ifm3d-srv:<Dump-request> is deprecated: use ifm3d-srv:Dump-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Dump-request>) ostream)
  "Serializes a message object of type '<Dump-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Dump-request>) istream)
  "Deserializes a message object of type '<Dump-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Dump-request>)))
  "Returns string type for a service object of type '<Dump-request>"
  "ifm3d/DumpRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Dump-request)))
  "Returns string type for a service object of type 'Dump-request"
  "ifm3d/DumpRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Dump-request>)))
  "Returns md5sum for a message object of type '<Dump-request>"
  "44475fe0541e5cf305abe53be7686d7a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Dump-request)))
  "Returns md5sum for a message object of type 'Dump-request"
  "44475fe0541e5cf305abe53be7686d7a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Dump-request>)))
  "Returns full string definition for message of type '<Dump-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Dump-request)))
  "Returns full string definition for message of type 'Dump-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Dump-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Dump-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Dump-request
))
;//! \htmlinclude Dump-response.msg.html

(cl:defclass <Dump-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:integer
    :initform 0)
   (config
    :reader config
    :initarg :config
    :type cl:string
    :initform ""))
)

(cl:defclass Dump-response (<Dump-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Dump-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Dump-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ifm3d-srv:<Dump-response> is deprecated: use ifm3d-srv:Dump-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <Dump-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ifm3d-srv:status-val is deprecated.  Use ifm3d-srv:status instead.")
  (status m))

(cl:ensure-generic-function 'config-val :lambda-list '(m))
(cl:defmethod config-val ((m <Dump-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ifm3d-srv:config-val is deprecated.  Use ifm3d-srv:config instead.")
  (config m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Dump-response>) ostream)
  "Serializes a message object of type '<Dump-response>"
  (cl:let* ((signed (cl:slot-value msg 'status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'config))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'config))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Dump-response>) istream)
  "Deserializes a message object of type '<Dump-response>"
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
      (cl:setf (cl:slot-value msg 'config) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'config) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Dump-response>)))
  "Returns string type for a service object of type '<Dump-response>"
  "ifm3d/DumpResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Dump-response)))
  "Returns string type for a service object of type 'Dump-response"
  "ifm3d/DumpResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Dump-response>)))
  "Returns md5sum for a message object of type '<Dump-response>"
  "44475fe0541e5cf305abe53be7686d7a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Dump-response)))
  "Returns md5sum for a message object of type 'Dump-response"
  "44475fe0541e5cf305abe53be7686d7a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Dump-response>)))
  "Returns full string definition for message of type '<Dump-response>"
  (cl:format cl:nil "int32 status~%string config~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Dump-response)))
  "Returns full string definition for message of type 'Dump-response"
  (cl:format cl:nil "int32 status~%string config~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Dump-response>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'config))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Dump-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Dump-response
    (cl:cons ':status (status msg))
    (cl:cons ':config (config msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Dump)))
  'Dump-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Dump)))
  'Dump-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Dump)))
  "Returns string type for a service object of type '<Dump>"
  "ifm3d/Dump")