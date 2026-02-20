;;; init-environment.el --- Environment settings -*- lexical-binding: t; -*-

;;;;;
;;;;; Markdown Mode
;;;;; <url>
;;;;;  http://www.emacswiki.org/emacs/MarkdownMode
;;;;;
(use-package markdown-mode
  :ensure t
  :mode (("\\.md\\'" . markdown-mode)
         ("\\.markdown\\'" . markdown-mode)
         ("README\\.md\\'" . gfm-mode))  ;; GitHub Flavored Markdown
  :init
  ;; プレビューの設定
  ;; https://qiita.com/gooichi/items/2b185dbdf24166a15ca4
  (setq markdown-command "multimarkdown")
  :config
  ;; シンタックスハイライトの設定
  (setq markdown-fontify-code-blocks-natively t)  ;; コードブロックをハイライト
  (setq markdown-hide-markup nil)                 ;; マークアップ記号を隠さない

  ;; フックで確実にフォントロックを有効化
  (add-hook 'markdown-mode-hook
            (lambda ()
              (font-lock-mode 1)
              (font-lock-ensure)
              (auto-fill-mode -1))))


;;;;;
;;;;; pandoc
;;;;; markdown-preview (C-c C-c p)
;;;;;
;;;;; sudo apt install pandoc
;;;;; winget install JohnMacFarlane.Pandoc
;;;;;
(setq markdown-command "pandoc")


;;;;;
;;;;; Markdown で表(テーブル)を描く
;;;;; http://qiita.com/nanasess/items/c9342c06a3e28e64aeb8
;;;;;
(defun cleanup-org-tables ()
  (save-excursion
    (goto-char (point-min))
    (while (search-forward "-+-" nil t) (replace-match "-|-"))))
(add-hook 'markdown-mode-hook 'orgtbl-mode)
(add-hook 'markdown-mode-hook 'turn-on-orgtbl)
(add-hook 'markdown-mode-hook
          #'(lambda()
              (add-hook 'after-save-hook
                        'cleanup-org-tables
                        nil
                        'make-it-local)))
