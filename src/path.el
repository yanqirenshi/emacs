;;;;;
;;;;; setting path
;;;;;


;;;
;;; terminal の PATH を引き継ぐ。
;;;   参考: http://qiita.com/catatsuy/items/3dda714f4c60c435bb25
;;;
(exec-path-from-shell-initialize)

(when (eq window-system 'ns) ;; Mac のみ。
  (setenv "PS1" "\\w$ ")
  (setenv "LANG" "ja_JP.UTF-8"))
