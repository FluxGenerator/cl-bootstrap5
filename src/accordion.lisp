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

(defmacro bs-accordion-header ((&key (h 2) (id "")) &body body)
  "Bootstrap accordion header."
  (case h
    (1 `(with-html-output (*standard-output*)
	 (:h1 :class "accordion-header" :id ,id ,@body)))
    (2 `(with-html-output (*standard-output*)
	 (:h2 :class "accordion-header" :id ,id ,@body)))
    (3 `(with-html-output (*standard-output*)
	 (:h3 :class "accordion-header" :id ,id ,@body)))
    (4 `(with-html-output (*standard-output*)
	 (:h4 :class "accordion-header" :id ,id ,@body)))
    (5 `(with-html-output (*standard-output*)
	  (:h5 :class "accordion-header" :id ,id ,@body)))
    (6 `(with-html-output (*standard-output*)
	  (:h6 :class "accordion-header" :id ,id ,@body)))))
