(in-package :cl-bootstrap5)

(defmacro bs-container ((&key (type nil)) &body body)
    "Bootstrap container."
    `(with-html-output (*standard-output*)
	 (:div :class (concatenate 'string "container"
				   (if ,type (format nil "-~a" ,type)))
	       ,@body)))

(defmacro bs-col ((&key (width nil) (breakpoint nil) (auto nil)) &body body)
    "Bootstrap column."
    `(with-html-output(*standard-output*)
	 (:div :class (concatenate 'string "col"
				   (if ,width (format nil "-~a" ,size))
				   (if ,breakpoint
				       (if ,auto
					   (format nil " col-~a-auto" ,breakpoint)
					   (format nil " col-~a" ,breakpoint))))
	       ,@body)))

(defmacro bs-row ((&key (row-column nil)) &body body)
    "Bootstrap row."
    `(with-html-output (*standard-output*)
	 (:div :class (concatenate 'string "row"
				   (if ,row-column
				       (format nil " row-cols-~a" ,row-column)))
	       ,@body)))
