(in-package :cl-bootstrap5)

(defmacro bs-accordion ((&key (id "")) &body body)
    "Bootstrap accordion."
    `(with-html-output (*standard-output*)
	 (:div :class "accordion" :id ,id
	       ,@body)))

(defmacro bs-accordion-item ((&key (id "")) &body body)
  "Bootstrap accordion item."
  `(with-html-output (*standard-output*)
     (:div :class "accordion-item" :id ,id
	   ,@body)))
