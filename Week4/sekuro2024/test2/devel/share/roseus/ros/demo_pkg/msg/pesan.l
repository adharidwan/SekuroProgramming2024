;; Auto-generated. Do not edit!


(when (boundp 'demo_pkg::pesan)
  (if (not (find-package "DEMO_PKG"))
    (make-package "DEMO_PKG"))
  (shadow 'pesan (find-package "DEMO_PKG")))
(unless (find-package "DEMO_PKG::PESAN")
  (make-package "DEMO_PKG::PESAN"))

(in-package "ROS")
;;//! \htmlinclude pesan.msg.html


(defclass demo_pkg::pesan
  :super ros::object
  :slots (_pesan1 _pesan2 _pesan3 ))

(defmethod demo_pkg::pesan
  (:init
   (&key
    ((:pesan1 __pesan1) 0)
    ((:pesan2 __pesan2) 0.0)
    ((:pesan3 __pesan3) "")
    )
   (send-super :init)
   (setq _pesan1 (round __pesan1))
   (setq _pesan2 (float __pesan2))
   (setq _pesan3 (string __pesan3))
   self)
  (:pesan1
   (&optional __pesan1)
   (if __pesan1 (setq _pesan1 __pesan1)) _pesan1)
  (:pesan2
   (&optional __pesan2)
   (if __pesan2 (setq _pesan2 __pesan2)) _pesan2)
  (:pesan3
   (&optional __pesan3)
   (if __pesan3 (setq _pesan3 __pesan3)) _pesan3)
  (:serialization-length
   ()
   (+
    ;; int64 _pesan1
    8
    ;; float64 _pesan2
    8
    ;; string _pesan3
    4 (length _pesan3)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _pesan1
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _pesan1 (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _pesan1) (= (length (_pesan1 . bv)) 2)) ;; bignum
              (write-long (ash (elt (_pesan1 . bv) 0) 0) s)
              (write-long (ash (elt (_pesan1 . bv) 1) -1) s))
             ((and (class _pesan1) (= (length (_pesan1 . bv)) 1)) ;; big1
              (write-long (elt (_pesan1 . bv) 0) s)
              (write-long (if (>= _pesan1 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _pesan1 s)(write-long (if (>= _pesan1 0) 0 #xffffffff) s)))
     ;; float64 _pesan2
       (sys::poke _pesan2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _pesan3
       (write-long (length _pesan3) s) (princ _pesan3 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _pesan1
#+(or :alpha :irix6 :x86_64)
      (setf _pesan1 (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _pesan1 (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; float64 _pesan2
     (setq _pesan2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _pesan3
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _pesan3 (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get demo_pkg::pesan :md5sum-) "20a3c179e0701ac679503dfd1cfe077f")
(setf (get demo_pkg::pesan :datatype-) "demo_pkg/pesan")
(setf (get demo_pkg::pesan :definition-)
      "int64 pesan1
float64 pesan2
string pesan3

")



(provide :demo_pkg/pesan "20a3c179e0701ac679503dfd1cfe077f")


