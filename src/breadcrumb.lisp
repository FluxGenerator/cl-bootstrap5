(in-package :cl-bootstrap5)

(defmacro bs-breadcrumb ((&key (id "") (aria-label "breadcrumb")
			       (divider "/")) &body body)
  "Bootstrap breadcrumb."
  `(bs
     (:nav  :id ,id :aria-label ,aria-label
	    :style (format nil "--bs-breadcrumb-divider: '~a';" ,divider)
	   (:ol :class "breadcrumb"
		,@body))))

(defmacro bs-breadcrumb-item ((&key (id "") (aria-current "")
				    (active nil)) &body body)
  "Bootstrap breadcrumb item."
  `(bs
     (:li :id ,id :aria-current ,aria-current
	  :class (concatenate 'string
			      "breadcrumb-item"
			      (if ,active (format nil " active")))
	  ,@body)))
