(in-package :cl-bootstrap5)

(defmacro bs-toast ((&key (id "") (bg "light") (text "black")) &body body)
  "Bootstrap toast."
  `(bs
     (:div :id ,id :role "alert" :aria-live "assertive" :aria-atomic "true"
	   :class (concatinate 'string
			       "toast"
			       (format nil " bg-~a" ,bg)
			       (format nil " text-~a" ,text)
	   ,@body))))

(defmacro bs-toast-header ((&key (id "")) &body body)
  "Bootstrap toast header."
  `(bs
     (:div :id ,id :class "toast-header" ,@body)))

(defmacro bs-toast-body ((&key (id "")) &body body)
  "Bootstrap toast body."
  `(bs
     (:div :id ,id :class "toast-body" ,@body)))
