
(cl:in-package :asdf)

(defsystem "day_02-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "motor_parameter" :depends-on ("_package_motor_parameter"))
    (:file "_package_motor_parameter" :depends-on ("_package"))
  ))