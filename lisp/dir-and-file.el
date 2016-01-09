(defun reopen-with-sudo ()
  "root 権限でファイルを開き直す
参照: http://qiita.com/k_ui/items/d9e03ea9523036970519"
  (interactive)
  (let ((file-name (buffer-file-name)))
    (if file-name
        (find-alternate-file (concat "/sudo::" file-name))
      (error "Cannot get a file name"))))


(defun directory-exist-p (path)
  "Directory の存在チェック"
  (and (file-exists-p path) (file-directory-p path)))
