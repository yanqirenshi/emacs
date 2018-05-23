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

;;;
;;; Markdown で表(テーブル)を描く
;;; http://qiita.com/nanasess/items/c9342c06a3e28e64aeb8
;;;
(defun cleanup-org-tables ()
  (save-excursion
    (goto-char (point-min))
    (while (search-forward "-+-" nil t) (replace-match "-|-"))))
(add-hook 'markdown-mode-hook 'orgtbl-mode)
(add-hook 'markdown-mode-hook
          #'(lambda()
          (add-hook 'after-save-hook 'cleanup-org-tables  nil 'make-it-local)))

;;;
;;; プレビューの設定
;;; https://qiita.com/gooichi/items/2b185dbdf24166a15ca4
;;;
(setq markdown-command "multimarkdown")
