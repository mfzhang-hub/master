
(cl:in-package :asdf)

(defsystem "ifm3d-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Config" :depends-on ("_package_Config"))
    (:file "_package_Config" :depends-on ("_package"))
    (:file "Dump" :depends-on ("_package_Dump"))
    (:file "_package_Dump" :depends-on ("_package"))
    (:file "Trigger" :depends-on ("_package_Trigger"))
    (:file "_package_Trigger" :depends-on ("_package"))
  ))