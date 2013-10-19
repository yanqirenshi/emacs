;; 環境変数の設定 cocoa emacs のみ。
(when (eq window-system 'ns)
  (setenv "LANG" "ja_JP.UTF-8")
  (setenv "PATH" ""))  ;; ex) /usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/git/bin
  
;;
(load "~/prj/emacs/setting/emacs-environment.lisp")
(load "~/prj/emacs/setting/emacs-etc.lisp")

;; My Lisp library
(load "~/prj/emacs/my.lisp")

;; Package は emacs の version 24 以降 
(when (>= emacs-major-version 24)
  (load "~/prj/emacs/setting/package.el"))


;; (load "~/prj/emacs/setting/ddskk.el")
;; (load "~/prj/emacs/setting/open-junk-file.lisp")

;; emacs の 色設定
(if (>= emacs-major-version 24)
    (load "~/prj/emacs/setting/color-theme.el")
    (load "~/prj/emacs/setting/theme.el"))

;; w3m
(load "~/prj/emacs/setting/w3m.el")

;; (load "~/prj/emacs/setting/slime.lisp")
;; (load "~/prj/emacs/setting/js2-mode.el")

;; (load "~/prj/emacs/setting/tabbar.lisp")
;; (load "~/prj/emacs/setting/navi2ch.lisp")
