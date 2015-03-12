;; 必要であればプロキシの設定
;;(setq url-proxy-services '(("http" . "999.999.999.999:8080")))

;;;
;;; package mode
;;;
(require 'package)
;; インストール先を指定?
(add-to-list 'load-path "~/.emacs.d/lisp/dist/package.el")
;; add other package
                                        ; melpa
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
                                        ; Marmalade is a package archive for Emacs Lisp.
                                        ; URL: http://marmalade-repo.org/
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/") t)

;; 初期化
(package-initialize)
