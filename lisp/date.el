(defun insert-current-date ()
  (interactive)
  (insert (format-time-string "%Y-%m-%d (%a)")))

(defun insert-current-time ()
  (interactive)
  (insert (format-time-string "%Y-%m-%d (%a) %H:%M:%S")))
