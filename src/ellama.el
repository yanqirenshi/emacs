;;; ellama.el --- Ellama settings -*- lexical-binding: t; -*-

;;;;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;; ellama
;;;;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(use-package llm
  :ensure t
  :config
  (setq llm-warn-on-nonfree nil))

(use-package ellama
  :ensure t
  :after llm
  :init
  (require 'llm-gemini)
  (setopt ellama-provider
          (make-llm-gemini
           :key (getenv "GEMINI_API_KEY")
           :chat-model "gemini-3-pro-preview"))
  (setq ellama-language "Japanese")
  :bind (("C-c e c" . ellama-chat)
         ("C-c e s" . ellama-ask-selection)
         ("C-c e d" . ellama-code-add)
         ("C-c e r" . ellama-code-review)))

;; (use-package ellama
;;   :ensure t
;;   :after llm
;;   :init
;;   (require 'llm-gemini)
;;   (require 'auth-source')
;;   (setopt ellama-provider
;;           (make-llm-gemini
;;            :key (auth-source-pick-first-password :host "gemini")
;;            :chat-model "gemini-3-pro-preview"))
;;   (setq ellama-language "Japanese")
;;   :bind (("C-c e c" . ellama-chat)
;;          ("C-c e s" . ellama-ask-selection)
;;          ("C-c e d" . ellama-code-add)
;;          ("C-c e r" . ellama-code-review)))
