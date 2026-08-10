;;; haskell.el --- Haskell settings -*- lexical-binding: t; -*-

(use-package haskell-mode
  :ensure t
  :mode ("\\.hs\\'" . haskell-mode)
  :config
  (setq haskell-process-type 'cabal-repl))

(use-package lsp-mode
  :ensure t
  :hook (haskell-mode . lsp-deferred)
  :commands (lsp lsp-deferred))

(use-package lsp-haskell
  :ensure t)


(use-package company
  :ensure t
  :hook (haskell-mode . company-mode))
