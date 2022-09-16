(in-package :cl-bootstrap5)

(defmacro bs (&body body)
  "Base macro."
  `(with-html-output (*standard-output*)
     ,@body))

(defmacro bs-container ((&key (id "")) &body body)
  "Bootstrap container."
  `(bs
     (:div :id ,id :class "container"
	   ,@body)))

(defmacro bs-container-fluid ((&key (id nil)) &body body)
  "Bootstrap container-fluid."
  `(bs
     (:div :id ,id :class "container-fluid"
	   ,@body)))

(defmacro bs-col ((&key (width nil) (breakpoint nil) (auto nil)) &body body)
  "Bootstrap column."
  `(bs
     (:div :class (concatenate 'string "col"
			       (if ,width (format nil "-~a" ,width))
			       (if ,breakpoint
				   (if ,auto
				       (format nil " col-~a-auto" ,breakpoint)
				       (format nil " col-~a" ,breakpoint))))
	   ,@body)))

(defmacro bs-row ((&key (row-column nil)) &body body)
  "Bootstrap row."
  `(bs
     (:div :class (concatenate 'string "row"
			       (if ,row-column
				   (format nil " row-cols-~a" ,row-column)))
	   ,@body)))
