;; <参照>
;; http://futurismo.biz/archives/2213
;; https://qiita.com/hiconyan/items/582e27128decfe9d249e

;;;;;
;;;;; ruby-mode
;;;;;
(autoload 'ruby-mode "ruby-mode"
          "Mode for editing ruby source files" t)
(add-to-list 'auto-mode-alist '("\\.rb$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Capfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("[Rr]akefile$" . ruby-mode))


;;;;;
;;;;; ruby-electric
;;;;; ---------------------------
;;;;; ruby-electric はかっこや do end などの対応関係を自動で補正してくれるよ。
;;;;;
(require 'ruby-electric)
(add-hook 'ruby-mode-hook '(lambda () (ruby-electric-mode t)))
(setq ruby-electric-expand-delimiters-list nil)


;;;;;
;;;;; ruby-block
;;;;; ---------------------------
;;;;; ruby-block を導入すると, end に対応する行をハイライトしてくれるよ。
;;;;;
(require 'ruby-block)
(ruby-block-mode t)
(setq ruby-block-highlight-toggle t)


;;;;;
;;;;; flycheck
;;;;; ---------------------------
;;;;; 構文チェックするよ。
;;;;;
(add-hook 'ruby-mode-hook 'flycheck-mode)
(setq flycheck-check-syntax-automatically '(idle-change mode-enabled new-line save))


;;;;;
;;;;; robe
;;;;; ---------------------------
;;;;; コード補完するよ。
;;;;;
(autoload 'robe-mode "robe" "Code navigation, documentation lookup and completion for Ruby" t nil)
(autoload 'robe-ac-setup "robe-ac" "robe auto-complete" nil nil)
(add-hook 'ruby-mode-hook 'robe-mode)


;;;;;
;;;;; robe
;;;;; ---------------------------
;;;;; コード補完するよ。
;;;;;
(require 'helm)
(require 'helm-rdefs)
(add-hook 'ruby-mode-hook
          (lambda ()
            (define-key ruby-mode-map (kbd "C-c @") 'helm-rdefs)))
