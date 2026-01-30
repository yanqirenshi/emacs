;;; init-environment.el --- Environment settings -*- lexical-binding: t; -*-

(setq inhibit-startup-message t)

;;;
;;; default-directory
;;;   http://qiita.com/t2psyto/items/05776f010792ba967152
;;;
(setq default-directory "~/")
(setq command-line-default-directory "~/")

;;;
;;; indent
;;;
(setq-default tab-width 4 indent-tabs-mode nil)

;;;
;;; 大文字小文字の変換を有効にする。
;;;
(put 'upcase-region  'disabled nil)
(put 'downcase-region 'disabled nil)

;;;
;;; 最近使ったファイルを保存(M-x recentf-open-filesで開く)
;;;
(recentf-mode)

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
