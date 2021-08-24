
(cl:in-package :asdf)

(defsystem "ifm3d-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Extrinsics" :depends-on ("_package_Extrinsics"))
    (:file "_package_Extrinsics" :depends-on ("_package"))
  ))