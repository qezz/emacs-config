(use-package haskell-mode
  :ensure t
  :defer t)

;; (use-package intero
;;   :ensure t
;;   :defer t
;;   :hook haskell-mode)

(use-package lsp-haskell
  :defer t
  :ensure t
  :hook haskell-mode)
