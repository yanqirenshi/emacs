;;;;;
;;;;; Markdown Mode
;;;;; <url>
;;;;;  http://www.emacswiki.org/emacs/MarkdownMode
;;;;;

;;;
;;; 拡張子との関連付け
;;;
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

;;;
;;; ほかの設定
;;;
(add-hook 'markdown-mode-hook
          (lambda () (auto-fill-mode -1)))

(add-hook 'markdown-mode-hook 'turn-on-orgtbl)
