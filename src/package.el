;; 必要であればプロキシの設定
;;(setq url-proxy-services '(("http" . "999.999.999.999:8080")))

;;;
;;; package mode
;;;
(require 'package)

;;; インストール先を指定?
(add-to-list 'load-path "~/.emacs.d/lisp/dist/package.el")

;;; add other package melpa
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)

;;; 初期化
(package-initialize)

;;; パッケージ情報の更新
;; (package-refresh-contents)

(defun package-install! (package-symbol)
   (unless (package-installed-p package-symbol)
    (package-install package-symbol)))

(package-install! 'ddskk)
(package-install! 'magit)
(package-install! 'git-gutter)
(package-install! 'markdown-mode)
(package-install! 'twittering-mode)
(package-install! 'flycheck)
(package-install! 'web-mode)
(package-install! 'js2-mode)
(package-install! 'tabbar)
(package-install! 'exec-path-from-shell)
(package-install! 'open-junk-file)
