(in-package :cl-bootstrap5)

(defmacro bs-button-group ((&key (id "") (role "group")
				 (aria-label "") (vertical nil) (size nil))
			   &body body)
  "Bootstrap button group."
  `(bs
     (:div :id ,id :role ,role :aria-label ,aria-label
	   :class (concatenate 'string
			       "btn-group"
			       (if ,vertical (format nil "-vertical"))
			       (if ,size (format nil " btn-group-~a" ,size)))
	   ,@body)))
