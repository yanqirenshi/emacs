;;; rust-mode.el --- Rust mode settings -*- lexical-binding: t; -*-

;;;
;;; 言語サーバは rust-analyzer を使う。
;;;   rustup component add rust-analyzer
;;;
;;; tree-sitter 文法が未インストールのマシンでは
;;; M-x treesit-install-language-grammar で rust を入れる
;;; (要 C コンパイラ。Windows は MSYS2 の gcc)。
;;;
(require 'treesit)

;; master は ABI 15 の文法を生成し Emacs 30 (ABI 14 まで) では使えないため、
;; リビジョンを v0.23.3 に固定している。
(add-to-list 'treesit-language-source-alist
             '(rust "https://github.com/tree-sitter/tree-sitter-rust"
                    "v0.23.3" "src"))

(use-package rust-ts-mode
  :mode "\\.rs\\'"
  :hook (rust-ts-mode . lsp-deferred))
