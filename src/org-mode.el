;;; init-environment.el --- Environment settings -*- lexical-binding: t; -*-

;;;;;
;;;;; Org-mode
;;;;; <url>
;;;;;  http://orgmode.org/ja/
;;;;;


;;;
;;; ほかの設定
;;;
(add-hook 'org-mode-hook
          (lambda () (auto-fill-mode -1)))


;;;;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;
;;;;; git-auto-commit-mode
;;;;;
;;;;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(use-package git-auto-commit-mode
  :ensure t)

;; 自動push
(setq-default gac-automatically-push-p t)

;; orgファイルで自動有効化
(add-hook 'org-mode-hook
          (lambda ()
            (when (string-prefix-p (expand-file-name "~/org.notes/")
                                   buffer-file-name)
              (git-auto-commit-mode 1))))
