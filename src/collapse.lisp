(in-package :cl-bootstrap5)

(defmacro bs-collapse ((&key (id "") (multi nil)) &body body)
  "Bootstrap collapse."
  `(bs
     (:div :id ,id
	   :class (concatenate 'string
			       "collapse"
			       (if ,multi " multi-collapse"))
	   ,@body)))
