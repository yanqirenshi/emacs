;;; init.el --- My Emacs init file -*- lexical-binding: t; -*-

;;;;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;  Native Compile
;;;;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(load "~/prj/emacs/src/msys2.el")


;;;;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;  font
;;;;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(load "~/prj/emacs/src/font.el")


;;;;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;; My Lisp
;;;;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(load "~/prj/emacs/lisp/my.el")
(load "~/prj/emacs/lisp/date.el")
(load "~/prj/emacs/lisp/dir-and-file.el")


;;;;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;  Package
;;;;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(load "~/prj/emacs/src/package.el")


;;;;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;  Environment
;;;;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(load "~/prj/emacs/src/language.el")
(load "~/prj/emacs/src/environment.el")
(load "~/prj/emacs/src/sounds.el")
(load "~/prj/emacs/src/path.el")
(load "~/prj/emacs/src/clipboard.el")
(load "~/prj/emacs/lisp/modeline.el")
(load "~/prj/emacs/src/auth-source.el")


;;;;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;  Buffer
;;;;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(load "~/prj/emacs/src/title-bar.el")
(load "~/prj/emacs/src/tool-bar.el")
(load "~/prj/emacs/src/menu-bar.el")
(load "~/prj/emacs/src/cursor.el")
(load "~/prj/emacs/src/mode-line.el")
(load "~/prj/emacs/src/theme.el")
(load "~/prj/emacs/src/buffer.el")
(load "~/prj/emacs/src/whitespace.el")


;;;;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;  IME
;;;;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(load "~/prj/emacs/src/ddskk.el")


;;;;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;  Text Edit
;;;;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(load "~/prj/emacs/src/org.el")
(load "~/prj/emacs/src/markdown.el")
(load "~/prj/emacs/src/picture.el")
(load "~/prj/emacs/src/open-junk-file.el")


;;;;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;  Lisp
;;;;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(load "~/prj/emacs/src/lsp.el")
(load "~/prj/emacs/src/spinor.el")
(load "~/prj/emacs/src/sly.el")
(load "~/prj/emacs/src/haskell.el")


;;;;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;  Develop
;;;;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(load "~/prj/emacs/src/rjsx-mode.el")
(load "~/prj/emacs/src/ts-mode.el")
(load "~/prj/emacs/src/tsx-mode.el")
(load "~/prj/emacs/src/node.el")
(load "~/prj/emacs/src/git-gutter.el")
(load "~/prj/emacs/src/vterm.el")


;;;;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;  AI
;;;;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(load "~/prj/emacs/src/gptel.el")
(load "~/prj/emacs/src/git-gutter.el")


;;;;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;  Browser
;;;;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(load "~/prj/emacs/src/eww.el")


;;;;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;  My ELisp Libs
;;;;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; T-ER Mode
(load "~/prj/emacs/src/ter-mode.el")
;; hatena-blog-mode
(load "~/prj/emacs/src/hatena-blog-writer.el")
;; 1. ユーザーを登録
;; (hatena-blog-writer-add-user
;;  (hatena-blog-writer-make-user "yanqirenshi" "renshi"))
;; 2. ユーザーリストを永続化
;; (hatena-blog-writer-save-users)
;; 3. ブログを登録
;;    api-key は はてなブログの [設定] > [詳細設定] > [AtomPub] > [APIキー] から取得
;; (hatena-blog-writer-add-blog
;;  (hatena-blog-writer-make-blog "yanqirenshi.hatenablog.com"
;;                                "ほんとのこと知りたいだけなのに。"
;;                                "XXXXXX"))
;; 4. ブログリストを永続化
;; (hatena-blog-writer-save-blogs)

(hatena-blog-writer-change-user "")
(hatena-blog-writer-change-blog "")


;; github.sitter
(load "~/prj/github.sitter/init.el")
(setq github-variable-token "")
(setq github-variable-directory "~/prj/")
