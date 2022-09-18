(in-package :cl-bootstrap5)

(defmacro bs-pagination ((&key (id "") (aria-label "") (size nil)
			       (alignment nil)) &body body)
  "Bootstrap pagination."
  `(bs
     (:nav :aria-label ,aria-label :id ,id
	   (:ul :class (concatenate 'string
				    "pagination"
				    (if ,size (format nil " pagination-~a" ,size))
				    (if ,alignment ,alignment))
		,@body))))

(defmacro bs-page-item ((&key (id "") (disabled nil) (active nil) (aria-current "page"))
		       	&body body)
  "Bootstrap page item."
  `(bs
     (:li :id ,id :aria-current (if ,active ,aria-current "")
	  :class (concatinate 'string "page-item"
			      (if ,disabled " disabled")
			      (if ,active " active"))
	  ,@body)))

(defmacro bs-page-link ((&key (id "") (href "") (disabled nil)) &body body)
  "Bootstrap page link."
  `(bs
     (:a :href ,href :id ,id :tabindex (if ,disabled "-1" "")
	 :aria-disabled (if ,disabled "true" "")
	 :class "page-link"
	 ,@body)))
