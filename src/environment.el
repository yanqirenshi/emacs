(setq inhibit-startup-message t)


;;;
;;; indent
;;;
(setq-default tab-width 4 indent-tabs-mode nil)

;;;
;;; window
;;;
(menu-bar-mode t)
(tool-bar-mode 0)
(setq frame-title-format (format "emacs@%s : %%f" (system-name))) ;;; タイトルバーにファイル名を表示する
(set-frame-parameter nil 'alpha 90) ;; 背景半透明


;; 大文字小文字の変換を有効にする。
(put 'upcase-region  'disabled nil)
(put 'downcase-region 'disabled nil)

;;; 最近使ったファイルを保存(M-x recentf-open-filesで開く)
(recentf-mode)

;;;
;;; http://d.hatena.ne.jp/kakurasan/20070625/p1
(global-set-key "\M-w" 'clipboard-kill-ring-save)  ; クリップボードにコピー
(global-set-key "\C-w" 'clipboard-kill-region)     ; 切り取ってクリップボードへ


;;;
;;; ビープ音を消す。
;;; 参照: http://qiita.com/ongaeshi/items/696407fc6c42072add54
(setq ring-bell-function 'ignore)


;;;
;;; change browser
;;; <url>
;;;  http://www.emacswiki.org/emacs/BrowseUrl
;;;  http://stackoverflow.com/questions/4506249/how-to-make-emacs-org-mode-open-links-to-sites-in-google-chrome
;;;
;;; 以下見直しが必要
;;; http://d.hatena.ne.jp/munepi/20100221/emacs
;; (defun browse-url-chrome (url &optional new-window)
;;   (interactive (browse-url-interactive-arg "URL: "))
;;  (start-process "google-chrome" nil "google-chrome"
;;                 url))
;;(setq browse-url-browser-function 'browse-url-chrome)
