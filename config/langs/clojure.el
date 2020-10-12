(use-package clojure-mode
  :ensure t
  :defer t
  :config
  (setq show-trailing-whitespace t)
  (delete-trailing-whitespace-mode 'clean)
  (add-hook 'clojurescript-mode-hook
            '(lambda ()
               (setq show-trailing-whitespace t))))
