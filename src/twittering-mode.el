;;;;;
;;;;; twittering-mode
;;;;;
;;;;; <参考URL>
;;;;;   http://emacswiki.org/emacs/TwitteringMode-ja
;;;;;   https://gihyo.jp/admin/serial/01/ubuntu-recipe/0187
;;;;;   http://fukuyama.co/twittering-mode
;;;;;
;; twittering-mode読み込み
(require 'twittering-mode)

;; 起動時パスワード認証 *要 gpgコマンド
(setq twittering-use-master-password t)

;; パスワード暗号ファイル保存先変更 (デフォはホームディレクトリ)
(setq twittering-private-info-file "~/.emacs.d/twittering-mode.gpg")

;; 表示する書式 区切り線いれたら見やすい
(setq twittering-status-format "%i %p%s (%S),  %@:\n%FILL[  ]{%T // from %f%L%r%R}\n ------------------------------------------- \n")

;; アイコンを表示する
(setq twittering-icon-mode t)

;; アイコンサイズを変更する *48以外を希望する場合 要 imagemagickコマンド
(setq twittering-convert-fix-size 32)

;; 更新の頻度（秒）
(setq twittering-timer-interval 40)

;; ;; ツイート取得数
(setq twittering-number-of-tweets-on-retrieval 30)

;; ;; o で次のURLをブラウザでオープン
(add-hook 'twittering-mode-hook
          (lambda ()
            (local-set-key (kbd "o")
               (lambda ()
                 (interactive)
                 (twittering-goto-next-uri)
                 (execute-kbd-macro (kbd "C-m"))
                 ))))
