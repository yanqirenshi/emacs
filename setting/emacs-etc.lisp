(show-paren-mode t)

;; http://d.hatena.ne.jp/kakurasan/20070625/p1
(global-set-key "\M-w" 'clipboard-kill-ring-save)  ; クリップボードにコピー
(global-set-key "\C-w" 'clipboard-kill-region)     ; 切り取ってクリップボードへ
;clipboard-yank これはなに？

;;;
;;; change browser
;;;
(defun browse-url-chrome (url &optional new-window)
  (interactive (browse-url-interactive-arg "URL: "))
  (start-process "google-chrome" nil "google-chrome"
                 url))
(setq browse-url-browser-function 'browse-url-chrome)



;;
(setq auto-mode-alist (append '(("\\.pic$" . picture-mode)) auto-mode-alist))
(setq auto-mode-alist (append '(("\\.ter$" . picture-mode)) auto-mode-alist))



;;
(set-frame-parameter nil 'alpha 85)

