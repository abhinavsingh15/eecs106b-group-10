
(cl:in-package :asdf)

(defsystem "balance-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "ForceInformation" :depends-on ("_package_ForceInformation"))
    (:file "_package_ForceInformation" :depends-on ("_package"))
  ))