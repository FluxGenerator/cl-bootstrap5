(in-package :cl-bootstrap5)

(defmacro bs-dropdown ((&key (id "")) &body body)
  "Bootstrap dropdown."
  `(bs
     (:div :id ,id :class "dropdown" ,@body)))

(defmacro bs-dropdown-menu ((&key (id "") (aria-labelledby "")
				  (dark nil)) &body body)
  "bootstrap dropdown menu."
  `(bs
     (:ul :id ,id :aria-labbelledby ,aria-labelledby
	  :class (concatenate 'string
			      "dropdown-menu"
			      (if ,dark " dropdown-menu-dark"))

	  ,@body)))

(defmacro bs-dropdown-item ((&key (id "") (href "")) &body body)
  "Bootstrap dropdown item."
  `(bs
     (:li (:a :class "dropdown-item" :id ,id :href ,href ,@body))))

(defmacro bs-dropdown-button ((&key (id "") (type "primary")
				    (data-bs-toggle "") (aria-expanded "false")
				    (size nil)) &body body)
  "Bootstrap dropdown button."
  `(bs
     (:button :id ,id :data-bs-toggle ,data-bs-toggle
	      :aria-expanded ,aria-expanded
	      :class (concatenate 'string
				  "dropdown-toggle"
				  (format nil " btn btn-~a" ,type)
				  (if ,size (format nil " btn-~a" ,size)))
	      ,@body)))

(defmacro bs-dropdown-button-split ((&key (id "") (type "primary")
					  (data-bs-toggle "") (aria-expanded "false")
					  (size nil)) &body body)
  "Bootstrap dropdown split button."
  `(bs
     (bs-button (:type ,type :size ,size))
     (:button :id ,id :data-bs-toggle ,data-bs-toggle
	      :aria-expanded ,aria-expanded
	      :class (concatenate 'string
				  "dropdown-toggle dropdown-toggle-split"
				  (format nil " btn btn-~a" ,type)
				  (if ,size (format nil " btn-~a" ,size)))
	      ,@body)))

(defmacro bs-dropup ((&key (id "")) &body body)
  "Bootstrap dropup."
  `(bs
     (:div :id ,id :class "btn-group dropup" ,@body)))
