;;; init-environment.el --- Environment settings -*- lexical-binding: t; -*-

;; タイトルバーにファイル名を表示する
(setq frame-title-format (format "emacs@%s : %%f" (system-name)))
