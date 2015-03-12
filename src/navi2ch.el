;;
;; navi2ch
;;
(add-to-list 'load-path "/home/atman/.emacs.d/dist/navi2ch/1.8.4/")
(require 'navi2ch)
(setq navi2ch-article-exist-message-range '(1 .1000)) ;
(setq navi2ch-article-new-message-range '(1000 .1))   ;
(setq navi2ch-board-insert-subject-with-diff t)
(setq navi2ch-board-insert-subject-with-unread t)
(setq navi2ch-list-init-open-category t)
(setq navi2ch-board-expire-date nil)
(setq navi2ch-history-max-line nil)
