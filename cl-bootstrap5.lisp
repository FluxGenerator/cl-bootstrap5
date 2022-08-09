(in-package :cl-bootstrap5)

(defmacro bs-container ((&key (type nil)) &body body)
    "Bootstrap container."
    `(with-html-output (*standard-output*)
	 (:div :class (concatenate 'string "container"
				   (if ,type (format nil "-~a" ,type))) ,@body))))

