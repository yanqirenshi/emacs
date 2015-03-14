(setq inhibit-startup-message t)
(menu-bar-mode t)
(tool-bar-mode -1)


;;;
;;(set-language-environment 'Japanese)
(set-language-environment "UTF-8")
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-buffer-file-coding-system 'utf-8-unix)
(setq default-buffer-file-coding-system 'utf-8)
(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(setq file-name-coding-system 'utf-8)


;;フォントの設定
;; (create-fontset-from-fontset-spec
;;  "-shinonome-gothic-medium-r-normal--12-*-*-*-*-*-fontset-12")
;; (set-default-font "fontset-12")



;;; Show Paren Mode
(show-paren-mode)                      ;; ShowParenMode   URL : http://www.emacswiki.org/emacs/ShowParenMode

;;; 行間
(setq-default line-spacing 0)

;;; モードライン
(line-number-mode t)                   ;; カーソルがある行の行数を表示
(column-number-mode t)                 ;; カーソルがある位置の文字数を表示
(display-time)                         ;; 時刻を表示する。


;;; 行の折り返し。デフォルトでは折り返す。
(setq truncate-lines t)
(setq truncate-partial-width-windows t)


;; 大文字小文字の変換を有効にする。
(put 'upcase-region  'disabled nil)
(put 'downcase-region 'disabled nil)


;;; タイトルバーにファイル名を表示する
(setq frame-title-format (format "emacs@%s : %%f" (system-name)))


;;; 最近使ったファイルを保存(M-x recentf-open-filesで開く)
(recentf-mode)


;;;
;;; http://d.hatena.ne.jp/kakurasan/20070625/p1
(global-set-key "\M-w" 'clipboard-kill-ring-save)  ; クリップボードにコピー
(global-set-key "\C-w" 'clipboard-kill-region)     ; 切り取ってクリップボードへ


;;;
;;; 背景半透明
;;;
(set-frame-parameter nil 'alpha 90)
