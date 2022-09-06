(in-package :cl-bootstrap5)

(defmacro bs-badge ((&key (id "") (type nil)
			  (rounded-pill nil)) &body body)
  "Bootstrap badge."
  `(bs
     (:span :id ,id :class (concatenate 'string
					"badge"
					(if ,type (format nil " badge-~a" ,type))
					(if ,rounded-pill (format nil " rounded-pill")))
	    ,@body)))


