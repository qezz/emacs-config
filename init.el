;; -*- mode: emacs-lisp -*-

(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(when (< emacs-major-version 24)
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize)

(when (not package-archive-contents)
    (package-refresh-contents))

(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(setq custom-file (concat user-emacs-directory "custom.el"))
(load custom-file 'noerror)

(defvar home-dir (getenv "HOME"))
(defvar config-home (concat (or home-dir "~") "/.emacs.d"))

(use-package f
  :ensure t)

(use-package s
  :ensure t)

(use-package load-relative
  :ensure t)

(defun load-package-or-all-files (filepath)
  (let ((config-el-file? (f-file? (f-join filepath "config.el"))))
    (if config-el-file?
        (load-file (f-join filepath "config.el"))
      (seq-do (lambda (f)
                (if (f-directory? f)
                    (load-package-or-all-files f)
                  (load-file f)))
              (f-entries filepath)))))

(defun load-config-dir-recur ()
  (load-package-or-all-files (f-join config-home "config/ui"))
  (load-package-or-all-files (f-join config-home "config/editor"))
  (load-package-or-all-files (f-join config-home "config/langs")))

(unless (f-directory? "config")
    (f-mkdir "config"))

(load-config-dir-recur)

