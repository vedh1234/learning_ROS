;; Auto-generated. Do not edit!


(when (boundp 'day_02::motor_parameter)
  (if (not (find-package "DAY_02"))
    (make-package "DAY_02"))
  (shadow 'motor_parameter (find-package "DAY_02")))
(unless (find-package "DAY_02::MOTOR_PARAMETER")
  (make-package "DAY_02::MOTOR_PARAMETER"))

(in-package "ROS")
;;//! \htmlinclude motor_parameter.msg.html


(defclass day_02::motor_parameter
  :super ros::object
  :slots (_id _description _speed _enc_count _accelaration ))

(defmethod day_02::motor_parameter
  (:init
   (&key
    ((:id __id) 0)
    ((:description __description) "")
    ((:speed __speed) 0.0)
    ((:enc_count __enc_count) 0)
    ((:accelaration __accelaration) 0.0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _description (string __description))
   (setq _speed (float __speed))
   (setq _enc_count (round __enc_count))
   (setq _accelaration (float __accelaration))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:description
   (&optional __description)
   (if __description (setq _description __description)) _description)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:enc_count
   (&optional __enc_count)
   (if __enc_count (setq _enc_count __enc_count)) _enc_count)
  (:accelaration
   (&optional __accelaration)
   (if __accelaration (setq _accelaration __accelaration)) _accelaration)
  (:serialization-length
   ()
   (+
    ;; int32 _id
    4
    ;; string _description
    4 (length _description)
    ;; float32 _speed
    4
    ;; int64 _enc_count
    8
    ;; float32 _accelaration
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;; string _description
       (write-long (length _description) s) (princ _description s)
     ;; float32 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int64 _enc_count
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _enc_count (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _enc_count) (= (length (_enc_count . bv)) 2)) ;; bignum
              (write-long (ash (elt (_enc_count . bv) 0) 0) s)
              (write-long (ash (elt (_enc_count . bv) 1) -1) s))
             ((and (class _enc_count) (= (length (_enc_count . bv)) 1)) ;; big1
              (write-long (elt (_enc_count . bv) 0) s)
              (write-long (if (>= _enc_count 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _enc_count s)(write-long (if (>= _enc_count 0) 0 #xffffffff) s)))
     ;; float32 _accelaration
       (sys::poke _accelaration (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _description
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _description (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _speed
     (setq _speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int64 _enc_count
#+(or :alpha :irix6 :x86_64)
      (setf _enc_count (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _enc_count (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; float32 _accelaration
     (setq _accelaration (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get day_02::motor_parameter :md5sum-) "33a9c9e48425fe54a289968ec836ca62")
(setf (get day_02::motor_parameter :datatype-) "day_02/motor_parameter")
(setf (get day_02::motor_parameter :definition-)
      "int32 id
string description
float32 speed
int64 enc_count
float32 accelaration

")



(provide :day_02/motor_parameter "33a9c9e48425fe54a289968ec836ca62")


