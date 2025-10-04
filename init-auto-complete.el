;;;
;;; auto complete
;;;
(require 'auto-complete)
(require 'auto-complete-config)
(ac-config-default)

;; 起動時に有効化
(global-auto-complete-mode t)

;; 候補表示までの遅延を短くする
(setq ac-auto-show-menu 0.2)

;; 自動補完のトリガー（3文字以上入力で発動）
(setq ac-auto-start 3)

;; TAB で補完できるようにする
(define-key ac-mode-map (kbd "TAB") 'auto-complete)
