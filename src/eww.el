;;; eww.el --- EWW settings -*- lexical-binding: t; -*-

;;;
;;; eww
;;;

(when (>= emacs-major-version 24)
  (setq browse-url-browser-function 'eww-browse-url))
