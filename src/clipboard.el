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
;; xclip をインストール
;; sudo apt install xclip

;; WSL2 のクリップボード設定
(when (and (eq system-type 'gnu/linux)
           (getenv "WSL_DISTRO_NAME"))

  ;; クリップボード連携を有効化
  (setq select-enable-clipboard t)
  (setq select-enable-primary t)

  ;; 自動判定して最適な方法を選択
  (cond
   ;; 方法1: Wayland (WSLg)
   ((and (getenv "WAYLAND_DISPLAY")
         (executable-find "wl-copy"))
    (setq interprogram-cut-function
          (lambda (text)
            (let ((process-connection-type nil))
              (let ((proc (start-process "wl-copy" nil "wl-copy")))
                (process-send-string proc text)
                (process-send-eof proc)))))
    (setq interprogram-paste-function
          (lambda ()
            (shell-command-to-string "wl-paste --no-newline"))))

   ;; 方法2: X11 (WSLg)
   ((and (getenv "DISPLAY")
         (executable-find "xclip"))
    (setq interprogram-cut-function
          (lambda (text)
            (let ((process-connection-type nil))
              (let ((proc (start-process "xclip" nil "xclip" "-selection" "clipboard")))
                (process-send-string proc text)
                (process-send-eof proc)))))
    (setq interprogram-paste-function
          (lambda ()
            (shell-command-to-string "xclip -selection clipboard -o"))))

   ;; 方法3: clip.exe (フォールバック)
   (t
    (setq interprogram-cut-function
          (lambda (text)
            (let ((process-connection-type nil))
              (let ((proc (start-process "wsl-copy" nil "clip.exe")))
                (process-send-string proc text)
                (process-send-eof proc)))))
    (setq interprogram-paste-function
          (lambda ()
            (let ((coding-system-for-read 'utf-8-dos))
              (substring
               (shell-command-to-string "powershell.exe -command 'Get-Clipboard'")
               0 -1)))))))
