;; Auto-generated. Do not edit!


(when (boundp 'balance::PositionInformation)
  (if (not (find-package "BALANCE"))
    (make-package "BALANCE"))
  (shadow 'PositionInformation (find-package "BALANCE")))
(unless (find-package "BALANCE::POSITIONINFORMATION")
  (make-package "BALANCE::POSITIONINFORMATION"))

(in-package "ROS")
;;//! \htmlinclude PositionInformation.msg.html


(defclass balance::PositionInformation
  :super ros::object
  :slots (_x _y _time ))

(defmethod balance::PositionInformation
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:time __time) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _time (float __time))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:serialization-length
   ()
   (+
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float64 _time
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float64 _time
       (sys::poke _time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float64 _time
     (setq _time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get balance::PositionInformation :md5sum-) "08f6c06eb104dc3528cd793d99e2022d")
(setf (get balance::PositionInformation :datatype-) "balance/PositionInformation")
(setf (get balance::PositionInformation :definition-)
      "float32 x
float32 y
float64 time
")



(provide :balance/PositionInformation "08f6c06eb104dc3528cd793d99e2022d")


