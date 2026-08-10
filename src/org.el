;;; org.el --- Org-mode settings -*- lexical-binding: t; -*-

;;;;;
;;;;; Org-mode
;;;;; <url>
;;;;;  http://orgmode.org/ja/
;;;;;


;;;;;
;;;;; auto-fill-mode
;;;;;
(add-hook 'org-mode-hook
          (lambda () (auto-fill-mode -1)))


;;;;;
;;;;; org-capture
;;;;;
(global-set-key (kbd "C-c c") 'org-capture)

(setq org-capture-templates
      '(("t" "Todo" entry (file+headline "~/org.notes/todo.org" "Tasks")
         "* TODO %?\n  SCHEDULED: %t\n  %a\n")
        ("n" "Note" entry (file+datetree "~/org.notes/notes.org")
         "* %?\n  Entered on %U\n  %i\n")
        ("m" "Meeting" entry (file+headline "~/org.notes/meetings.org" "Meetings")
         "* %^{Meeting Title} %T\n** Attendees\n  - %?\n** Notes\n\n** Action Items\n")
        ("j" "Journal" entry (file+datetree "~/org.notes/journal.org")
         "* %U\n%?")
        ("i" "Idea" entry (file "~/org.notes/ideas.org")
         "* %^{Title}\n  %U\n  %?\n")
        ("b" "Book" entry (file+headline "~/org.notes/reading.org" "To Read")
         "* TODO %^{Book Title}\n  :PROPERTIES:\n  :Author: %^{Author}\n  :END:\n  %?")))


;;;;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;
;;;;; git-auto-commit-mode
;;;;;
;;;;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(use-package git-auto-commit-mode
  :ensure t)

;; 自動push
(setq-default gac-automatically-push-p t)

;; orgファイルで自動有効化
(add-hook 'org-mode-hook
          (lambda ()
            (when (string-prefix-p (expand-file-name "~/org.notes/")
                                   buffer-file-name)
              (git-auto-commit-mode 1))))
