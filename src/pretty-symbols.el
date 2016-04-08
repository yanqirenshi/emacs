;;;;;
;;;;; http://rubikitch.com/2014/08/15/pretty-symbols/
;;;;;

;; デフォルトはlambdaのみだが、すべて有効にしてしまうと…
(setq pretty-symbol-categories '(lambda logical relational nil))

;; 対応メジャーモードのフックを設定する
(add-hook 'emacs-lisp-mode-hook 'pretty-symbols-mode)
(add-hook 'inferior-lisp-mode-hook 'pretty-symbols-mode)
(add-hook 'inferior-emacs-lisp-mode-hook 'pretty-symbols-mode)

