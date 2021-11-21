(use-package hl-todo
  :ensure t
  :config (progn
            (if window-system
                (global-hl-line-mode))
            (global-hl-todo-mode)))
