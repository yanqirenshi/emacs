;;; init-environment.el --- Environment settings -*- lexical-binding: t; -*-

(add-to-list 'load-path "~/prj/Spinor/editors/emacs/")
(require 'spinor-mode nil t)

(add-to-list 'auto-mode-alist '("\\.spin\\'" . spinor-mode))
