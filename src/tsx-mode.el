;;; init-environment.el --- Environment settings -*- lexical-binding: t; -*-

(add-to-list 'auto-mode-alist '("\\.tsx$" . tsx-ts-mode))

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


;;;;;
;;;;; lsp-mode
;;;;;
;; (setq lsp-auto-configure t)
;; (setq lsp-enable-file-watchers nil)

;; 2. lsp-mode
(use-package lsp-mode
  :ensure t
  :init
  (setq lsp-keymap-prefix "C-c l")
  :hook (tsx-ts-mode . lsp-deferred)
  :commands (lsp lsp-deferred))

;; 3. 補完候補の表示
(use-package company
  :ensure t
  :config
  (add-hook 'after-init-hook 'global-company-mode))


;; パスの設定
(add-to-list 'exec-path (expand-file-name "~/.nvm/versions/node/v24.12.0/bin/"))
