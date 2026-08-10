;;; gptel.el --- gptel settings -*- lexical-binding: t; -*-

(use-package gptel
  :ensure t
  :config
  (setq gptel-model 'gemini-3-pro-preview)
  (setq gptel-backend
        (gptel-make-gemini "Gemini"
          :key (gemini-api-key)
          :stream nil))
  (setq gptel-default-mode 'org-mode)
  :bind (("C-c g" . gptel)
         ("C-c C-g" . gptel-send)))
