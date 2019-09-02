
(cl:in-package :asdf)

(defsystem "sol_example_msg_srv-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "task_msg" :depends-on ("_package_task_msg"))
    (:file "_package_task_msg" :depends-on ("_package"))
    (:file "test_msg" :depends-on ("_package_test_msg"))
    (:file "_package_test_msg" :depends-on ("_package"))
  ))