
(cl:in-package :asdf)

(defsystem "lxind_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :lxind_msgs-msg
               :sensor_msgs-msg
)
  :components ((:file "_package")
    (:file "GetFootprintSize" :depends-on ("_package_GetFootprintSize"))
    (:file "_package_GetFootprintSize" :depends-on ("_package"))
    (:file "GetNavStatus" :depends-on ("_package_GetNavStatus"))
    (:file "_package_GetNavStatus" :depends-on ("_package"))
    (:file "GetRealData" :depends-on ("_package_GetRealData"))
    (:file "_package_GetRealData" :depends-on ("_package"))
    (:file "SendCmd" :depends-on ("_package_SendCmd"))
    (:file "_package_SendCmd" :depends-on ("_package"))
    (:file "SendDist" :depends-on ("_package_SendDist"))
    (:file "_package_SendDist" :depends-on ("_package"))
    (:file "SendDistAndAngle" :depends-on ("_package_SendDistAndAngle"))
    (:file "_package_SendDistAndAngle" :depends-on ("_package"))
    (:file "SendElevCtrl" :depends-on ("_package_SendElevCtrl"))
    (:file "_package_SendElevCtrl" :depends-on ("_package"))
    (:file "SendInt" :depends-on ("_package_SendInt"))
    (:file "_package_SendInt" :depends-on ("_package"))
    (:file "SendSubTask" :depends-on ("_package_SendSubTask"))
    (:file "_package_SendSubTask" :depends-on ("_package"))
    (:file "UpdateRealData" :depends-on ("_package_UpdateRealData"))
    (:file "_package_UpdateRealData" :depends-on ("_package"))
    (:file "image" :depends-on ("_package_image"))
    (:file "_package_image" :depends-on ("_package"))
    (:file "pose" :depends-on ("_package_pose"))
    (:file "_package_pose" :depends-on ("_package"))
  ))