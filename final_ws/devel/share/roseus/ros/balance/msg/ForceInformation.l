;; Auto-generated. Do not edit!


(when (boundp 'balance::ForceInformation)
  (if (not (find-package "BALANCE"))
    (make-package "BALANCE"))
  (shadow 'ForceInformation (find-package "BALANCE")))
(unless (find-package "BALANCE::FORCEINFORMATION")
  (make-package "BALANCE::FORCEINFORMATION"))

(in-package "ROS")
;;//! \htmlinclude ForceInformation.msg.html


(defclass balance::ForceInformation
  :super ros::object
  :slots (_front _left _right _back ))

(defmethod balance::ForceInformation
  (:init
   (&key
    ((:front __front) 0)
    ((:left __left) 0)
    ((:right __right) 0)
    ((:back __back) 0)
    )
   (send-super :init)
   (setq _front (round __front))
   (setq _left (round __left))
   (setq _right (round __right))
   (setq _back (round __back))
   self)
  (:front
   (&optional __front)
   (if __front (setq _front __front)) _front)
  (:left
   (&optional __left)
   (if __left (setq _left __left)) _left)
  (:right
   (&optional __right)
   (if __right (setq _right __right)) _right)
  (:back
   (&optional __back)
   (if __back (setq _back __back)) _back)
  (:serialization-length
   ()
   (+
    ;; int16 _front
    2
    ;; int16 _left
    2
    ;; int16 _right
    2
    ;; int16 _back
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _front
       (write-word _front s)
     ;; int16 _left
       (write-word _left s)
     ;; int16 _right
       (write-word _right s)
     ;; int16 _back
       (write-word _back s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _front
     (setq _front (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _left
     (setq _left (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _right
     (setq _right (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _back
     (setq _back (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get balance::ForceInformation :md5sum-) "1734456ca7c0ca9ac9138b86977d7ada")
(setf (get balance::ForceInformation :datatype-) "balance/ForceInformation")
(setf (get balance::ForceInformation :definition-)
      "int16 front
int16 left
int16 right
int16 back
")



(provide :balance/ForceInformation "1734456ca7c0ca9ac9138b86977d7ada")


