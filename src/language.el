;;; init-environment.el --- Environment settings -*- lexical-binding: t; -*-

;; 日本語環境の設定（日本語入力や表示に最適化された設定を一括適用）
(set-language-environment 'Japanese)

;; ターミナル（端末）への出力文字コードをUTF-8に設定
(set-terminal-coding-system 'utf-8)

;; キーボード入力の文字コードをUTF-8に設定
(set-keyboard-coding-system 'utf-8)

;; 新規バッファのデフォルト文字コードをUTF-8（改行コードはUnix形式）に設定
(set-buffer-file-coding-system 'utf-8-unix)

;; バッファ全体のデフォルト文字コードをUTF-8に設定
(setq default-buffer-file-coding-system 'utf-8)

;; Emacsが使用する文字コードの優先順位を設定（UTF-8を最優先）
(prefer-coding-system 'utf-8)

;; すべての文字コードシステムのデフォルトをUTF-8に設定
(set-default-coding-systems 'utf-8)

;; ファイル名の文字コードをUTF-8に設定（日本語ファイル名対応）
(setq file-name-coding-system 'utf-8)

;; 外部プロセス（シェルコマンドやHTTP通信など）との入出力文字コードをUTF-8に設定
(setq default-process-coding-system '(utf-8-unix . utf-8-unix))

;; Windows環境の場合、URL通信時の文字コードをUTF-8に明示的に設定
(when (eq system-type 'windows-nt)
  (setq url-mime-charset-string "utf-8"))
