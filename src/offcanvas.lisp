(in-package :cl-bootstrap5)

(defmacro bs-offcanvas ((&key (id "") (tabindex "-1") (aria-labelledby "")
			      (placement "start") (data-bs-scroll "false")
			      (data-bs-dropback "")) &body body)
  "Bootstrap offcanvas."
  `(bs
     (:div :id ,id :tabindex ,tabindex :aria-labelledby ,aria-labelledby
	   :data-bs-scroll ,data-bs-scroll :data-bs-dropback ,data-bs-dropback
	   :class (format nil "offcanvas offcanvas-~a" ,placement) ,@body)))

(defmacro bs-offcanvas-header ((&key (id "")) &body body)
  "Bootstrap offcanvas header."
  `(bs
     (:div :id ,id :class "offcanvas-header" ,@body)))

(defmacro bs-offcanvas-title ((&key (id "") (h 5)) &body body)
  "Bootstrap offcanvas title."
  (case h
    (1 `(bs
	  (:h1 :class "offcanvas-title" :id ,id ,@body)))
    (2 `(bs
	  (:h2 :class "offcanvas-title" :id ,id ,@body)))
    (3 `(bs
	  (:h3 :class "offcanvas-title" :id ,id ,@body)))
    (4 `(bs
	  (:h4 :class "offcanvas-title" :id ,id ,@body)))
    (5 `(bs
	  (:h5 :class "offcanvas-title" :id ,id ,@body)))
    (6 `(bs
	  (:h6 :class "offcanvas-title" :id ,id ,@body)))))

(defmacro bs-offcanvas-body ((&key (id "")) &body body)
  "Bootstrap offcanvas body"
  `(bs
     (:div :id ,id :class "offcanvas-body"
	   ,@body)))
