(in-package :cl-bootstrap5)

(defmacro bs-navbar ((&key (id "") (expand "lg") (color "light")
			   (background "light") (position "") (style ""))
		     &body body)
  "Bootstrap navbar."
  `(bs
    (:nav :id ,id :style ,style
	  :class (concatinate 'string
			      "navbar"
			      (format nil " navbar-expand-~a" ,expand)
			      (format nil " navbar-~a" ,color)
			      (format nil " bg-~a" ,background)
			      (if ,position ,position ""))
	  (bs-container-fluid ()
			      ,@body))))

(defmacro bs-navbar-brand ((&key (id "") (href "")) &body body)
  "Bootstrap navbar brand."
  `(bs
    (:a :id ,id :href ,href :class "navbar-brand" ,@body)))

(defmacro bs-navbar-collapse ((&key (id "")) &body body)
  "Bootstrap navbar collapse."
  `(bs
    (:div :id ,id :class "collapse navbar-collapse" ,@body)))

(defmacro bs-navbar-nav ((&key (id "") (scroll nil) (scroll-height "100")) &body body )
  "Bootstrap navbar nav."
  `(bs
    (:ul :id ,id :class (if ,scroll "navbar-nav navbar-scroll" "navbar-nav")
	 :style (if ,scroll (format nil "--bs-scroll-height:~apx;" ,scroll-height) "")
	 ,@body)))

(defmacro bs-navbar-toggler ((&key (id "") (data-bs-toggle "collapse") (data-bs-target "")
				   (aria-controls "") (aria-expanded "false")
				   (aria-label "")) &body body)
  "Bootstrap navbar toggler."
  `(bs
    (:button  :id ,id :type "button":class "navbar-toggler"
	      :data-bs-toggle ,data-bs-toggle :data-bs-target ,data-bs-target
	      :aria-controls ,aria-controls :aria-expanded ,aria-expanded
	      :aria-label ,aria-label ,@body)))

(defmacro bs-navbar-toggler-icon ()
  "Bootstrap navbar toggler icon."
  `(bs (:span :class "navbar-toggler-icon")))


(defmacro bs-navbar-text ((&key (id "")) &body body)
  "Bootstrap navbar text."
  `(bs
    (:span :id ,id :class "navbar-text" ,@body)))
