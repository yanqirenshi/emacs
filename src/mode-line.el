;;;;;
;;;;; モードライン
;;;;;
;; カーソルがある行の行数を表示
(line-number-mode t)
;; カーソルがある位置の文字数を表示
(column-number-mode t)
;; 時刻を表示する。
(setq display-time-format "%Y-%m-%d (%a) %H:%M")
(display-time-mode)
;; バッテリー状態
(display-battery-mode)
;; ファイルのサイズ
(size-indication-mode)


;;;;;
;;;;; Mode
;;;;;
(defvar mode-line-cleaner-alist
  '( ;; For minor-mode, first char is 'space'
    (yas-minor-mode . " Ys")
    (paredit-mode . " Pe")
    (eldoc-mode . "")
    (abbrev-mode . "")
    (undo-tree-mode . " Ut")
    (elisp-slime-nav-mode . " EN")
    (helm-gtags-mode . " HG")
    (flymake-mode . " Fm")
    (git-gutter-mode . "GiG")
    ;; Major modes
    (lisp-interaction-mode . "Li")
    (python-mode . "Py")
    (lisp-mode . "Lisp")
    (ruby-mode   . "Rb")
    (emacs-lisp-mode . "El")
    (markdown-mode . "Md")))

(defun clean-mode-line ()
  (interactive)
  (loop for (mode . mode-str) in mode-line-cleaner-alist
        do
        (let ((old-mode-str (cdr (assq mode minor-mode-alist))))
          (when old-mode-str
            (setcar old-mode-str mode-str))
          ;; major mode
          (when (eq mode major-mode)
            (setq mode-name mode-str)))))

(add-hook 'after-change-major-mode-hook 'clean-mode-line)


;;;;;
;;;;; powerline
;;;;;
;; (require 'powerline)
;; (load "~/prj/emacs/src/powerline-theme.el")
;; (powerline-yanqi-theme)

