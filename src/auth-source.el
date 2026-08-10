;;; auth-source.el --- auth-source settings -*- lexical-binding: t; -*-

;; GPG のインストール
;;   winget install GnuPG.Gpg4win

;; auth-sourceの設定
(require 'auth-source)

;; 認証情報ファイルの場所を指定（デフォルトでも動作しますが、明示的に設定する場合）
(setq auth-sources
      '("~/.authinfo.gpg"  ;; GPGで暗号化されたファイル（推奨）
        "~/.authinfo"      ;; 平文ファイル（非推奨）
        "~/.netrc"))       ;; 従来のnetrc形式

;; emacs 31 を先行して利用しているからか ~/.authinfo.gpg が開けず。
;; しかたなく ~/.authinfo を利用する。
(setq auth-sources '("~/.authinfo"))


(defun gemini-api-key ()
  "auth-sourceからGemini APIキーを取得"
  (let ((auth (auth-source-search
               :Host "generativelanguage.googleapis.com"
               :user "apikey"
               :require '(:secret))))
    (if auth
        (funcall (plist-get (car auth) :secret))
      (error "Gemini APIキーが見つかりません"))))

;; (gemini-api-key)
