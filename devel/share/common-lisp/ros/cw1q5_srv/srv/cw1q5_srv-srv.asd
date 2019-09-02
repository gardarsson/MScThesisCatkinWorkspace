
(cl:in-package :asdf)

(defsystem "cw1q5_srv-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "quat2angleaxis" :depends-on ("_package_quat2angleaxis"))
    (:file "_package_quat2angleaxis" :depends-on ("_package"))
    (:file "quat2zyx" :depends-on ("_package_quat2zyx"))
    (:file "_package_quat2zyx" :depends-on ("_package"))
    (:file "rotmat2quat" :depends-on ("_package_rotmat2quat"))
    (:file "_package_rotmat2quat" :depends-on ("_package"))
  ))