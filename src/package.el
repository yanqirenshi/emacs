;;; init-environment.el --- Environment settings -*- lexical-binding: t; -*-

;;; init-environment.el --- Environment settings -*- lexical-binding: t; -*-

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
(setq package-archives
      '(("gnu"      . "https://elpa.gnu.org/packages/")
        ("melpa"    . "https://melpa.org/packages/")
        ("jcs-elpa" . "https://jcs-emacs.github.io/jcs-elpa/packages/")
        ("nongnu" . "https://elpa.nongnu.org/nongnu/")))


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

(defun packages-install! (package-symbols)
  (dolist (package-symbol package-symbols)
    (package-install! package-symbol)))

(packages-install!
 '(use-package
   restart-emacs
   magit
   git-gutter
   org
   markdown-mode
   flycheck
   tabbar
   exec-path-from-shell
   open-junk-file
   request
   s
   f
   powershell
   ddskk
   ;; dev web
   ;; web-mode
   ;; js2-mode
   rjsx-mode
   json-mode
   ;; sns
   ;; twittering-mode
   ;; auto complete
   ;; auto-complete
   ;; ai
   openai
   chatgpt))
