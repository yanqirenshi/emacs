;;;;; Contents
;;;;; --------
;;;;;  1. Setting Mode
;;;;;     - package maneger
;;;;;     - 環境変数の設定
;;;;;     - emacs の設定あれこれ
;;;;;     - 色設定
;;;;;     - フォント設定
;;;;;     - picture-mode
;;;;;     - org-mode
;;;;;     - markdown-mode
;;;;;     - slime
;;;;;     - open junk file
;;;;;     - javascript
;;;;;     - ddskk
;;;;;     - w3m
;;;;;     - tabbar
;;;;;     - navi2ch
;;;;;     - twitter
;;;;;  2. Mya Lisp library
;;;;;

;;;;; ;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;
;;;;; 1. Setting Mode
;;;;;
;;;;; ;;;;;;;;;;;;;;;;;;;;;;;;;;

;; package maneger
(when (>= emacs-major-version 24)
  (load "~/prj/emacs/src/package.el"))

;; 環境変数の設定
(load "~/prj/emacs/src/path.el") ;; OSの環境変数の引き継ぎ
(when (eq window-system 'ns) ;; Mac のみ。
  (setenv "PS1" "\\w$ ")
  (setenv "LANG" "ja_JP.UTF-8"))

;; emacs の設定あれこれ
(load "~/prj/emacs/src/environment.el")
(load "~/prj/emacs/src/language.el")   ;; 言語/文字コード
(load "~/prj/emacs/src/mode-line.el")  ;; mode-line の設定

;; 色設定
(load "~/prj/emacs/src/buffer.el")

;; 色設定
(if (>= emacs-major-version 24)
    (load "~/prj/emacs/src/theme.el")
  (load "~/prj/emacs/src/color-theme.el"))

;; フォント設定
(when (eq window-system 'ns)
  (load "~/prj/emacs/src/font-mac.el"))

;; picture-mode
(load "~/prj/emacs/src/picture-mode.el")

;; org-mode
(load "~/prj/emacs/src/org-mode.el")

;; markdown-mode
(load "~/prj/emacs/src/markdown-mode.el")

;; slime
(defvar *iwo-cl-path*    nil) ;; ex) (defvar *iwo-cl-path* "/usr/local/bin/sbcl")
(defvar *iwo-slime-path* nil) ;; ex) (defvar *iwo-slime-path* "~/prj/slime")
;; (load "~/prj/emacs/src/slime.el")

;; open junk file
(load "~/prj/emacs/src/open-junk-file.el")

;; javascript
(load "~/prj/emacs/src/js2-mode.el") ;; js2-mode
(load "~/prj/emacs/src/web-mode.el") ;; web-mode

;; ddskk
(load "~/prj/emacs/src/ddskk.el")

;; w3m
;; (load "~/prj/emacs/src/w3m.el")

;; tabbar
(load "~/prj/emacs/src/tabbar.el")

;; navi2ch
;; (load "~/prj/emacs/src/navi2ch.el")

;; twitter
(load "~/prj/emacs/src/twittering-mode.el")

;; T-ER Mode
(load "~/prj/emacs/src/ter-mode.el")


;;;;; ;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;
;;;;; 2. Mya Lisp library
;;;;;
;;;;; ;;;;;;;;;;;;;;;;;;;;;;;;;;
(load "~/prj/emacs/lisp/my.el")
