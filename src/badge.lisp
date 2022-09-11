(in-package :cl-bootstrap5)

(defmacro bs-badge ((&key (id "") (type "secondary")
			  (rounded-pill nil)) &body body)
  "Bootstrap badge."
  `(bs
     (:span :id ,id :class (concatenate 'string
					"badge"
					(format nil " bg-~a" ,type)
					(if ,rounded-pill (format nil " rounded-pill")))
	    ,@body)))
