(defun setup-custom-scroll ()
  "Slow down the enormous scrilling speed"
  ;; (setq scroll-conservatively 1000000)
  ;; (setq scroll-preserve-screen-position 1)
  ;; (setq scroll-step 1)
  (setq mouse-wheel-scroll-amount '(4 ((shift) . 4))) ;; one line at a time
  (setq mouse-wheel-progressive-speed nil) ;; don't accelerate scrolling
  (setq mouse-wheel-follow-mouse 't) ;; scroll window under mouse
  (setq scroll-step 1) ;; keyboard scroll one line at a time
  )

(setup-custom-scroll)
