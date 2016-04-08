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
(load "~/prj/emacs/lisp/my.el")
(load "~/prj/emacs/lisp/date.el")
(load "~/prj/emacs/lisp/dir-and-file.el")

;;;;; ;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;
;;;;; 2. Setting Mode
;;;;;
;;;;; ;;;;;;;;;;;;;;;;;;;;;;;;;;


(load "~/prj/emacs/src/language.el")                               ;; 言語/文字コード
(load "~/prj/emacs/src/environment.el")                            ;; emacs の設定あれこれ
(load "~/prj/emacs/src/cursor.el")                                 ;; cursor の設定あれこれ
(load "~/prj/emacs/src/mode-line.el")                              ;; mode-line の設定
                                                                   ;; (load "~/prj/emacs/src/package.el") ;; package maneger
(load "~/prj/emacs/src/el-get.el")                                 ;; package maneger
(load "~/prj/emacs/src/path.el")                                   ;; 環境変数の設定(OSの環境変数の引き継ぎ)
(load "~/prj/emacs/src/buffer.el")                                 ;; buffer 設定
(load "~/prj/emacs/src/theme.el")                                  ;; 色設定
(load "~/prj/emacs/src/picture-mode.el")                           ;; picture-mode
(load "~/prj/emacs/src/org-mode.el")                               ;; org-mode
(load "~/prj/emacs/src/markdown-mode.el")                          ;; markdown-mode
(load "~/prj/emacs/src/slime.el")                                  ;; slime
(load "~/prj/emacs/src/open-junk-file.el")                         ;; open junk file
(load "~/prj/emacs/src/ddskk.el")                                  ;; ddskk
(load "~/prj/emacs/src/eww.el")                                    ;; eww
(load "~/prj/emacs/src/js2-mode.el")                               ;; js2-mode
(load "~/prj/emacs/src/web-mode.el")                               ;; web-mode
(load "~/prj/emacs/src/twittering-mode.el")                        ;; twitter
(load "~/prj/emacs/src/ter-mode.el")                               ;; T-ER Mode
(load "~/prj/emacs/src/git-gutter.el")                             ;; git-gutter
(when (eq window-system 'ns) (load "~/prj/emacs/src/font-mac.el")) ;; フォント設定
