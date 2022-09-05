(in-package :cl-bootstrap5)

(defmacro bs-accordion ((&key (id "") (flush nil)) &body body)
    "Bootstrap accordion."
  `(bs
     (:div :id ,id :class (concatenate 'string
				       "accordion"
				       (if ,flush (format nil " accordion-flush")))
	   ,@body)))

(defmacro bs-accordion-body ((&key (id "")) &body body)
  `(bs
     (:div :class "accordion-body" :id ,id
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

(defmacro bs-accordion-button ((&key (id "") (collapsed nil) (data-bs-toggle "")
				     (target "") (aria-expanded "false")
				     (aria-controls "")) &body body)
  "Bootstrap accordion button."
  `(bs
     (:button :type "button" :data-bs-toggle ,data-bs-toggle
	      :data-bs-target ,target :aria-expanded ,aria-expanded
	      :aria-controls ,aria-controls :id ,id
	      :class (concatenate 'string
				  "accordion-button"
				  (if ,collapsed
				      (format nil " collapsed")))
	      ,@body)))


(defmacro bs-accordion-collapse ((&key (id "") (aria-labelledby "")
				       (data-bs-parent "") (show nil))
				 &body body)
  "Bootstrap accordion collapse."
  `(bs
     (:div :id ,id :data-bs-parent ,data-bs-parent
	   :aria-labbelledby ,aria-labelledby
	   :class (concatenate 'string
			       "accordion-collapse collapse"
			       (if ,show (format nil " show")))
	   ,@body)))
