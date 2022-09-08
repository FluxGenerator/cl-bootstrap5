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

(defmacro bs-button-close ((&key (id "") (type nil)
				 (size nil) (data-bs-dismiss "")
				 (aria-label "")) &body body)
  "Bootstrap close button."
  `(bs
     (:button :type "button" :id ,id :data-bs-dismiss ,data-bs-dismiss
	      :aria-label ,aria-label
	      :class (concatenate 'string
				  "btn-close"
				  (if ,type (format nil " btn-~a" ,type))
				  (if ,size (format nil " btn-~a" ,size)))
	      ,@body)))
