(in-package :cl-bootstrap5)

(defmacro bs-card ((&key (id "") (style "")
			 (width nil)) &body body)
  "Bootstrap card."
  `(bs
     (:div :id ,id  :style ,style
	   :class (concatenate 'string
			       "card"
			       (if ,width (format nil " w-~a" ,width)))
	   ,@body)))

(defmacro bs-card-img ((&key (id "") (position "top")
			     (src "") (alt "...")))
  "Bootstrap card image."
  `(bs
    (:img :id ,id :src ,src :alt ,alt
	  :class (format nil "card-img-~a" ,position))))


(defmacro bs-card-body ((&key (id "")) &body body)
  "Bootstrap card body."
  `(bs
     (:div :id ,id :class "card-body" ,@body)))

(defmacro bs-card-title ((&key (id "") (h 5)) &body body)
  "Bootstrap card title."
  (case h
    (1 `(bs
	  (:h1 :id ,id :class "card-title" ,@body)))
    (2`(bs
	  (:h2 :id ,id :class "card-title" ,@body)))
    (3 `(bs
	  (:h3 :id ,id :class "card-title" ,@body)))
    (4 `(bs
	  (:h4 :id ,id :class "card-title" ,@body)))
    (5 `(bs
	  (:h5 :id ,id :class "card-title" ,@body)))
    (6 `(bs
	  (:h6 :id ,id :class "card-title" ,@body)))))

(defmacro bs-card-text ((&key (id "")) &body body)
  "Bootstrap card text."
  `(bs
     (:p :id ,id :class "card-text" ,@body)))

(defmacro bs-card-link ((&key (id "") (href "")) &body body)
  "Bootstrap card link."
  `(bs
     (:a :href ,href :id ,id ,@body)))
