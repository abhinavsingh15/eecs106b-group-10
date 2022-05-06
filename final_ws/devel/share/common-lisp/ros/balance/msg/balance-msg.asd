
(cl:in-package :asdf)

(defsystem "balance-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "PositionInformation" :depends-on ("_package_PositionInformation"))
    (:file "_package_PositionInformation" :depends-on ("_package"))
  ))