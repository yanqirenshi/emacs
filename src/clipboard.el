;;; init-environment.el --- Environment settings -*- lexical-binding: t; -*-

;;;
;;; クリップボード: http://d.hatena.ne.jp/kakurasan/20070625/p1
;;;
(global-set-key "\M-w" 'clipboard-kill-ring-save)  ; クリップボードにコピー
(global-set-key "\C-w" 'clipboard-kill-region)     ; 切り取ってクリップボードへ


;; Wayland プロトコルを通じて Windows のクリップボードと同期
(setq select-enable-clipboard t)    ; クリップボードと同期
(setq select-enable-primary t)      ; セレクション（中クリック）と同期
