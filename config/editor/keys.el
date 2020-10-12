(defun setup-custom-keys ()
  ;; Rebind C-h to <DEL> and other
  (global-set-key (kbd "C-?") 'help-command)
  (global-set-key (kbd "M-?") 'mark-paragraph)
  (global-set-key (kbd "C-h") 'delete-backward-char)
  (global-set-key (kbd "M-h") 'backward-kill-word)

  ;; Set [Alt]+[Arrow] to easy switch between frames
  (windmove-default-keybindings 'meta)
  (global-set-key (kbd "ESC <left>") 'windmove-left)
  (global-set-key (kbd "ESC <right>") 'windmove-right)
  (global-set-key (kbd "ESC <down>") 'windmove-down)
  (global-set-key (kbd "ESC <up>") 'windmove-up)

  ;; ;; Wrap with parens
  ;; (global-set-key (kbd "M-[") 'insert-pair)
  ;; (global-set-key (kbd "M-{") 'insert-pair)
  ;; (global-set-key (kbd "M-\"") 'insert-pair)

  ;; ;; Fix keyboard commands to work with non-english layout
  ;; (package-install 'use-package 'reverse-im)
  (use-package reverse-im
    :ensure t
    :config
    (reverse-im-activate "russian-computer"))
  )

(setup-custom-keys)
