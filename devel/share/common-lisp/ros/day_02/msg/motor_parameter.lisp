; Auto-generated. Do not edit!


(cl:in-package day_02-msg)


;//! \htmlinclude motor_parameter.msg.html

(cl:defclass <motor_parameter> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (description
    :reader description
    :initarg :description
    :type cl:string
    :initform "")
   (speed
    :reader speed
    :initarg :speed
    :type cl:float
    :initform 0.0)
   (enc_count
    :reader enc_count
    :initarg :enc_count
    :type cl:integer
    :initform 0)
   (accelaration
    :reader accelaration
    :initarg :accelaration
    :type cl:float
    :initform 0.0))
)

(cl:defclass motor_parameter (<motor_parameter>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <motor_parameter>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'motor_parameter)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name day_02-msg:<motor_parameter> is deprecated: use day_02-msg:motor_parameter instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <motor_parameter>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader day_02-msg:id-val is deprecated.  Use day_02-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'description-val :lambda-list '(m))
(cl:defmethod description-val ((m <motor_parameter>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader day_02-msg:description-val is deprecated.  Use day_02-msg:description instead.")
  (description m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <motor_parameter>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader day_02-msg:speed-val is deprecated.  Use day_02-msg:speed instead.")
  (speed m))

(cl:ensure-generic-function 'enc_count-val :lambda-list '(m))
(cl:defmethod enc_count-val ((m <motor_parameter>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader day_02-msg:enc_count-val is deprecated.  Use day_02-msg:enc_count instead.")
  (enc_count m))

(cl:ensure-generic-function 'accelaration-val :lambda-list '(m))
(cl:defmethod accelaration-val ((m <motor_parameter>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader day_02-msg:accelaration-val is deprecated.  Use day_02-msg:accelaration instead.")
  (accelaration m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <motor_parameter>) ostream)
  "Serializes a message object of type '<motor_parameter>"
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'description))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'description))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'enc_count)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'accelaration))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <motor_parameter>) istream)
  "Deserializes a message object of type '<motor_parameter>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'description) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'description) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'enc_count) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'accelaration) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<motor_parameter>)))
  "Returns string type for a message object of type '<motor_parameter>"
  "day_02/motor_parameter")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'motor_parameter)))
  "Returns string type for a message object of type 'motor_parameter"
  "day_02/motor_parameter")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<motor_parameter>)))
  "Returns md5sum for a message object of type '<motor_parameter>"
  "33a9c9e48425fe54a289968ec836ca62")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'motor_parameter)))
  "Returns md5sum for a message object of type 'motor_parameter"
  "33a9c9e48425fe54a289968ec836ca62")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<motor_parameter>)))
  "Returns full string definition for message of type '<motor_parameter>"
  (cl:format cl:nil "int32 id~%string description~%float32 speed~%int64 enc_count~%float32 accelaration~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'motor_parameter)))
  "Returns full string definition for message of type 'motor_parameter"
  (cl:format cl:nil "int32 id~%string description~%float32 speed~%int64 enc_count~%float32 accelaration~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <motor_parameter>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'description))
     4
     8
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <motor_parameter>))
  "Converts a ROS message object to a list"
  (cl:list 'motor_parameter
    (cl:cons ':id (id msg))
    (cl:cons ':description (description msg))
    (cl:cons ':speed (speed msg))
    (cl:cons ':enc_count (enc_count msg))
    (cl:cons ':accelaration (accelaration msg))
))
