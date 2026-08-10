;;; msys2.el --- MSYS2 settings -*- lexical-binding: t; -*-

(setenv "PATH" (concat "C:/msys64/ucrt64/bin;" (getenv "PATH")))
(setq exec-path (cons "C:/msys64/ucrt64/bin" exec-path))
