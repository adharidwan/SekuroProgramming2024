;; Auto-generated. Do not edit!


(when (boundp 'topic_day4_pkg::person)
  (if (not (find-package "TOPIC_DAY4_PKG"))
    (make-package "TOPIC_DAY4_PKG"))
  (shadow 'person (find-package "TOPIC_DAY4_PKG")))
(unless (find-package "TOPIC_DAY4_PKG::PERSON")
  (make-package "TOPIC_DAY4_PKG::PERSON"))

(in-package "ROS")
;;//! \htmlinclude person.msg.html


(defclass topic_day4_pkg::person
  :super ros::object
  :slots (_nama _usia _tinggi _kehadiran ))

(defmethod topic_day4_pkg::person
  (:init
   (&key
    ((:nama __nama) "")
    ((:usia __usia) 0)
    ((:tinggi __tinggi) 0.0)
    ((:kehadiran __kehadiran) nil)
    )
   (send-super :init)
   (setq _nama (string __nama))
   (setq _usia (round __usia))
   (setq _tinggi (float __tinggi))
   (setq _kehadiran __kehadiran)
   self)
  (:nama
   (&optional __nama)
   (if __nama (setq _nama __nama)) _nama)
  (:usia
   (&optional __usia)
   (if __usia (setq _usia __usia)) _usia)
  (:tinggi
   (&optional __tinggi)
   (if __tinggi (setq _tinggi __tinggi)) _tinggi)
  (:kehadiran
   (&optional (__kehadiran :null))
   (if (not (eq __kehadiran :null)) (setq _kehadiran __kehadiran)) _kehadiran)
  (:serialization-length
   ()
   (+
    ;; string _nama
    4 (length _nama)
    ;; int64 _usia
    8
    ;; float64 _tinggi
    8
    ;; bool _kehadiran
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _nama
       (write-long (length _nama) s) (princ _nama s)
     ;; int64 _usia
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _usia (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _usia) (= (length (_usia . bv)) 2)) ;; bignum
              (write-long (ash (elt (_usia . bv) 0) 0) s)
              (write-long (ash (elt (_usia . bv) 1) -1) s))
             ((and (class _usia) (= (length (_usia . bv)) 1)) ;; big1
              (write-long (elt (_usia . bv) 0) s)
              (write-long (if (>= _usia 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _usia s)(write-long (if (>= _usia 0) 0 #xffffffff) s)))
     ;; float64 _tinggi
       (sys::poke _tinggi (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _kehadiran
       (if _kehadiran (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _nama
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _nama (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int64 _usia
#+(or :alpha :irix6 :x86_64)
      (setf _usia (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _usia (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; float64 _tinggi
     (setq _tinggi (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _kehadiran
     (setq _kehadiran (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get topic_day4_pkg::person :md5sum-) "642dd92b70eae635c30acd8224032ab7")
(setf (get topic_day4_pkg::person :datatype-) "topic_day4_pkg/person")
(setf (get topic_day4_pkg::person :definition-)
      "string nama
int64 usia
float64 tinggi
bool kehadiran
")



(provide :topic_day4_pkg/person "642dd92b70eae635c30acd8224032ab7")


