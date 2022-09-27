(in-package :cl-bootstrap5)

(defmacro bs-link ((&key (id "") (href "") (type "primary")) &body body)
  "Bootstrap link."
  `(bs
     (:a :id ,id  :href ,href :class (format nil "link-~a" ,type) ,@body)))
