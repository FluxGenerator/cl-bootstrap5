(in-package :cl-bootstrap5)

(defmacro bs-progressbar ((&key (type nil) (striped nil) (aria-valuenow nil) (id "")
				(animated nil)(aria-valuemin nil) (aria-valuemax nil)
				(fill 0) (height "20")) &body body)
  "Bootstrap progress-bar."
  `(bs
     (:div :class "progress" :id ,id :style (format nil "height: ~apx" ,height)
	   (:div :class (concatenate 'string "progress-bar"
				     (if ,striped " progress-bar-striped")
				     (if ,type (format nil " progress-bar-~a" ,type))
				     (if ,animated " progress-bar-animated"))
		 :role "progress-bar" :aria-valuenow ,aria-valuenow
		 :aria-valuemin ,aria-valuemin :aria-valuemax ,aria-valuemax
		 :style (format nil "width: ~a%;" ,fill)
		 (:span :class "sr-only" ,@body)))))


(defmacro bs-progressbar-labelled ((&key (type nil) (striped nil) (aria-valuenow nil)
					 (id "") (animated nil) (aria-valuemin nil)
					 (height "20") (aria-valuemax nil) (fill 0))
				   &body body)
  "Bootstrap progressbar labelled."
  `(bs
     (:div :class "progress" :id ,id :style (format nil "height: ~apx" ,height)
	   (:div :class (concatenate 'string "progress-bar"
				     (if ,striped (format nil " progress-bar-striped"))
				     (if ,type (format nil " progress-bar-~a" ,type))
				     (if ,animated " progress-bar-animated")))
		 :role "progress-bar" :aria-valuenow ,aria-valuenow
		 :aria-valuemin ,aria-valuemin :aria-valuemax ,aria-valuemax
		 :style (format nil "width: ~a%;" ,fill)
		 (:span ,@body))))
