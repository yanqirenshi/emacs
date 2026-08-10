;;; picture.el --- picture-mode settings -*- lexical-binding: t; -*-

;;;;;
;;;;; 拡張子の関連づけ
;;;;;
(setq auto-mode-alist
      (append '(("\\.pic$" . picture-mode))
              auto-mode-alist))
