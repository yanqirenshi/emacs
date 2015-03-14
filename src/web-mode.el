(add-to-list 'auto-mode-alist '("\\.jsx$" . web-mode))
(defadvice web-mode-highlight-part (around tweak-jsx activate)
  (if (equal web-mode-content-type "jsx")
      (let ((web-mode-enable-part-face nil))
        ad-do-it)
    ad-do-it))


;; (flycheck-def-executable-var 'jsxhint-checker "jsxhint")
;; (flycheck-define-command-checker 'jsxhint-checker
;;   "A JSX syntax and style checker based on JSXHint.
;;    You must insatll jsxhint with `npm insatll -g jsxhint` first"
;;
;;    :command `("jsxhint" "--config" ,(expand-file-name "~/.emacs.d/.jshintrc") source)
;;    :error-patterns '((error line-start (1+ nonl) ": line " line ", col " column ", " (message) line-end))
;;    :modes '(web-mode))
;;
;; (add-hook 'web-mode-hook
;;              (lambda ()
;;                (when (equal web-mode-content-type "jsx")
;;                  ;; enable flycheck
;;                  (flycheck-select-checker 'jsxhint-checker)
;;                  (flycheck-mode))))
