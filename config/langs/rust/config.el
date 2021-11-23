;; (use-package lsp-mode
;;   :ensure
;;   :commands lsp
;;   :custom
;;   ;; what to use when checking on-save. "check" is default, I prefer clippy
;;   (lsp-rust-analyzer-cargo-watch-command "clippy")
;;   (lsp-eldoc-render-all t)
;;   (lsp-idle-delay 0.6)
;;   (lsp-rust-analyzer-server-display-inlay-hints t)
;;   :config
;;   (add-hook 'lsp-mode-hook 'lsp-ui-mode))

;; (use-package lsp-ui
;;   :ensure
;;   :commands lsp-ui-mode
;;   :custom
;;   (lsp-ui-peek-always-show t)
;;   (lsp-ui-sideline-show-hover t)
;;   (lsp-ui-doc-enable nil))

(use-package rustic
  :after (:all lsp-mode lsp-ui)
  :ensure
  :bind (:map rustic-mode-map
              ("M-j" . lsp-ui-imenu)
              ("M-?" . lsp-find-references)
              ("M-RET" . lsp-execute-code-action)
              ("C-c C-c l" . flycheck-list-errors)
              ("C-c C-c a" . lsp-execute-code-action)
              ("C-c C-c r" . lsp-rename)
              ("C-c C-c q" . lsp-workspace-restart)
              ("C-c C-c Q" . lsp-workspace-shutdown)
              ("C-c C-c s" . lsp-rust-analyzer-status)
              ("C-c C-c e" . lsp-rust-analyzer-expand-macro)
              ("C-c C-c d" . dap-hydra)
              ("C-c C-c h" . lsp-ui-doc-glance))
  ;; :hook (rust-mode . (lambda ()
  ;;                      (lsp)))
  :config
  ;; uncomment for less flashiness
  ;; (setq lsp-eldoc-hook nil)
  ;; (setq lsp-enable-symbol-highlighting nil)
  ;; (setq lsp-signature-auto-activate nil)
  
  ;; (setq lsp-ui-doc-enable nil) ;; disable immediate doc-glance pop-up
  ;; (setq show-trailing-whitespace t)
  ;; (setq-default show-trailing-whitespace t)

  ;; comment to disable rustfmt on save
  ;; (setq rustic-format-on-save t)
  (add-hook 'rustic-mode-hook 'rk/rustic-mode-hook))


(defun rk/rustic-mode-hook ()
  ;; so that run C-c C-c C-r works without having to confirm, but don't try to
  ;; save rust buffers that are not file visiting. Once
  ;; https://github.com/brotzeit/rustic/issues/253 has been resolved this should
  ;; no longer be necessary.
  (when buffer-file-name
    (setq-local buffer-save-without-query t)))


;;; langs/rust/config.el -*- lexical-binding: t; -*-

;; (use-package rust-mode
;;   ;; :defer t
;;   :ensure t
;;   :config
;;   (setq rust-indent-method-chain t)

;;   ;; (setq show-trailing-whitespace t)
;;   (delete-trailing-whitespace-mode 'clean)
;;   (use-package rustic
;;     :ensure t
;;     :hook (rust-mode . (lambda ()
;;                          ;; (require 'rustic)
;;                          ;; (lsp-deferred)
;;                          (lsp)
;;                          ))
;;     :config
;;     (setq rustic-lsp-server 'rust-analyzer)
;;     (setq rustic-rls-pkg 'lsp-mode)
;;     (setq rustic-format-on-save nil)
;;     (setq-default show-trailing-whitespace t)
;;     (define-key rustic-mode-map (kbd "TAB") #'company-indent-or-complete-common)
;;     )

;;   (setq company-tooltip-align-annotations t)
;;   )




;; (use-package racer
;;   :unless t
;;   :hook ((rust-mode rustic-mode) . racer-mode)
;;   )

