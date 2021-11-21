(defun switch-theme (theme)
  "Disable the currently enabled themes and `load-theme' a provided one"
  (interactive
   (list
    (intern (completing-read "Switch to custom theme: "
                 (mapcar 'symbol-name
                     (custom-available-themes))))))
  (mapcar 'disable-theme custom-enabled-themes)
  (load-theme theme)
  (message "Theme %s" theme))
