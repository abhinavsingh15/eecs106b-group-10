; Auto-generated. Do not edit!


(cl:in-package balance-msg)


;//! \htmlinclude ForceInformation.msg.html

(cl:defclass <ForceInformation> (roslisp-msg-protocol:ros-message)
  ((left
    :reader left
    :initarg :left
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (right
    :reader right
    :initarg :right
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (front
    :reader front
    :initarg :front
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (back
    :reader back
    :initarg :back
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass ForceInformation (<ForceInformation>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ForceInformation>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ForceInformation)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name balance-msg:<ForceInformation> is deprecated: use balance-msg:ForceInformation instead.")))

(cl:ensure-generic-function 'left-val :lambda-list '(m))
(cl:defmethod left-val ((m <ForceInformation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader balance-msg:left-val is deprecated.  Use balance-msg:left instead.")
  (left m))

(cl:ensure-generic-function 'right-val :lambda-list '(m))
(cl:defmethod right-val ((m <ForceInformation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader balance-msg:right-val is deprecated.  Use balance-msg:right instead.")
  (right m))

(cl:ensure-generic-function 'front-val :lambda-list '(m))
(cl:defmethod front-val ((m <ForceInformation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader balance-msg:front-val is deprecated.  Use balance-msg:front instead.")
  (front m))

(cl:ensure-generic-function 'back-val :lambda-list '(m))
(cl:defmethod back-val ((m <ForceInformation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader balance-msg:back-val is deprecated.  Use balance-msg:back instead.")
  (back m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ForceInformation>) ostream)
  "Serializes a message object of type '<ForceInformation>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'left))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    ))
   (cl:slot-value msg 'left))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'right))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    ))
   (cl:slot-value msg 'right))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'front))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    ))
   (cl:slot-value msg 'front))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'back))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    ))
   (cl:slot-value msg 'back))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ForceInformation>) istream)
  "Deserializes a message object of type '<ForceInformation>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'left) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'left)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536)))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'right) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'right)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536)))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'front) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'front)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536)))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'back) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'back)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ForceInformation>)))
  "Returns string type for a message object of type '<ForceInformation>"
  "balance/ForceInformation")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ForceInformation)))
  "Returns string type for a message object of type 'ForceInformation"
  "balance/ForceInformation")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ForceInformation>)))
  "Returns md5sum for a message object of type '<ForceInformation>"
  "94026a7e62b0f33847933ce7f6424b24")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ForceInformation)))
  "Returns md5sum for a message object of type 'ForceInformation"
  "94026a7e62b0f33847933ce7f6424b24")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ForceInformation>)))
  "Returns full string definition for message of type '<ForceInformation>"
  (cl:format cl:nil "int16[] left~%int16[] right~%int16[] front~%int16[] back~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ForceInformation)))
  "Returns full string definition for message of type 'ForceInformation"
  (cl:format cl:nil "int16[] left~%int16[] right~%int16[] front~%int16[] back~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ForceInformation>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'left) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'right) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'front) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'back) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ForceInformation>))
  "Converts a ROS message object to a list"
  (cl:list 'ForceInformation
    (cl:cons ':left (left msg))
    (cl:cons ':right (right msg))
    (cl:cons ':front (front msg))
    (cl:cons ':back (back msg))
))
