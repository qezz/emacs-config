(use-package lsp-python-ms
  :ensure t
  :defer t
  ;; :init (setq lsp-python-ms-auto-install-server t)
  :init (setq lsp-python-ms-executable (executable-find "python-language-server"))
  :hook (python-mode . (lambda ()
                          (require 'lsp-python-ms)
                          (lsp-deferred)
                          (setq lsp-python-ms-extra-paths '("./src" "./src/"))
                          (setq show-trailing-whitespace t))))
