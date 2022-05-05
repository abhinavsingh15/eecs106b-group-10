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
  :slots (_left _right _front _back ))

(defmethod balance::ForceInformation
  (:init
   (&key
    ((:left __left) (make-array 0 :initial-element 0 :element-type :integer))
    ((:right __right) (make-array 0 :initial-element 0 :element-type :integer))
    ((:front __front) (make-array 0 :initial-element 0 :element-type :integer))
    ((:back __back) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _left __left)
   (setq _right __right)
   (setq _front __front)
   (setq _back __back)
   self)
  (:left
   (&optional __left)
   (if __left (setq _left __left)) _left)
  (:right
   (&optional __right)
   (if __right (setq _right __right)) _right)
  (:front
   (&optional __front)
   (if __front (setq _front __front)) _front)
  (:back
   (&optional __back)
   (if __back (setq _back __back)) _back)
  (:serialization-length
   ()
   (+
    ;; int16[] _left
    (* 2    (length _left)) 4
    ;; int16[] _right
    (* 2    (length _right)) 4
    ;; int16[] _front
    (* 2    (length _front)) 4
    ;; int16[] _back
    (* 2    (length _back)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16[] _left
     (write-long (length _left) s)
     (dotimes (i (length _left))
       (write-word (elt _left i) s)
       )
     ;; int16[] _right
     (write-long (length _right) s)
     (dotimes (i (length _right))
       (write-word (elt _right i) s)
       )
     ;; int16[] _front
     (write-long (length _front) s)
     (dotimes (i (length _front))
       (write-word (elt _front i) s)
       )
     ;; int16[] _back
     (write-long (length _back) s)
     (dotimes (i (length _back))
       (write-word (elt _back i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16[] _left
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _left (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _left i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;; int16[] _right
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _right (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _right i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;; int16[] _front
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _front (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _front i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;; int16[] _back
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _back (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _back i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;;
   self)
  )

(setf (get balance::ForceInformation :md5sum-) "94026a7e62b0f33847933ce7f6424b24")
(setf (get balance::ForceInformation :datatype-) "balance/ForceInformation")
(setf (get balance::ForceInformation :definition-)
      "int16[] left
int16[] right
int16[] front
int16[] back
")



(provide :balance/ForceInformation "94026a7e62b0f33847933ce7f6424b24")


