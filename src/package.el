(print "start package")
;; 必要であればプロキシの設定
;;(setq url-proxy-services '(("http" . "999.999.999.999:8080")))

;;;
;;; package mode
;;;
(require 'package)

;;; インストール先を指定?
(add-to-list 'load-path "~/.emacs.d/lisp/dist/package.el")

;;; add other package melpa
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/"))

;;; 初期化
(package-initialize)
