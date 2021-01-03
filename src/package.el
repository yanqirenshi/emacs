(print "start package")

;; 必要であればプロキシの設定
;;(setq url-proxy-services '(("http" . "999.999.999.999:8080")))

;;;
;;; package mode
;;;
(require 'package)


;;;
;;; リポジトリ情報 の追加
;;;
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)


;;;
;;; 初期化
;;;
(package-initialize)


;;;
;;; パッケージ情報の更新
;;;
(package-refresh-contents)


;;;
;;; パッケージのインストール
;;;
(defun package-install! (package-symbol)
   (unless (package-installed-p package-symbol)
    (package-install package-symbol)))

(package-install! 'restart-emacs)
(package-install! 'magit)
(package-install! 'git-gutter)
(package-install! 'org)
(package-install! 'markdown-mode)
(package-install! 'twittering-mode)
(package-install! 'flycheck)
;; (package-install! 'web-mode)
;; (package-install! 'js2-mode)
(package-install! 'rjsx-mode)
(package-install! 'json-mode)
(package-install! 'tabbar)
(package-install! 'exec-path-from-shell)
(package-install! 'open-junk-file)
(package-install! 'request)
(package-install! 's)
(package-install! 'f)
(package-install! 'powershell)

(package-install! 'ddskk)
