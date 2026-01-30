;;; init-environment.el --- Environment settings -*- lexical-binding: t; -*-

;; sudo apt install -y cmake libtool-bin libvterm-dev

(use-package vterm
  :ensure t
  :config
  (setq vterm-shell "/bin/bash")
  (setq vterm-buffer-name-string "vterm %s")
  (setq vterm-max-scrollback 10000))

(global-set-key (kbd "C-c t") 'vterm)
