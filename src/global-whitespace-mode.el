;; http://masutaka.net/chalow/2011-10-12-1.html

(global-whitespace-mode 1)

(require 'cl)

;; スペースの定義は全角スペースとする。
(setq whitespace-space-regexp "\x3000+")

;; 改行の色を変更
;; (set-face-foreground 'whitespace-newline "gray40")

;; 半角スペースと改行を除外
(dolist (d '((space-mark ?\ ) (newline-mark ?\n)))
  (setq whitespace-display-mappings
        (delete-if
         '(lambda (e) (and (eq (car d) (car e))
                           (eq (cadr d) (cadr e))))
         whitespace-display-mappings)))

;; 全角スペースと改行を追加
(dolist (e '((space-mark   ?\x3000 [?\□])
             (newline-mark ?\n     [?\u21B5 ?\n] [?$ ?\n])))
  (add-to-list 'whitespace-display-mappings e))

;; ;; 強調したくない要素を削除
;; (dolist (d '(face lines space-before-tab
;;                   indentation empty space-after-tab tab-mark))
;;   (setq whitespace-style (delq d whitespace-style)))
