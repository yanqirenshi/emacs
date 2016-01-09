(add-to-list 'auto-mode-alist '("\\.jsx$" . web-mode))
(defadvice web-mode-highlight-part (around tweak-jsx activate)
  (if (equal web-mode-content-type "jsx")
      (let ((web-mode-enable-part-face nil))
        ad-do-it)
    ad-do-it))


;;;;;
;;;;; flycheck
;;;;;
;; npm install -g jsxhint
(defun error-test ()
  (condition-case error-var
      (progn
        (flycheck-def-executable-var 'jsxhint-checker "jsxhint")
        (flycheck-define-command-checker 'jsxhint-checker
          :command `("jsxhint" "--config" ,(expand-file-name "~/prj/emacs/.jshintrc") source)
          :error-patterns '((error line-start (1+ nonl) ": line " line ", col " column ", " (message) line-end))
          :modes '(web-mode))
        (add-hook 'web-mode-hook
                  (lambda ()
                    (when (equal web-mode-content-type "jsx")
                      ;; enable flycheck
                      (flycheck-select-checker 'jsxhint-checker)
                      (flycheck-mode)))))
    (message "%s" error-var)))
