;; (use-package nord-theme
;;   :ensure t
;;   :config
;;   (setq nord-comment-brightness 20)
;;   ;; (load-theme 'nord t)
;;   )

(use-package spacemacs-theme
  :defer t
  :ensure t)

(when (fboundp 'tool-bar-mode) ;; Disable top bar
  (tool-bar-mode -1))

(cond
 ((null window-system) (load-theme 'wombat t))
 ((eq ns 'x) (load-theme 'doom-gruvbox t))
 ((eq ns 'darwin) (load-theme 'spacemacs-light t)))
