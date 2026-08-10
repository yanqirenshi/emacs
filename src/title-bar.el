;;; title-bar.el --- Title bar settings -*- lexical-binding: t; -*-

;; タイトルバーにファイル名を表示する
(setq frame-title-format (format "emacs@%s : %%f" (system-name)))
