;;; init-environment.el --- Environment settings -*- lexical-binding: t; -*-

;;;;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;  Native Compile
;;;;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(load "~/.emacs.d/dist/emacs/src/msys2.el")


;;;;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;  font
;;;;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(load "~/.emacs.d/dist/emacs/src/font.el")


;;;;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;; My Lisp
;;;;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(load "~/.emacs.d/dist/emacs/lisp/my.el")
(load "~/.emacs.d/dist/emacs/lisp/date.el")
(load "~/.emacs.d/dist/emacs/lisp/dir-and-file.el")


;;;;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;  Package
;;;;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(load "~/.emacs.d/dist/emacs/src/package.el")


;;;;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;  Environment
;;;;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(load "~/.emacs.d/dist/emacs/src/language.el")           ;; 言語/文字コード
(load "~/.emacs.d/dist/emacs/src/environment.el")        ;; emacs の設定あれこれ
(load "~/.emacs.d/dist/emacs/src/path.el")               ;; 環境変数の設定(OSの環境変数の引き継ぎ)
(load "~/.emacs.d/dist/emacs/src/clipboard.el")          ;; クリップボードの設定


;;;;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;  Buffer
;;;;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(load "~/.emacs.d/dist/emacs/src/cursor.el")             ;; cursor の設定あれこれ
(load "~/.emacs.d/dist/emacs/src/mode-line.el")          ;; mode-line の設定
(load "~/.emacs.d/dist/emacs/src/theme.el")              ;; 色設定
(load "~/.emacs.d/dist/emacs/src/buffer.el")             ;; buffer 設定
(load "~/.emacs.d/dist/emacs/src/whitespace.el")         ;; whitespace 設定


;;;;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;  IME
;;;;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(load "~/.emacs.d/dist/emacs/src/ddskk.el")              ;; ddskk


;;;;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;  Text Edit
;;;;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(load "~/.emacs.d/dist/emacs/src/org-mode.el")           ;; org-mode
(load "~/.emacs.d/dist/emacs/src/picture-mode.el")       ;; picture-mode
(load "~/.emacs.d/dist/emacs/src/markdown-mode.el")      ;; markdown-mode
(load "~/.emacs.d/dist/emacs/src/open-junk-file.el")     ;; open junk file


;;;;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;  Develop
;;;;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; (load "~/.emacs.d/dist/emacs/src/js2-mode.el")   ;; js2-mode
;; (load "~/.emacs.d/dist/emacs/src/web-mode.el")   ;; web-mode
(load "~/.emacs.d/dist/emacs/src/rjsx-mode.el")     ;; rjsx-mode
(load "~/.emacs.d/dist/emacs/src/tsx-mode.el")      ;; tsx-mode
(load "~/.emacs.d/dist/emacs/src/vterm.el")


;;;;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;  Etc
;;;;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(load "~/.emacs.d/dist/emacs/src/git-gutter.el")         ;; git-gutter
(load "~/.emacs.d/dist/emacs/src/eww.el")                ;; eww
(load "~/.emacs.d/dist/emacs/src/ter-mode.el")           ;; T-ER Mode
(load "~/.emacs.d/dist/emacs/lisp/modeline.el")


;;;;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;  Blog
;;;;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(load "~/.emacs.d/dist/emacs/src/hatena-blog-writer.el") ;; hatena-blog-mode
