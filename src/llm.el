;;; init-environment.el --- Environment settings -*- lexical-binding: t; -*-

(use-package gptel
  :ensure t
  :config
  (setq gptel-api-key "your-api-key-here")
  ;; Claude を使う場合
  (setq gptel-model "claude-sonnet-4-20250514"
        gptel-backend (gptel-make-anthropic "Claude"
                        :stream t
                        :key "your-anthropic-api-key")))

