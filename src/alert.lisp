(in-package :cl-bootstrap5)

(defmacro bs-alert ((&key (id "") (type nil) (dismissible nil)) &body body)
  "Bootstrap alert."
  `(bs
     (:div :id ,id :role "alert"
	   :class (concatenate 'string
			       "alert"
			       (if ,type (format nil " alert-~a" ,type))
			       (if ,dismissible (format nil " alert-dismissible")))
	  ,@body)))

(defmacro bs-alert-link ((&key (id "") (url "")) &body body)
  "Bootstrap alert link."
  `(bs
     (:a :id ,id :href ,url :class "alert-link"
	 ,@body)))

(defmacro bs-alert-heading ((&key (id "") (h 2)) &body body)
  "Bootstrap alert heading."
  (case h
    (1 `(bs
	  (:h1 :id ,id :class "alert-heading" ,@body)))
    (2 `(bs
	  (:h2 :id ,id :class "alert-heading" ,@body)))
    (3 `(bs
	  (:h3 :id ,id :class "alert-heading" ,@body)))
    (4 `(bs
	  (:h4 :id ,id :class "alert-heading" ,@body)))
    (5 `(bs
	  (:h5 :id ,id :class "alert-heading" ,@body)))
    (6 `(bs
	  (:h6 :id ,id :class "alert-heading" ,@body)))))
