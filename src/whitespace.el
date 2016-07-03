(require 'whitespace)

;; 空白
(set-face-foreground 'whitespace-space nil)
(set-face-background 'whitespace-space "gray33")
;; ファイル先頭と末尾の空行
(set-face-background 'whitespace-empty "gray33")
;; タブ
(set-face-foreground 'whitespace-tab nil)
(set-face-background 'whitespace-tab "gray44")
;; ???
(set-face-background 'whitespace-trailing "gray33")
(set-face-background 'whitespace-hspace "gray33")

(setq whitespace-style '(face           ; faceで可視化
                         trailing       ; 行末
                         tabs           ; タブ
                         empty          ; 先頭/末尾の空行
                         spaces         ; 空白
                         ;; space-mark     ; 表示のマッピング
                         tab-mark))

;; スペースは全角のみを可視化
(setq whitespace-space-regexp "\\(\u3000+\\)")

;; タブの表示を変更
(setq whitespace-display-mappings
      '((tab-mark ?\t [?\xBB ?\t])))

(global-whitespace-mode 1)


;; https://www.emacswiki.org/emacs/ShowWhiteSpace
;; http://qiita.com/itiut@github/items/4d74da2412a29ef59c3a
;; http://konbu13.hatenablog.com/entry/2014/04/01/203857
;; https://www.emacswiki.org/emacs/ListColors
