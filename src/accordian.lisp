(in-package :cl-bootstrap5)

(defmacro bs-accordian ((&key (id "")) &body body)
    "Bootstrap accordian."
    `(with-html-output (*standard-output*)
	 (:div :class "accordian" :id ,id
	       ,@body)))

(defmacro bs-accordian-item ((&key (id "")) &body body)
  "Bootstrap accordian item."
  `(with-html-output (*standard-output*)
     (:div :class "accordian-item" :id ,id
	   ,@body)))
