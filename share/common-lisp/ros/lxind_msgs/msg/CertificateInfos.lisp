; Auto-generated. Do not edit!


(cl:in-package lxind_msgs-msg)


;//! \htmlinclude CertificateInfos.msg.html

(cl:defclass <CertificateInfos> (roslisp-msg-protocol:ros-message)
  ((infos
    :reader infos
    :initarg :infos
    :type (cl:vector lxind_msgs-msg:CertificateInfo)
   :initform (cl:make-array 0 :element-type 'lxind_msgs-msg:CertificateInfo :initial-element (cl:make-instance 'lxind_msgs-msg:CertificateInfo))))
)

(cl:defclass CertificateInfos (<CertificateInfos>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CertificateInfos>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CertificateInfos)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lxind_msgs-msg:<CertificateInfos> is deprecated: use lxind_msgs-msg:CertificateInfos instead.")))

(cl:ensure-generic-function 'infos-val :lambda-list '(m))
(cl:defmethod infos-val ((m <CertificateInfos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lxind_msgs-msg:infos-val is deprecated.  Use lxind_msgs-msg:infos instead.")
  (infos m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CertificateInfos>) ostream)
  "Serializes a message object of type '<CertificateInfos>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'infos))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'infos))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CertificateInfos>) istream)
  "Deserializes a message object of type '<CertificateInfos>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'infos) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'infos)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'lxind_msgs-msg:CertificateInfo))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CertificateInfos>)))
  "Returns string type for a message object of type '<CertificateInfos>"
  "lxind_msgs/CertificateInfos")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CertificateInfos)))
  "Returns string type for a message object of type 'CertificateInfos"
  "lxind_msgs/CertificateInfos")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CertificateInfos>)))
  "Returns md5sum for a message object of type '<CertificateInfos>"
  "86a25173dc2ad721a4f1ce4f2a9ec294")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CertificateInfos)))
  "Returns md5sum for a message object of type 'CertificateInfos"
  "86a25173dc2ad721a4f1ce4f2a9ec294")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CertificateInfos>)))
  "Returns full string definition for message of type '<CertificateInfos>"
  (cl:format cl:nil "~%lxind_msgs/CertificateInfo[] infos~%================================================================================~%MSG: lxind_msgs/CertificateInfo~%string info_type~%string info_detail~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CertificateInfos)))
  "Returns full string definition for message of type 'CertificateInfos"
  (cl:format cl:nil "~%lxind_msgs/CertificateInfo[] infos~%================================================================================~%MSG: lxind_msgs/CertificateInfo~%string info_type~%string info_detail~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CertificateInfos>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'infos) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CertificateInfos>))
  "Converts a ROS message object to a list"
  (cl:list 'CertificateInfos
    (cl:cons ':infos (infos msg))
))
