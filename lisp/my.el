;;;;;
;;;;;
;;;;;
(fset 'my-fit-program-source-file
      [?f ?\C-  escape ?> ?\M-x ?i ?n ?d ?e tab ?- ?r ?e ?g tab return ?\C-x ?\C-s ?\C-x ?k return ?f ?\C-  escape ?> ?\M-x ?u ?n ?t tab return ?\C-x ?\C-s ?\C-x ?k return ?f ?\C-  escape ?> ?\M-x ?d ?e ?l ?e tab ?t ?r tab return ?\C-x ?\C-s ?\C-x ?k return ?\C-n])

(defun my.pgm-save (argv)
  (dolist (file argv)
    (find-file file)
    (untabify (point-min) (point-max))
    (indent-region (point-min) (point-max))
    (delete-trailing-whitespace)
    (save-buffer)
    (kill-buffer)))


;;;;;
;;;;; root 権限でファイルを開き直す
;;;;; 参照: http://qiita.com/k_ui/items/d9e03ea9523036970519
;;;;;
(defun reopen-with-sudo ()
  "Reopen current buffer-file with sudo using tramp."
  (interactive)
  (let ((file-name (buffer-file-name)))
    (if file-name
        (find-alternate-file (concat "/sudo::" file-name))
      (error "Cannot get a file name"))))
