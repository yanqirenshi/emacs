;;;;; Contents
;;;;; --------
;;;;;   package maneger
;;;;;   環境変数の設定
;;;;;   emacs の設定あれこれ
;;;;;   色設定
;;;;;   フォント設定
;;;;;   markdown-mode
;;;;;   slime
;;;;;   open junk file
;;;;;   javascript
;;;;;   ddskk
;;;;;   w3m
;;;;;   tabbar
;;;;;   navi2ch
;;;;;   twitter
;;;;;   Mya Lisp library
;;;;;

;;;;;
;;;;; package maneger
;;;;;
(when (>= emacs-major-version 24)
  (load "~/prj/emacs/src/package.el"))

;;;;;
;;;;; 環境変数の設定
;;;;;
;; OSの環境変数の引き継ぎ
(load "~/prj/emacs/src/path.el")
;; Mac のみ。
(when (eq window-system 'ns)
  (setenv "PS1" "\\w$ ")
  (setenv "LANG" "ja_JP.UTF-8"))


;;;;;
;;;;; emacs の設定あれこれ
;;;;;
(load "~/prj/emacs/src/environment.el")
;; (load "~/prj/emacs/src/emacs-etc.el") 廃棄予定。


;;;;;
;;;;; 色設定
;;;;;
(if (>= emacs-major-version 24)
    (load "~/prj/emacs/src/theme.el")
    (load "~/prj/emacs/src/color-theme.el"))

;;;;;
;;;;; フォント設定
;;;;;
(when (eq window-system 'ns)
  (load "~/prj/emacs/src/font-mac.el"))

;;;;;
;;;;; markdown-mode
;;;;;
;; (load "~/prj/emacs/src/markdown-mode.el")

;;;
;;; slime
;;;
(defvar *iwo-sblc-path* "/usr/local/bin/sbcl")
;; (load "~/prj/emacs/src/slime.el")

;;;
;;; open junk file
;;;
;; (load "~/prj/emacs/src/open-junk-file.el")

;;;;;
;;;;; javascript
;;;;;
;; js2-mode
;;(load "~/prj/emacs/src/js2-mode.el")
;; web-mode
;;(load "~/prj/emacs/src/web-mode.el")

;;;;;
;;;;; ddskk
;;;;;
;; (load "~/prj/emacs/src/ddskk.el")


;;;;;
;;;;; w3m
;;;;;
;; (load "~/prj/emacs/src/w3m.el")
;; (load "~/prj/emacs/src/tabbar.el")
;; (load "~/prj/emacs/src/navi2ch.el")

;;;;;
;;;;; tabbar
;;;;;
;; (load "~/prj/emacs/src/tabbar.el")

;;;;;
;;;;; navi2ch
;;;;;
;; (load "~/prj/emacs/src/navi2ch.el")

;;;;;
;;;;; twitter
;;;;;
;; (load "~/prj/emacs/src/twittering-mode.el")

;;;;;
;;;;; Mya Lisp library
;;;;;
(load "~/prj/emacs/lisp/my.el")
