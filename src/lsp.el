;;; init-environment.el --- Environment settings -*- lexical-binding: t; -*-

;;; npm install -g typescript typescript-language-server
;;; typescript-language-server --version
;;; tsc --version

;;; (executable-find "typescript-language-server")
;;; "c:/Users/yanqi/AppData/Local/Volta/bin/typescript-language-server.cmd"

(use-package lsp-mode
  :ensure t
  :hook ((typescript-mode . lsp)
         (tsx-ts-mode . lsp)
         (rust-mode . lsp))
  :commands lsp
  :config
  ;; パフォーマンス設定
  (setq lsp-idle-delay 0.5)
  (setq lsp-log-io nil)  ;; デバッグ時は t に
  ;; UI 設定
  (setq lsp-headerline-breadcrumb-enable t)
  (setq lsp-modeline-code-actions-enable t))


;;;;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;  lsp-ui（視覚的な UI）
;;;;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(use-package lsp-ui
  :ensure t
  :commands lsp-ui-mode
  :config
  (setq lsp-ui-doc-enable t)
  (setq lsp-ui-doc-position 'at-point)
  (setq lsp-ui-sideline-enable t)
  (setq lsp-ui-sideline-show-diagnostics t))


;;;;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;  company（補完フロントエンド）
;;;;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(use-package company
  :ensure t
  :hook (after-init . global-company-mode)
  :config
  (setq company-minimum-prefix-length 1)
  (setq company-idle-delay 0.0))
