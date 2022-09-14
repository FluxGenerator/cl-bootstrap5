(in-package :cl-bootstrap5)

(defmacro bs-nav ((&key (id "") (alignment nil) (vertical nil))
		  &body body)
  "Bootstrap nav."
  `(bs
     (:ul :id ,id
	  :class (concatenate 'string
			      "nav"
			      (if ,vertical " flex-column" "")
			      (if ,alignment
				  (format nil
					  " justify-content-~a"
					  ,alignment) ""))
	  ,@body)))

(defmacro bs-nav-item ((&key (id "") (dropdown nil)) &body body )
  "Bootstrap nav."
  `(bs
     (:li :id ,id :class (concatenate 'string
				      "nav-item"
				      (if ,dropdown " dropdown"))
	  ,@body)))
