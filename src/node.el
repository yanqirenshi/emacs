;;; node.el --- Node.js settings -*- lexical-binding: t; -*-

;; USERPROFILE は Windows のユーザーホームディレクトリを指す環境変数です。
;; $env:USERPROFILE

(when (eq system-type 'windows-nt)
  (let* ((userprofile (getenv "USERPROFILE"))
         (volta-bin   (expand-file-name "AppData/Local/Volta/bin" userprofile)))
    (when (file-directory-p volta-bin)
      (add-to-list 'exec-path volta-bin)
      (setenv "PATH"
              (concat volta-bin ";" (getenv "PATH"))))))
