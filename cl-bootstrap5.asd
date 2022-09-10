(asdf:defsystem :cl-bootstrap5
    :description "CL library for Bootstrap 5."
    :version "0.0.1"
    :licence "MIT"
    :serial t
    :author "FluxGenerator <loki_was_here@hotmail.com>"
    :depends-on (:cl-who)
    :components ((:file "package")
		 (:file "cl-bootstrap5")
		 (:module "src"
		  :serial t
		  :components ((:file "accordion")
			       (:file "alert")
			       (:file "badge")
			       (:file "breadcrumb")
			       (:file "button")
			       (:file "button-group")
			       (:file "card")
			       (:file "carousel")
			       (:file "collapse")))))
