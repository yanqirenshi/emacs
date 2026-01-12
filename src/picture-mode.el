;;; init-environment.el --- Environment settings -*- lexical-binding: t; -*-

;;;;;
;;;;; 拡張子の関連づけ
;;;;;
(setq auto-mode-alist
      (append '(("\\.pic$" . picture-mode))
              auto-mode-alist))
