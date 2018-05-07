;;;;; Contents
;;;;; --------
;;;;;  1. Mya Lisp library
;;;;;  2. Setting Mode
;;;;;

;;;;; ;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;
;;;;; 1. Mya Lisp library
;;;;;
;;;;; ;;;;;;;;;;;;;;;;;;;;;;;;;;
(load "~/.emacs.d/dist/emacs/lisp/my.el")
(load "~/.emacs.d/dist/emacs/lisp/date.el")
(load "~/.emacs.d/dist/emacs/lisp/dir-and-file.el")

;;;;; ;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;
;;;;; 2. Setting Mode
;;;;;
;;;;; ;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; package
(load "~/.emacs.d/dist/emacs/src/package.el")            ;; package maneger
(load "~/.emacs.d/dist/emacs/src/package-install.el")    ;; install packages
;;; environment
(load "~/.emacs.d/dist/emacs/src/language.el")           ;; 言語/文字コード
(load "~/.emacs.d/dist/emacs/src/environment.el")        ;; emacs の設定あれこれ
(load "~/.emacs.d/dist/emacs/src/path.el")               ;; 環境変数の設定(OSの環境変数の引き継ぎ)
;;; buffer
(load "~/.emacs.d/dist/emacs/src/cursor.el")             ;; cursor の設定あれこれ
(load "~/.emacs.d/dist/emacs/src/mode-line.el")          ;; mode-line の設定
(load "~/.emacs.d/dist/emacs/src/theme.el")              ;; 色設定
(load "~/.emacs.d/dist/emacs/src/buffer.el")             ;; buffer 設定
(load "~/.emacs.d/dist/emacs/src/whitespace.el")         ;; whitespace 設定
;;; text edit
(load "~/.emacs.d/dist/emacs/src/org-mode.el")           ;; org-mode
(load "~/.emacs.d/dist/emacs/src/ddskk.el")              ;; ddskk
(load "~/.emacs.d/dist/emacs/src/picture-mode.el")       ;; picture-mode
(load "~/.emacs.d/dist/emacs/src/markdown-mode.el")      ;; markdown-mode
(load "~/.emacs.d/dist/emacs/src/open-junk-file.el")     ;; open junk file
;;; programing
(load "~/.emacs.d/dist/emacs/src/js2-mode.el")           ;; js2-mode
(load "~/.emacs.d/dist/emacs/src/web-mode.el")           ;; web-mode
;;; sns
(load "~/.emacs.d/dist/emacs/src/twittering-mode.el")    ;; twitter
;;; other
(load "~/.emacs.d/dist/emacs/src/git-gutter.el")         ;; git-gutter
(load "~/.emacs.d/dist/emacs/src/eww.el")                ;; eww
(load "~/.emacs.d/dist/emacs/src/ter-mode.el")           ;; T-ER Mode
