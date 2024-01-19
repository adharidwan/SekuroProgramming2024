;; Auto-generated. Do not edit!


(when (boundp 'demo_pkg::AddTwoInts)
  (if (not (find-package "DEMO_PKG"))
    (make-package "DEMO_PKG"))
  (shadow 'AddTwoInts (find-package "DEMO_PKG")))
(unless (find-package "DEMO_PKG::ADDTWOINTS")
  (make-package "DEMO_PKG::ADDTWOINTS"))
(unless (find-package "DEMO_PKG::ADDTWOINTSREQUEST")
  (make-package "DEMO_PKG::ADDTWOINTSREQUEST"))
(unless (find-package "DEMO_PKG::ADDTWOINTSRESPONSE")
  (make-package "DEMO_PKG::ADDTWOINTSRESPONSE"))

(in-package "ROS")





(defclass demo_pkg::AddTwoIntsRequest
  :super ros::object
  :slots (_value1 _value2 ))

(defmethod demo_pkg::AddTwoIntsRequest
  (:init
   (&key
    ((:value1 __value1) 0)
    ((:value2 __value2) 0)
    )
   (send-super :init)
   (setq _value1 (round __value1))
   (setq _value2 (round __value2))
   self)
  (:value1
   (&optional __value1)
   (if __value1 (setq _value1 __value1)) _value1)
  (:value2
   (&optional __value2)
   (if __value2 (setq _value2 __value2)) _value2)
  (:serialization-length
   ()
   (+
    ;; int64 _value1
    8
    ;; int64 _value2
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _value1
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _value1 (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _value1) (= (length (_value1 . bv)) 2)) ;; bignum
              (write-long (ash (elt (_value1 . bv) 0) 0) s)
              (write-long (ash (elt (_value1 . bv) 1) -1) s))
             ((and (class _value1) (= (length (_value1 . bv)) 1)) ;; big1
              (write-long (elt (_value1 . bv) 0) s)
              (write-long (if (>= _value1 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _value1 s)(write-long (if (>= _value1 0) 0 #xffffffff) s)))
     ;; int64 _value2
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _value2 (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _value2) (= (length (_value2 . bv)) 2)) ;; bignum
              (write-long (ash (elt (_value2 . bv) 0) 0) s)
              (write-long (ash (elt (_value2 . bv) 1) -1) s))
             ((and (class _value2) (= (length (_value2 . bv)) 1)) ;; big1
              (write-long (elt (_value2 . bv) 0) s)
              (write-long (if (>= _value2 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _value2 s)(write-long (if (>= _value2 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _value1
#+(or :alpha :irix6 :x86_64)
      (setf _value1 (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _value1 (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _value2
#+(or :alpha :irix6 :x86_64)
      (setf _value2 (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _value2 (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass demo_pkg::AddTwoIntsResponse
  :super ros::object
  :slots (_sumvalue ))

(defmethod demo_pkg::AddTwoIntsResponse
  (:init
   (&key
    ((:sumvalue __sumvalue) 0)
    )
   (send-super :init)
   (setq _sumvalue (round __sumvalue))
   self)
  (:sumvalue
   (&optional __sumvalue)
   (if __sumvalue (setq _sumvalue __sumvalue)) _sumvalue)
  (:serialization-length
   ()
   (+
    ;; int64 _sumvalue
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _sumvalue
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _sumvalue (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _sumvalue) (= (length (_sumvalue . bv)) 2)) ;; bignum
              (write-long (ash (elt (_sumvalue . bv) 0) 0) s)
              (write-long (ash (elt (_sumvalue . bv) 1) -1) s))
             ((and (class _sumvalue) (= (length (_sumvalue . bv)) 1)) ;; big1
              (write-long (elt (_sumvalue . bv) 0) s)
              (write-long (if (>= _sumvalue 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _sumvalue s)(write-long (if (>= _sumvalue 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _sumvalue
#+(or :alpha :irix6 :x86_64)
      (setf _sumvalue (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _sumvalue (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass demo_pkg::AddTwoInts
  :super ros::object
  :slots ())

(setf (get demo_pkg::AddTwoInts :md5sum-) "bebbfb82b9366874b8dd45181885da66")
(setf (get demo_pkg::AddTwoInts :datatype-) "demo_pkg/AddTwoInts")
(setf (get demo_pkg::AddTwoInts :request) demo_pkg::AddTwoIntsRequest)
(setf (get demo_pkg::AddTwoInts :response) demo_pkg::AddTwoIntsResponse)

(defmethod demo_pkg::AddTwoIntsRequest
  (:response () (instance demo_pkg::AddTwoIntsResponse :init)))

(setf (get demo_pkg::AddTwoIntsRequest :md5sum-) "bebbfb82b9366874b8dd45181885da66")
(setf (get demo_pkg::AddTwoIntsRequest :datatype-) "demo_pkg/AddTwoIntsRequest")
(setf (get demo_pkg::AddTwoIntsRequest :definition-)
      "int64 value1
int64 value2
---
int64 sumvalue
")

(setf (get demo_pkg::AddTwoIntsResponse :md5sum-) "bebbfb82b9366874b8dd45181885da66")
(setf (get demo_pkg::AddTwoIntsResponse :datatype-) "demo_pkg/AddTwoIntsResponse")
(setf (get demo_pkg::AddTwoIntsResponse :definition-)
      "int64 value1
int64 value2
---
int64 sumvalue
")



(provide :demo_pkg/AddTwoInts "bebbfb82b9366874b8dd45181885da66")


