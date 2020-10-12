(defvar ns window-system)

(if (eq ns 'x)
    (load-relative "linux.el")
  (load-relative "mac.el"))
