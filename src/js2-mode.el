;;;;;
;;;;; js2-mode
;;;;;
;;(autoload 'js2-mode "js2" nil t)
(add-to-list 'load-path "~/prj/js2-mode/js2-mode.el")
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
