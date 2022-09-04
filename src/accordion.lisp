(in-package :cl-bootstrap5)

(defmacro bs-accordion ((&key (id "")) &body body)
    "Bootstrap accordion."
  `(bs
     (:div :class "accordion" :id ,id
	   ,@body)))

(defmacro bs-accordion-item ((&key (id "")) &body body)
  "Bootstrap accordion item."
  `(bs 
     (:div :class "accordion-item" :id ,id
	   ,@body)))

(defmacro bs-accordion-header ((&key (h 2) (id "")) &body body)
  "Bootstrap accordion header."
  (case h
    (1 `(bs
	  (:h1 :class "accordion-header" :id ,id ,@body)))
    (2 `(bs
	  (:h2 :class "accordion-header" :id ,id ,@body)))
    (3 `(bs
	  (:h3 :class "accordion-header" :id ,id ,@body)))
    (4 `(bs
	 (:h4 :class "accordion-header" :id ,id ,@body)))
    (5 `(bs
	  (:h5 :class "accordion-header" :id ,id ,@body)))
    (6 `(bs
	  (:h6 :class "accordion-header" :id ,id ,@body)))))
