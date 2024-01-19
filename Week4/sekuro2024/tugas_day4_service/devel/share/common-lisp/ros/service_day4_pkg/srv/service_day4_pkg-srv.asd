
(cl:in-package :asdf)

(defsystem "service_day4_pkg-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "countmagnitude" :depends-on ("_package_countmagnitude"))
    (:file "_package_countmagnitude" :depends-on ("_package"))
  ))