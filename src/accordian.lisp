(in-package :cl-bootstrap5)

(defmacro bs-accordian ((&key (id nil)) &body body)
    "Bootstrap accordian."
    `(with-html-output (*standard-output*)
	 (:div :class "accordian" (if ,id (:id ,id))
	       ,@body)))
