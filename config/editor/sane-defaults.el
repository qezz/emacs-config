(defun force-utf8 ()
  "Helpful when your system language encoding is not en_US.UTF-8"
  (setenv "LC_CTYPE" "UTF-8")
  (setenv "LC_ALL" "en_US.UTF-8")
  (setenv "LANG" "en_US.UTF-8"))

(setq-default indent-tabs-mode nil)

(force-utf8)
(delete-selection-mode t)
(setq make-backup-files nil)

(setq column-number-mode t) ;; show column above the minibuffer
(setq inhibit-startup-screen t) ;; hide startup screen, so opens *scratch*
(setq initial-scratch-message nil) ;; hide *scratch* intro message

(fset 'yes-or-no-p 'y-or-n-p)

(savehist-mode 1)
(setq savehist-additional-variables
      '(compile-command kill-ring search-ring regexp-search-ring))

(when (fboundp 'tool-bar-mode) ;; Disable top bar
  (tool-bar-mode -1))

(scroll-bar-mode -1)

(blink-cursor-mode 0)

(set-default 'truncate-lines t) ;; do truncate lines
(setq truncate-partial-width-windows nil)

(setq require-final-newline t)
(setq show-trailing-whitespace t)

(global-display-line-numbers-mode)
(show-paren-mode 1)
