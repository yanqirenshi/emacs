;;;;;
;;;;; SKK
;;;;;

(require 'skk-autoloads)

;;;
;;; 辞書設定。。。どうしよう。。。
;;;
;; (setq skk-user-directory "~/Documents/dic")
;; (setq skk-large-jisyo "~/Documents/dic/SKK-JISYO.L")
;; (setq skk-preload t)

(global-set-key "\C-x\C-j" 'skk-mode)
(global-set-key "\C-xj" 'skk-auto-fill-mode)
(global-set-key "\C-xt" 'skk-tutorial)

;;;
;;; 何のもの？
;;;
;; (autoload 'skk-mode "skk" nil xt)
;; (autoload 'skk-tutorial "skk-tut" nil t)
;; (autoload 'skk-check-jisyo "skk-tools" nil t)
;; (autoload 'skk-merge "skk-tools" nil t)
;; (autoload 'skk-diff "skk-tools" nil t)

;;;
;;; □ "「"を入力したら"」"も自動で挿入
;;;
(setq skk-auto-insert-paren t)

;;;
;;; □ 句読点は , . を使う
;;;
(setq skk-kuten-touten-alist
      '((jp . ("。" . "、" ))
        (en . ("．" . "，"))))

;;;
;;; □ jp にすると「。、」を使います
;;;
(setq-default skk-kutouten-type 'jp)

;;;
;;; □ @で挿入する日付表示を半角に
;;;
(setq skk-number-style nil)

;;;
;;; □ 変換のときEnterを押しても確定のみで改行しない。
;;;
(setq skk-egg-like-newline t)

;;;
;;; インクリメンタルサーチで日本語
;;;
(add-hook 'isearch-mode-hook
          (function (lambda ()
                      (and (boundp 'skk-mode) skk-mode
                           (skk-isearch-mode-setup)))))
(add-hook 'isearch-mode-end-hook
          (function (lambda ()
                      (and (boundp 'skk-mode) skk-mode
                           (skk-isearch-mode-cleanup)
                           (skk-set-cursor-color-properly)))))

