(in-package :cl-bootstrap5)

(defmacro bs-carousel ((&key (id "") (transition "")) &body body)
  "Bootstrap carousel."
  `(bs
     (:div :data-bs-ride "carousel" :id ,id
	   :class (concatenate 'string
			       "carousel slide"
			       (if ,transition
				   (format nil " carousel-~a" ,transition)))
	   ,@body)))

(defmacro bs-carousel-inner ((&key (id "")) &body body)
  "Bootstrap carousel inner."
  `(bs
     (:div :id ,id :class "carousel-inner"
	   ,@body)))

(defmacro bs-carousel-item ((&key (id "") (active nil)) &body body)
  "Bootstrap carousel item."
  `(bs
     (:div :id ,id :class (concatenate 'string
				       "carousel-item"
				       (if ,active " active"))
	   ,@body)))

(defmacro bs-carousel-control ((&key (id "") (type "") (data-bs-target "")
				     (data-bs-slide "")) &body body)
  "Bootstrap carousel control."
  `(bs
     (:button :type "button" :id ,id :data-bs-target ,data-bs-target
	      :data-bs-slide ,data-bs-slide
	      :class (format nil "carousel-control-~a" ,type)
	      ,@body)))

(defmacro bs-carousel-prev-icon ((&key (text "prev")))
  "Bootstrap carousel previous icon."
  `(bs
    (:span :class "carousel-control-prev" :type "button" :aria-hidden "true")
    (:span :class "visually-hidden" ,text)))

 (defmacro bs-carousel-next-icon ((&key (text "prev")))
  "Bootstrap carousel next icon."
  `(bs
    (:span :class "carousel-control-next" :type "button" :aria-hidden "true")
    (:span :class "visually-hidden" ,text)))

(defmacro bs-carousel-indicators ((&key (id "")) &body body)
  "Bootstrap carousel indicators."
  `(bs
     (:div :id ,id :class "carousel-indicators" ,@body)))

(defmacro bs-carousel-indicator-button ((&key (id "") (data-bs-target "")
					      (data-bs-slide "") (active nil)
					      (aria-current "false") (aria-label "")))
  "Bootstrap carousel indicator button."
  `(bs
     (:button :type "button" :id ,id :data-bs-target ,data-bs-target
	      :data-bs-slide ,data-bs-slide :aria-current ,aria-current
	      :aria-label ,aria-label :class (if ,active "active" ""))))

(defmacro bs-carousel-caption ((&key (id "")) &body body)
  "Bootstrap carousel caption."
  `(bs
     (:div :id ,id :class "carousel-caption d-none d-md-block" ,@body)))
