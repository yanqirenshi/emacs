;;; path.el --- PATH settings -*- lexical-binding: t; -*-

(use-package exec-path-from-shell
  :ensure t
  :if (memq window-system '(pgtk x ns))
  :init
  (exec-path-from-shell-initialize)
  :config

  (exec-path-from-shell-copy-envs
   '("LANG" "LC_ALL" "LC_CTYPE" "PATH")))

(pcase window-system
  ('ns  ;; macOS
   (setenv "PS1" "\\w$ "))
  ((or 'x 'pgtk)  ;; Linux
   (when (getenv "WSL_DISTRO_NAME")
     ;; WSL2
     nil)))

(unless (member (getenv "LANG") '("ja_JP.UTF-8" "ja_JP.utf8"))
  (setenv "LANG" "ja_JP.UTF-8")
  (setenv "LC_ALL" "ja_JP.UTF-8")
  (message "LANG was not set correctly, set to ja_JP.UTF-8"))
