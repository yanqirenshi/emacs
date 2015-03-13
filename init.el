;; 環境変数の設定 cocoa emacs のみ。
(when (eq window-system 'ns)
  (setenv "LANG" "ja_JP.UTF-8")
  (setenv "PATH" ""))  ;; ex) /usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/git/bin


;;;
;;;
;;;
(load "~/prj/emacs/src/environment.el")
(load "~/prj/emacs/src/emacs-etc.el")


;;;
;;; package maneger
;;;
(when (>= emacs-major-version 24)
  (load "~/prj/emacs/src/package.el"))


;;;
;;; emacs の 色設定
;;;
(if (>= emacs-major-version 24)
    (load "~/prj/emacs/src/theme.el")
  (load "~/prj/emacs/src/color-theme.el"))


;;;
;;; slime
;;;
;; (load "~/prj/emacs/src/slime.el")


;;;
;;; open junk file
;;;
;; (load "~/prj/emacs/src/open-junk-file.el")


;;;
;;; js2-mode
;;;
;; (load "~/prj/emacs/src/js2-mode.el")


;;;
;;; ddskk
;;;
;; (load "~/prj/emacs/src/ddskk.el")


;;;
;;; w3m
;;;
;; (load "~/prj/emacs/src/w3m.el")
;; (load "~/prj/emacs/src/tabbar.el")
;; (load "~/prj/emacs/src/navi2ch.el")


;;;
;;; Mya Lisp library
;;;
(load "~/prj/emacs/my.el")

