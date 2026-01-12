;;; init-environment.el --- Environment settings -*- lexical-binding: t; -*-

(setenv "PATH" (concat "C:/msys64/ucrt64/bin;" (getenv "PATH")))
(setq exec-path (cons "C:/msys64/ucrt64/bin" exec-path))
