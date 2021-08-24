; Auto-generated. Do not edit!


(cl:in-package lxind_msgs-msg)


;//! \htmlinclude CertificateInfo.msg.html

(cl:defclass <CertificateInfo> (roslisp-msg-protocol:ros-message)
  ((info_type
    :reader info_type
    :initarg :info_type
    :type cl:string
    :initform "")
   (info_detail
    :reader info_detail
    :initarg :info_detail
    :type cl:string
    :initform ""))
)

(cl:defclass CertificateInfo (<CertificateInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CertificateInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CertificateInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lxind_msgs-msg:<CertificateInfo> is deprecated: use lxind_msgs-msg:CertificateInfo instead.")))

(cl:ensure-generic-function 'info_type-val :lambda-list '(m))
(cl:defmethod info_type-val ((m <CertificateInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-msg:info_type-val is deprecated.  Use lxind_msgs-msg:info_type instead.")
  (info_type m))

(cl:ensure-generic-function 'info_detail-val :lambda-list '(m))
(cl:defmethod info_detail-val ((m <CertificateInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-msg:info_detail-val is deprecated.  Use lxind_msgs-msg:info_detail instead.")
  (info_detail m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CertificateInfo>) ostream)
  "Serializes a message object of type '<CertificateInfo>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'info_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'info_type))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'info_detail))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'info_detail))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CertificateInfo>) istream)
  "Deserializes a message object of type '<CertificateInfo>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'info_type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'info_type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'info_detail) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'info_detail) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CertificateInfo>)))
  "Returns string type for a message object of type '<CertificateInfo>"
  "lxind_msgs/CertificateInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CertificateInfo)))
  "Returns string type for a message object of type 'CertificateInfo"
  "lxind_msgs/CertificateInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CertificateInfo>)))
  "Returns md5sum for a message object of type '<CertificateInfo>"
  "6beea3a96ca34ec05821cc6a164f8ac7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CertificateInfo)))
  "Returns md5sum for a message object of type 'CertificateInfo"
  "6beea3a96ca34ec05821cc6a164f8ac7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CertificateInfo>)))
  "Returns full string definition for message of type '<CertificateInfo>"
  (cl:format cl:nil "string info_type~%string info_detail~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CertificateInfo)))
  "Returns full string definition for message of type 'CertificateInfo"
  (cl:format cl:nil "string info_type~%string info_detail~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CertificateInfo>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'info_type))
     4 (cl:length (cl:slot-value msg 'info_detail))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CertificateInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'CertificateInfo
    (cl:cons ':info_type (info_type msg))
    (cl:cons ':info_detail (info_detail msg))
))
