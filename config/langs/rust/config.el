;;; langs/rust/config.el -*- lexical-binding: t; -*-

(use-package rust-mode
  :defer t
  :ensure t
  :config
  (setq rust-indent-method-chain t)
  (setq show-trailing-whitespace t)
  (delete-trailing-whitespace-mode 'clean)
  )


(use-package racer
  :unless t
  :hook ((rust-mode rustic-mode) . racer-mode)
  )

(use-package rustic
  :ensure t
  :hook (rust-mode . (lambda ()
                       (require 'rustic)
                       (lsp-deferred)))
  :config
  (setq rustic-lsp-server 'rust-analyzer)
  (setq rustic-rls-pkg 'lsp-mode)
  (setq rustic-format-on-save nil)
  (define-key rustic-mode-map (kbd "TAB") #'company-indent-or-complete-common)
  )

(setq company-tooltip-align-annotations t)
