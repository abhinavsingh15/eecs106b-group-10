; Auto-generated. Do not edit!


(cl:in-package balance-msg)


;//! \htmlinclude PositionInformation.msg.html

(cl:defclass <PositionInformation> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (time
    :reader time
    :initarg :time
    :type cl:float
    :initform 0.0))
)

(cl:defclass PositionInformation (<PositionInformation>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PositionInformation>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PositionInformation)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name balance-msg:<PositionInformation> is deprecated: use balance-msg:PositionInformation instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <PositionInformation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader balance-msg:x-val is deprecated.  Use balance-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <PositionInformation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader balance-msg:y-val is deprecated.  Use balance-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'time-val :lambda-list '(m))
(cl:defmethod time-val ((m <PositionInformation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader balance-msg:time-val is deprecated.  Use balance-msg:time instead.")
  (time m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PositionInformation>) ostream)
  "Serializes a message object of type '<PositionInformation>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PositionInformation>) istream)
  "Deserializes a message object of type '<PositionInformation>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'time) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PositionInformation>)))
  "Returns string type for a message object of type '<PositionInformation>"
  "balance/PositionInformation")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PositionInformation)))
  "Returns string type for a message object of type 'PositionInformation"
  "balance/PositionInformation")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PositionInformation>)))
  "Returns md5sum for a message object of type '<PositionInformation>"
  "08f6c06eb104dc3528cd793d99e2022d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PositionInformation)))
  "Returns md5sum for a message object of type 'PositionInformation"
  "08f6c06eb104dc3528cd793d99e2022d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PositionInformation>)))
  "Returns full string definition for message of type '<PositionInformation>"
  (cl:format cl:nil "float32 x~%float32 y~%float64 time~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PositionInformation)))
  "Returns full string definition for message of type 'PositionInformation"
  (cl:format cl:nil "float32 x~%float32 y~%float64 time~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PositionInformation>))
  (cl:+ 0
     4
     4
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PositionInformation>))
  "Converts a ROS message object to a list"
  (cl:list 'PositionInformation
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':time (time msg))
))
