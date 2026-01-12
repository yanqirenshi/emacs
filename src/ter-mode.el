;;; init-environment.el --- Environment settings -*- lexical-binding: t; -*-

;;;;;
;;;;; T-ER Mode
;;;;;
(setq auto-mode-alist
      (append '(("\\.ter$" . picture-mode)) auto-mode-alist))
