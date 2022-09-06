(in-package :cl-bootstrap5)

(defmacro bs-button ((&key (id "") (type nil)
			   (size nil)) &body body)
  "Bootstrap button."
  `(bs
     (:button :type "button" :id ,id
	      :class (concatenate 'string
				  "btn"
				  (if ,type (format nil " btn-~a" ,type))
				  (if ,size (format nil " btn-~a" ,size)))
	      ,@body)))

