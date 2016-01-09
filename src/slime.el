;;;;;
;;;;; check input variable
;;;;;
;; *iwo-cl-path*
(when (or (not (boundp '*iwo-cl-path*))
          (null *iwo-cl-path*))
  (error "Common Lisp実行モジュールの場所が指定されていません。 *iwo-cl-path* "))

;; *iwo-slime-path*
(when (or (not (boundp '*iwo-slime-path*))
          (null *iwo-slime-path*))
  (error "slimeの場所が指定されていません。 *iwo-slime-path*"))


;;;;;
;;;;; mode list
;;;;;
(defvar *slime-modes* '(slime-repl slime-fancy slime-banner slime-indentation))

;;;;;
;;;;; slime は Githubのものを利用することを基本とる。
;;;;; <git>
;;;;;  https://github.com/slime/slime
;;;;; <参考>
;;;;;  https://common-lisp.net/project/slime/doc/html/Installation.html#Installation
;;;;;
(setq inferior-lisp-program *iwo-cl-path*)
(add-to-list 'load-path *iwo-slime-path*)
(require 'slime)
(slime-setup *slime-modes*)

;;;;;
;;;;; slime-repl-ansi-color
;;;;;
(let ((path "~/prj/slime-repl-ansi-color/"))
  (when (directory-exist-p path)
    (add-to-list 'load-path path)
    (setq *slime-modes* (append *slime-modes* '(slime-repl-ansi-color)))
    (slime-setup *slime-modes*)
    (add-hook 'slime-repl-mode-hook (lambda () (slime-repl-ansi-on)))))

;;;;;
;;;;; HyperSpecをw3mで見る
;;;;;
;; (defadvice common-lisp-hyperspec
;;   (around hyperspec-lookup-w3m () activate)
;;   (let* ((window-configuration (current-window-configuration))
;;          (browse-url-browser-function
;;           `(lambda (url new-window)
;;              (w3m-browse-url url nil)
;;              (let ((hs-map (copy-keymap w3m-mode-map)))
;;                (define-key hs-map (kbd "q")
;;                  (lambda ()
;;                    (interactive)
;;                    (kill-buffer nil)
;;                    (set-window-configuration ,window-configuration)))
;;                (use-local-map hs-map)))))
;;     ad-do-it))
