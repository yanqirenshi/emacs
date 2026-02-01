;;; init-environment.el --- Environment settings -*- lexical-binding: t; -*-

(add-to-list 'auto-mode-alist '("\\.tsx$" . tsx-ts-mode))

;; npm install -g typescript typescript-language-server

;;;;;
;;;;; tsx-mode
;;;;; orzechowskid/tsx-mode.el
;;;;; https://github.com/orzechowskid/tsx-mode.el



;;;;;
;;;;; auto-rename-tag
;;;;; タグの片方変更すると、もう片方も変更してくれるやつ。
(use-package auto-rename-tag
  :ensure t
  :hook (tsx-ts-mode . auto-rename-tag-mode))


;;;;;
;;;;; emmet-mode
;;;;; タグを自動生成してくれるらしい。いらんかも。
;;;;;
(use-package emmet-mode
  :ensure t
  :hook (tsx-ts-mode . emmet-mode)
  :config
  (setq emmet-expand-jsx-className? t))
