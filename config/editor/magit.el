(use-package transient
  :defer t
  :ensure t)

(use-package magit
  :defer t
  :ensure t
  :config
  (setq magit-diff-hide-trailing-cr-characters t))
