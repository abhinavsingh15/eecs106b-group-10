; Auto-generated. Do not edit!


(cl:in-package balance-msg)


;//! \htmlinclude ForceInformation.msg.html

(cl:defclass <ForceInformation> (roslisp-msg-protocol:ros-message)
  ((front
    :reader front
    :initarg :front
    :type cl:fixnum
    :initform 0)
   (left
    :reader left
    :initarg :left
    :type cl:fixnum
    :initform 0)
   (right
    :reader right
    :initarg :right
    :type cl:fixnum
    :initform 0)
   (back
    :reader back
    :initarg :back
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ForceInformation (<ForceInformation>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ForceInformation>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ForceInformation)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name balance-msg:<ForceInformation> is deprecated: use balance-msg:ForceInformation instead.")))

(cl:ensure-generic-function 'front-val :lambda-list '(m))
(cl:defmethod front-val ((m <ForceInformation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader balance-msg:front-val is deprecated.  Use balance-msg:front instead.")
  (front m))

(cl:ensure-generic-function 'left-val :lambda-list '(m))
(cl:defmethod left-val ((m <ForceInformation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader balance-msg:left-val is deprecated.  Use balance-msg:left instead.")
  (left m))

(cl:ensure-generic-function 'right-val :lambda-list '(m))
(cl:defmethod right-val ((m <ForceInformation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader balance-msg:right-val is deprecated.  Use balance-msg:right instead.")
  (right m))

(cl:ensure-generic-function 'back-val :lambda-list '(m))
(cl:defmethod back-val ((m <ForceInformation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader balance-msg:back-val is deprecated.  Use balance-msg:back instead.")
  (back m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ForceInformation>) ostream)
  "Serializes a message object of type '<ForceInformation>"
  (cl:let* ((signed (cl:slot-value msg 'front)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'left)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'right)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'back)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ForceInformation>) istream)
  "Deserializes a message object of type '<ForceInformation>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'front) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'left) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'right) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'back) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
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
  "1734456ca7c0ca9ac9138b86977d7ada")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ForceInformation)))
  "Returns md5sum for a message object of type 'ForceInformation"
  "1734456ca7c0ca9ac9138b86977d7ada")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ForceInformation>)))
  "Returns full string definition for message of type '<ForceInformation>"
  (cl:format cl:nil "int16 front~%int16 left~%int16 right~%int16 back~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ForceInformation)))
  "Returns full string definition for message of type 'ForceInformation"
  (cl:format cl:nil "int16 front~%int16 left~%int16 right~%int16 back~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ForceInformation>))
  (cl:+ 0
     2
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ForceInformation>))
  "Converts a ROS message object to a list"
  (cl:list 'ForceInformation
    (cl:cons ':front (front msg))
    (cl:cons ':left (left msg))
    (cl:cons ':right (right msg))
    (cl:cons ':back (back msg))
))
