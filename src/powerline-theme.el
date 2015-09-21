;;;
;;; Face
;;;
;;; ;; color:
;;; http://www.color-sample.com/colors/530/
;;;
;;; ;; make-face @ 37.12.2 Defining Faces
;;; http://www.gnu.org/software/emacs/manual/html_node/elisp/Defining-Faces.html
;;;
;;; ;; set-face-attribute @ 37.12.1 Face Attributes
;;; http://www.gnu.org/software/emacs/manual/html_node/elisp/Face-Attributes.html
(defun powerline-yanqi-faces ()
  (set-face-attribute 'mode-line           nil :background nil :box nil)
  (set-face-attribute 'powerline-active1   nil :background "#FFA500" :foreground "#333" :inherit 'mode-line)
  (set-face-attribute 'powerline-active2   nil :background "#E59500" :foreground "#222" :inherit 'mode-line)
  ;; (set-face-attribute 'mode-line-inactive  nil :background nil :box nil)
  ;; (set-face-attribute 'powerline-inactive1 nil :background nil                          :inherit 'mode-line-inactive)
  ;; (set-face-attribute 'powerline-inactive2 nil :background nil                          :inherit 'mode-line-inactive)
  )

;;;
;;; left
;;;
(defun powerline-yanqi-theme-lhs (mode-line face1 face2 separator-left)
  (list (powerline-raw "%*" face2 'l)                         ;; ???
        (when powerline-display-buffer-size                   ;; buffer size
          (powerline-buffer-size face2 'l))
        (when powerline-display-mule-info                     ;; mule info
          (powerline-raw mode-line-mule-info face2 'l))
        (powerline-buffer-id face2 'l)                        ;; ??? directory
        (when (and (boundp 'which-func-mode) which-func-mode) ;; ??? file
          (powerline-raw which-func-format face2 'l))
        (powerline-raw " " face2)                             ;; space
        (funcall separator-left face2 face1)                  ;; >
        (when (boundp 'erc-modified-channels-object)          ;; ???
          (powerline-raw erc-modified-channels-object face1 'l))
        (powerline-major-mode face1 'l)                       ;; major mode
        (powerline-process face1)                             ;; ???
        (powerline-minor-modes face1 'l)                      ;; minor mode list
        (powerline-narrow face1 'l)                           ;; ???
        (powerline-raw " " face1)                             ;; space
        (funcall separator-left face1 mode-line)              ;; >
        (powerline-vc face2 'r)                               ;;
        (when (bound-and-true-p nyan-mode)                    ;;
          (powerline-raw (list (nyan-create)) face2 'l))))

;;;
;;; right
;;;
(defun powerline-yanqi-theme-rhs (mode-line face1 face2 separator-right)
  (list (powerline-raw global-mode-string face1 'r)
        (funcall separator-right mode-line face1)                   ;; <
        (unless window-system                                       ;; ???
          (powerline-raw (char-to-string #xe0a1) face1 'l))
        (powerline-raw "%4l" face1 'l)                              ;; line number
        (powerline-raw ":" face1 'l)                                ;; separator
        (powerline-raw "%3c" face1 'r)                              ;; column number
        (powerline-raw "%6p" face1 'r)                              ;; page position [%]
        (funcall separator-right face1 face2)                       ;; <
        (powerline-raw " " face2)                                   ;; separator
        (powerline-raw (format-time-string "%H:%M %m/%d %A") face2) ;; time
        (powerline-raw " " face2)                                   ;; separator
        (when powerline-display-hud                                 ;; ???
          (powerline-hud face2 face1))))

;;;
;;; command
;;;
(defun powerline-yanqi-theme ()
  "Setup the Yanqirenshi mode-line."
  (interactive)
  (setq-default mode-line-format
                '("%e"
                  (:eval
                   (let* ((active (powerline-selected-window-active))
                          (mode-line (if active 'mode-line 'mode-line-inactive))
                          (face1 (if active 'powerline-active1 'powerline-inactive1))
                          (face2 (if active 'powerline-active2 'powerline-inactive2))
                          (separator-left (intern (format "powerline-%s-%s"
                                                          (powerline-current-separator)
                                                          (car powerline-default-separator-dir))))
                          (separator-right (intern (format "powerline-%s-%s"
                                                           (powerline-current-separator)
                                                           (cdr powerline-default-separator-dir))))
                          (lhs (powerline-yanqi-theme-lhs mode-line face1 face2 separator-left))
                          (rhs (powerline-yanqi-theme-rhs mode-line face1 face2 separator-right)))
                     (powerline-yanqi-faces)
                     (concat (powerline-render lhs)
                             (powerline-fill mode-line (powerline-width rhs))
                             (powerline-render rhs)))))))
