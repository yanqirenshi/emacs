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

;;; インストールするパッケージ
(defvar my-favorite-packages
  '(exec-path-from-shell
    open-junk-file
    ddskk
    magit
    markdown-mode
    twittering-mode
    web-mode
    js2-mode
    tabbar
    ))

;; my/favorite-packagesからインストールしていないパッケージをインストール
(dolist (package my-favorite-packages)
  (unless (package-installed-p package)
    (package-install package)))
