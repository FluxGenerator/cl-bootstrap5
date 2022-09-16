(in-package :cl-bootstrap5)

(defmacro bs-list-group ((&key (id "") (flush nil)
			       (numbered nil) (horizontal nil)) &body body)
  "Bootstrap list group."
  `(bs
    (:ul :id ,id :class (concatenate 'string
				     "list-group"
				     (if ,horizontal " list-group-horizontal")
				     (if ,flush " list-group-flush" "")
				     (if ,numbered " list-group-numbered" ""))
	 ,@body)))


(defmacro bs-list-group-item ((&key (id "") (active nil) (disabled nil))
			      &body body)
  "Bootstrap list group item."
  `(bs
    (:li :id ,id :aria-current (if ,active "true" "false")
	 :aria-disabled (if ,disabled "true" "false")
	 :tabindex (if ,disabled "-1" "")
	 :class (concatenate 'string
			     "list-group-item"
			     (if ,active " active")
			     (if ,disabled " disabled"))
	 ,@body)))


(defmacro bs-list-group-button ((&key (id "") (active nil) (disabled nil))
				&body body)
  "Bootstrap list group button."
  `(bs
    (:button :id ,id :type "button" :aria-current (if ,active "true" "false")
	     :aria-disabled (if ,disabled "true" "false")
	     :class (concatenate 'string
				 "list-group-item list-group-item-action"
				 (if ,active " active")
				 (if ,disabled " disabled"))
	     ,@body)))
