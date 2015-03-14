;;;;;
;;;;; open-junk-file.el
;;;;; <参考URL>
;;;;;   http://www.emacswiki.org/emacs/open-junk-file.el
;;;;;   http://d.hatena.ne.jp/rubikitch/20080923/1222104034
;;;;;
(require 'open-junk-file)
(setq open-junk-file-format "~/junk/%Y-%m-%d-%H%M%S.")
(global-set-key "\C-xj" 'open-junk-file)
