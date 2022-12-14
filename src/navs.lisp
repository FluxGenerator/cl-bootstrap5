(in-package :cl-bootstrap5)

(defmacro bs-nav ((&key (id "") (alignment nil) (vertical nil))
		  &body body)
  "Bootstrap nav."
  `(bs
    (:ul :id ,id
	 :class (concatenate 'string
			     "nav"
			     (if ,vertical " flex-column" "")
			     (if ,alignment
				 (format nil
					 " justify-content-~a"
					 ,alignment) ""))
	 ,@body)))

(defmacro bs-nav-tab ((&key (id "")) &body body)
  "Bootstrap nav-tab."
  `(bs
    (:div :class "nav nav-tabs") :id ,id :role "tablist" ,@body))

(defmacro bs-nav-pill ((&key (id "") (fill nil) (justified nil)) &body body)
  `(bs
    (:div :id ,id :class (concatenate 'string
				      "nav nav-pills"
				      (if ,fill " nav-fill" "")
				      (if ,justified " nav-justified" ""))
	  ,@body)))

(defmacro bs-nav-item ((&key (id "") (dropdown nil)) &body body )
  "Bootstrap nav."
  `(bs
    (:li :id ,id :class (concatenate 'string
				     "nav-item"
				     (if ,dropdown " dropdown"))
	 ,@body)))

(defmacro bs-nav-link ((&key (id "") (href "") (active nil)
			     (disabled nil)) &body body)
  "Bootstrap nav link."
  `(bs
    (:a :id ,id :href ,href
	:tabindex (if ,disabled "-1" "")
	:aria-disabled (if ,disabled "true" "")
	:aria-current (if ,active "page" "")
	:class (concatenate 'string
			    "nav-link"
			    (if ,active " active" "")
			    (if ,disabled " disabled" ""))
	,@body)))
