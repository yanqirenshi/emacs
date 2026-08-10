;;; sly.el --- SLY settings -*- lexical-binding: t; -*-

(use-package sly
  :ensure t
  :defer t
  :config
  (add-to-list 'sly-lisp-implementations
               '(spinor ("spinor" "server")
                        :coding-system
                        utf-8-unix))
  (setq sly-default-lisp 'spinor))
