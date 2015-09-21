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
;;;
(setq truncate-lines nil)
(setq truncate-partial-width-windows nil)


;; ;;;
;; ;;; Auto Fill Mode
;; ;;; <url>
;; ;;;  http://www.emacswiki.org/emacs/AutoFillMode
;; ;;;
;; (add-hook 'text-mode-hook (auto-fill-mode -1))
