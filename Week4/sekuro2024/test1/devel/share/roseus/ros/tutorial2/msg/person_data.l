;; Auto-generated. Do not edit!


(when (boundp 'tutorial2::person_data)
  (if (not (find-package "TUTORIAL2"))
    (make-package "TUTORIAL2"))
  (shadow 'person_data (find-package "TUTORIAL2")))
(unless (find-package "TUTORIAL2::PERSON_DATA")
  (make-package "TUTORIAL2::PERSON_DATA"))

(in-package "ROS")
;;//! \htmlinclude person_data.msg.html


(defclass tutorial2::person_data
  :super ros::object
  :slots (_name _age _home ))

(defmethod tutorial2::person_data
  (:init
   (&key
    ((:name __name) "")
    ((:age __age) 0)
    ((:home __home) "")
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _age (round __age))
   (setq _home (string __home))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:age
   (&optional __age)
   (if __age (setq _age __age)) _age)
  (:home
   (&optional __home)
   (if __home (setq _home __home)) _home)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; int64 _age
    8
    ;; string _home
    4 (length _home)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; int64 _age
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _age (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _age) (= (length (_age . bv)) 2)) ;; bignum
              (write-long (ash (elt (_age . bv) 0) 0) s)
              (write-long (ash (elt (_age . bv) 1) -1) s))
             ((and (class _age) (= (length (_age . bv)) 1)) ;; big1
              (write-long (elt (_age . bv) 0) s)
              (write-long (if (>= _age 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _age s)(write-long (if (>= _age 0) 0 #xffffffff) s)))
     ;; string _home
       (write-long (length _home) s) (princ _home s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int64 _age
#+(or :alpha :irix6 :x86_64)
      (setf _age (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _age (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; string _home
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _home (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get tutorial2::person_data :md5sum-) "249a937db1a1921606ac75cb2cec8dca")
(setf (get tutorial2::person_data :datatype-) "tutorial2/person_data")
(setf (get tutorial2::person_data :definition-)
      "string name
int64 age
string home
")



(provide :tutorial2/person_data "249a937db1a1921606ac75cb2cec8dca")


