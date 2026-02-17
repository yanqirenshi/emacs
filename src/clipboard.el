;;; init-environment.el --- Environment settings -*- lexical-binding: t; -*-

;;;
;;; クリップボード: http://d.hatena.ne.jp/kakurasan/20070625/p1
;;;
(global-set-key "\M-w" 'clipboard-kill-ring-save)  ; クリップボードにコピー
(global-set-key "\C-w" 'clipboard-kill-region)     ; 切り取ってクリップボードへ


;; Wayland プロトコルを通じて Windows のクリップボードと同期
(setq select-enable-clipboard t)    ; クリップボードと同期
(setq select-enable-primary t)      ; セレクション（中クリック）と同期




;;;;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;  WSL2
;;;;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 以下をインストール
;; sudo apt install xclip
;; sudo apt install wl-clipboard

;; WSL2 のクリップボード設定
(when (and (eq system-type 'gnu/linux)
           (getenv "WSL_DISTRO_NAME"))

  (setq select-enable-clipboard t)
  (setq select-enable-primary t)

  (cond
   ;; Wayland (wl-clipboard)
   ((and (getenv "WAYLAND_DISPLAY")
         (executable-find "wl-copy")
         (executable-find "wl-paste"))
    (message "Using wl-clipboard")
    (setq interprogram-cut-function
          (lambda (text)
            (let ((process-connection-type nil)
                  (coding-system-for-write 'utf-8-unix))
              (let ((proc (start-process "wl-copy" nil "wl-copy")))
                (process-send-string proc text)
                (process-send-eof proc)))))
    (setq interprogram-paste-function
          (lambda ()
            (let ((coding-system-for-read 'utf-8-unix))
              (shell-command-to-string "wl-paste --no-newline")))))

   ;; X11 (xclip)
   ((and (getenv "DISPLAY")
         (executable-find "xclip"))
    (message "Using xclip")
    (setq interprogram-cut-function
          (lambda (text)
            (let ((process-connection-type nil)
                  (coding-system-for-write 'utf-8-unix))
              (let ((proc (start-process "xclip" nil "xclip" "-selection" "clipboard")))
                (process-send-string proc text)
                (process-send-eof proc)))))
    (setq interprogram-paste-function
          (lambda ()
            (let ((coding-system-for-read 'utf-8-unix))
              (shell-command-to-string "xclip -selection clipboard -o")))))

   ;; clip.exe (フォールバック)
   (t
    (message "Using clip.exe (fallback)")
    (setq interprogram-cut-function
          (lambda (text)
            (let ((process-connection-type nil)
                  (coding-system-for-write 'utf-8-dos))
              (let ((proc (start-process "wsl-copy" nil "clip.exe")))
                (process-send-string proc text)
                (process-send-eof proc)))))
    (setq interprogram-paste-function
          (lambda ()
            (let ((coding-system-for-read 'utf-8-dos)
                  (text (shell-command-to-string
                         "powershell.exe -NoProfile -Command 'Get-Clipboard'")))
              (if (> (length text) 0)
                  (substring text 0 -1)
                "")))))))
