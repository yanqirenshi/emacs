;;;
;;; eww
;;;

(when (>= emacs-major-version 24)
  (setq browse-url-browser-function 'eww-browse-url))
