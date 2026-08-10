;;; ts-mode.el --- TypeScript mode settings -*- lexical-binding: t; -*-

(use-package typescript-ts-mode
  :mode "\\.ts\\'"
  :hook (typescript-ts-mode . lsp-deferred)
  :config
  (setq typescript-ts-mode-indent-offset 2))

(use-package lsp-mode
  :ensure t
  :hook (typescript-ts-mode . lsp-deferred)
  :commands (lsp lsp-deferred))
