;;;;;
;;;;; なんやろ、これ。
;;;;;
(let ((my-font-height 120)
      (my-font (cond
                (t   "Monaco")  ;; XCode 3.1 で使っているフォント
                (nil "Menlo")   ;; XCode 3.2 で使ってるフォント
                ))
      (my-font-ja "Hiragino Maru Gothic Pro"))
  (setq mac-allow-anti-aliasing t)

  ;; フォントサイズの微調節 (12ptで合うように)
  (setq face-font-rescale-alist
        '(("^-apple-hiragino.*" . 1.2)
          (".*osaka-bold.*" . 1.2)
          (".*osaka-medium.*" . 1.2)
          (".*courier-bold-.*-mac-roman" . 1.0)
          (".*monaco cy-bold-.*-mac-cyrillic" . 0.9)
          (".*monaco-bold-.*-mac-roman" . 0.9)
          ("-cdac$" . 1.3)))

  ;; デフォルトフォント設定
  (when my-font
    (set-face-attribute 'default nil :family my-font :height my-font-height)
    ;;(set-frame-font (format "%s-%d" my-font (/ my-font-height 10)))
    )

  ;; 日本語文字に別のフォントを指定
  (when my-font-ja
    (let ((fn (frame-parameter nil 'font))
          (rg "iso10646-1"))
      (set-fontset-font fn 'katakana-jisx0201 `(,my-font-ja . ,rg))
      (set-fontset-font fn 'japanese-jisx0208 `(,my-font-ja . ,rg))
      (set-fontset-font fn 'japanese-jisx0212 `(,my-font-ja . ,rg)))))



;;;;;
;;;;; Emacsのフォントが可愛くなる問題を解決する
;;;;;  url: http://minus9d.hatenablog.com/entry/20131103/1383475472
;;;;;
;; Mac用フォント設定
;; http://tcnksm.sakura.ne.jp/blog/2012/04/02/emacs/

;; 英語
(set-face-attribute 'default nil
                    :family "Menlo" ;; font
                    :height 180)    ;; font size

;; 日本語
(set-fontset-font
 nil 'japanese-jisx0208
 ;; (font-spec :family "Hiragino Mincho Pro")) ;; font
 (font-spec :family "Hiragino Kaku Gothic ProN" :size 18)) ;; font

;; 半角と全角の比を1:2にしたければ
(setq face-font-rescale-alist
      ;;        '((".*Hiragino_Mincho_pro.*" . 1.2)))
      '((".*Hiragino_Kaku_Gothic_ProN.*" . 1.2)));; Mac用フォント設定

