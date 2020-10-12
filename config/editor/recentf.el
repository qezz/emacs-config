(defun setup-recentf-mode ()
  (use-package init-open-recentf
    :ensure t
    :bind ("C-x C-r" . recentf-open-files)
    )

  (init-open-recentf) ;; open file if provided as arg, open recentf otherwise
  (recentf-mode 1)
  (setq recentf-max-menu-items 25)
  ;; (use-package recentf)

  ;; ;;(global-set-key "\C-x\ \C-r" 'recentf-open-files)
  )

(setup-recentf-mode)
