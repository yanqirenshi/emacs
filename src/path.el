;;;;;
;;;;; setting path
;;;;;
;;;;; terminal の PATH を引き継ぐ。
;;;;;   参考: http://qiita.com/catatsuy/items/3dda714f4c60c435bb25
;;;;;

;; windwos は実行しない
(unless (eq window-system 'w32)
  (exec-path-from-shell-initialize))

;; Mac のみ。
(when (eq window-system 'ns)
  (setenv "PS1" "\\w$ ")
  (setenv "LANG" "ja_JP.UTF-8"))
