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

;; 認証済みaccess tokenをGnuPGで暗号化して保存する
(setq twittering-use-master-password t)
(setq twittering-use-ssl t)

;; パスワード暗号ファイル保存先変更 (デフォはホームディレクトリ)
(setq twittering-private-info-file "~/.emacs.d/twittering-mode.gpg")



;;;;;
;;;;; アイコン
;;;;;
;; アイコンを表示する
(setq twittering-icon-mode t)
;; アイコンサイズを変更する *48以外を希望する場合 要 imagemagickコマンド
(setq twittering-convert-fix-size 32)
;; アイコン取得時の情報表示をデフォルトで抑制するか
(setq twittering-url-show-status t)
                                        ;全てのアイコンを保存するか
(setq twittering-icon-storage-limit t)

;;;;;
;;;;; 更新
;;;;;
;; 更新の頻度（秒）
(setq twittering-timer-interval 40)

;;;;;
;;;;; 最初に開くタイムラインを設定する
;;;;;
(setq twittering-initial-timeline-spec-string
      '(":replies"
        ;; ":favorites"
        ":retweets_of_me"
        ":home"))

;;;;;
;;;;; 表示
;;;;;
;;; 短縮URLにbit.lyを使う
;; (setq twittering-tinyurl-service 'bit.ly)
;; (setq twittering-bitly-login "hogehoge")
;; (setq twittering-bitly-api-key "hoge_key")
;; ツイート取得数
(setq twittering-number-of-tweets-on-retrieval 30)
;; フォーマット
(setq twittering-status-format "%i %p%s (%S),  %@:\n%FILL[  ]{%T // from %f%L%r%R}\n ------------------------------------------- \n")

;; o で次のURLをブラウザでオープン
(add-hook 'twittering-mode-hook
          (lambda ()
            (local-set-key (kbd "o")
                           (lambda ()
                             (interactive)
                             (twittering-goto-next-uri)
                             (execute-kbd-macro (kbd "C-m"))
                             ))))
