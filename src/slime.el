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
;;;;; slime は Githubのものを利用することを基本とる。
;;;;; <git>
;;;;;  https://github.com/slime/slime
;;;;; <参考>
;;;;;  https://common-lisp.net/project/slime/doc/html/Installation.html#Installation
;;;;;
(setq inferior-lisp-program *iwo-cl-path*)
(add-to-list 'load-path *iwo-slime-path*)
(require 'slime-autoloads)
(slime-setup '(slime-repl slime-fancy slime-banner))


;;;
;;; old
;;;  linux でも動作確認出来たら削除する。
;;;
;; (setq inferior-lisp-program *iwo-cl-path*)
;; (require 'slime)
;; (setq slime-net-coding-system 'utf-8-unix)
;; (setq slime-lisp-implementations
;;       `((sbcl (,*iwo-cl-path*) :coding-system utf-8-unix)))
;; (slime-setup '(slime-repl slime-fancy slime-banner))


;;;;;
;;;;; HyperSpecをw3mで見る
;;;;;
(defadvice common-lisp-hyperspec
  (around hyperspec-lookup-w3m () activate)
  (let* ((window-configuration (current-window-configuration))
         (browse-url-browser-function
          `(lambda (url new-window)
             (w3m-browse-url url nil)
             (let ((hs-map (copy-keymap w3m-mode-map)))
               (define-key hs-map (kbd "q")
                 (lambda ()
                   (interactive)
                   (kill-buffer nil)
                   (set-window-configuration ,window-configuration)))
               (use-local-map hs-map)))))
    ad-do-it))
