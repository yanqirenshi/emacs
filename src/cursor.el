;;;
;;; カーソル行のハイライト
;;; http://murakan.cocolog-nifty.com/blog/2009/01/emacs-tips-1d45.html
;;;
(defface hlline-face
  '((((class color)
      (background dark))
     (:background "dark slate gray"))
    (((class color)
      (background light))
     (:background "#f6bfbc"))
    (t
     ()))
  "*Face used by hl-line.")

(setq hl-line-face 'hlline-face)

;; カーソル行に下線を表示する。
;; (setq hl-line-face 'underline)

(global-hl-line-mode)
