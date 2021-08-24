
(cl:in-package :asdf)

(defsystem "lxind_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "BatteryStatus" :depends-on ("_package_BatteryStatus"))
    (:file "_package_BatteryStatus" :depends-on ("_package"))
    (:file "CertificateInfo" :depends-on ("_package_CertificateInfo"))
    (:file "_package_CertificateInfo" :depends-on ("_package"))
    (:file "CertificateInfos" :depends-on ("_package_CertificateInfos"))
    (:file "_package_CertificateInfos" :depends-on ("_package"))
    (:file "DevStatus" :depends-on ("_package_DevStatus"))
    (:file "_package_DevStatus" :depends-on ("_package"))
    (:file "Exception" :depends-on ("_package_Exception"))
    (:file "_package_Exception" :depends-on ("_package"))
    (:file "ExceptionStatus" :depends-on ("_package_ExceptionStatus"))
    (:file "_package_ExceptionStatus" :depends-on ("_package"))
    (:file "Exceptions" :depends-on ("_package_Exceptions"))
    (:file "_package_Exceptions" :depends-on ("_package"))
    (:file "InitializeLoc" :depends-on ("_package_InitializeLoc"))
    (:file "_package_InitializeLoc" :depends-on ("_package"))
    (:file "InitializeLocStatus" :depends-on ("_package_InitializeLocStatus"))
    (:file "_package_InitializeLocStatus" :depends-on ("_package"))
    (:file "LightInfo" :depends-on ("_package_LightInfo"))
    (:file "_package_LightInfo" :depends-on ("_package"))
    (:file "MapLoadStatus" :depends-on ("_package_MapLoadStatus"))
    (:file "_package_MapLoadStatus" :depends-on ("_package"))
    (:file "MapMetaData" :depends-on ("_package_MapMetaData"))
    (:file "_package_MapMetaData" :depends-on ("_package"))
    (:file "NavStatus" :depends-on ("_package_NavStatus"))
    (:file "_package_NavStatus" :depends-on ("_package"))
    (:file "NavTask" :depends-on ("_package_NavTask"))
    (:file "_package_NavTask" :depends-on ("_package"))
    (:file "NavTasks" :depends-on ("_package_NavTasks"))
    (:file "_package_NavTasks" :depends-on ("_package"))
    (:file "PathPoint" :depends-on ("_package_PathPoint"))
    (:file "_package_PathPoint" :depends-on ("_package"))
    (:file "QrCodeInfo" :depends-on ("_package_QrCodeInfo"))
    (:file "_package_QrCodeInfo" :depends-on ("_package"))
    (:file "QueryPathAvail" :depends-on ("_package_QueryPathAvail"))
    (:file "_package_QueryPathAvail" :depends-on ("_package"))
    (:file "RawBaseSensorData" :depends-on ("_package_RawBaseSensorData"))
    (:file "_package_RawBaseSensorData" :depends-on ("_package"))
    (:file "RobotPose" :depends-on ("_package_RobotPose"))
    (:file "_package_RobotPose" :depends-on ("_package"))
    (:file "ServerInfo" :depends-on ("_package_ServerInfo"))
    (:file "_package_ServerInfo" :depends-on ("_package"))
    (:file "ServerReturnPackage" :depends-on ("_package_ServerReturnPackage"))
    (:file "_package_ServerReturnPackage" :depends-on ("_package"))
    (:file "TaskStatus" :depends-on ("_package_TaskStatus"))
    (:file "_package_TaskStatus" :depends-on ("_package"))
    (:file "TaskStatuses" :depends-on ("_package_TaskStatuses"))
    (:file "_package_TaskStatuses" :depends-on ("_package"))
  ))