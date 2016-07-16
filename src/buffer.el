;;;
;;; Show Paren Mode
;;;   対応する括弧をハイライトする
;;;   <URL>
;;;    http://www.emacswiki.org/emacs/ShowParenMode
(show-paren-mode)

;;;
;;; 行間
;;;
(setq-default line-spacing 0)

;;;
;;; 行の折り返し。デフォルトでは折り返す。
;;; http://www.emacswiki.org/emacs/TruncateLines
;;; http://d.hatena.ne.jp/beiz23/20090713/1247476145
(set-default 'truncate-lines t)
(setq truncate-partial-width-windows t)

;;;
;;; Auto Fill Mode
;;; <url>
;;;  http://www.emacswiki.org/emacs/AutoFillMode
;;;
(set-default 'auto-fill-mode nil)
