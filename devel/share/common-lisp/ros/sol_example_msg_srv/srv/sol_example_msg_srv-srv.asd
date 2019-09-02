
(cl:in-package :asdf)

(defsystem "sol_example_msg_srv-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "rotate_point" :depends-on ("_package_rotate_point"))
    (:file "_package_rotate_point" :depends-on ("_package"))
    (:file "test_srv" :depends-on ("_package_test_srv"))
    (:file "_package_test_srv" :depends-on ("_package"))
  ))