(asdf:defsystem :cl-bootstrap5
    :description "CL library for Bootstrap 5."
    :version "0.0.1"
    :licence "MIT"
    :serial t
    :author "FluxGenerator <loki_was_here@hotmail.com>"
    :depends-on (:cl-who)
    :componentss ((:file "package")
		  (:file "cl-bootstrap5")))
