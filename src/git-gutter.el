;;;;;
;;;;; git-gutter
;;;;;
(require 'git-gutter)
(global-git-gutter-mode +1)
(setq git-gutter:added-sign "++")
(setq git-gutter:deleted-sign-sign "--")
(setq git-gutter:modified-sign "  ")
(set-face-foreground 'git-gutter:added  "green")
(set-face-foreground 'git-gutter:deleted  "yellow")
(set-face-background 'git-gutter:modified "magenta")
