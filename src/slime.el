;;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; SLIME
;;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(setq inferior-lisp-program *iwo-sblc-path*)
(require 'slime)
(setq slime-net-coding-system 'utf-8-unix)
(setq slime-lisp-implementations
      `((sbcl (,*iwo-sblc-path*) :coding-system utf-8-unix)))
(slime-setup '(slime-repl slime-fancy slime-banner))
;; HyperSpecをw3mで見る
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
