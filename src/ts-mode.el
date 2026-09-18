;;; ts-mode.el --- TypeScript mode settings -*- lexical-binding: t; -*-

;;;
;;; tree-sitter 文法のソース定義
;;; 未インストールのマシンでは M-x treesit-install-language-grammar で
;;; typescript と tsx を入れる (要 C コンパイラ。Windows は MSYS2 の gcc)。
;;; 文法は ~/.emacs.d/tree-sitter/ に配置される。
;;;
(require 'treesit)

(dolist (spec '((typescript "https://github.com/tree-sitter/tree-sitter-typescript"
                            "master" "typescript/src")
                (tsx        "https://github.com/tree-sitter/tree-sitter-typescript"
                            "master" "tsx/src")))
  (add-to-list 'treesit-language-source-alist spec))

(use-package typescript-ts-mode
  :mode "\\.ts\\'"
  :hook (typescript-ts-mode . lsp-deferred)
  :config
  (setq typescript-ts-mode-indent-offset 2))

(use-package lsp-mode
  :ensure t
  :hook (typescript-ts-mode . lsp-deferred)
  :commands (lsp lsp-deferred))
