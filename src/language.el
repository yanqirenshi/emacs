;;; language.el --- Language and coding system settings -*- lexical-binding: t; -*-


;; 日本語環境の設定（日本語入力や表示に最適化された設定を一括適用）
(set-language-environment 'Japanese)

;; バッファ全体のデフォルト文字コードをUTF-8に設定
(setq default-buffer-file-coding-system 'utf-8-unix)

;; 外部プロセス（シェルコマンドやHTTP通信など）との入出力文字コードをUTF-8に設定
(setq default-process-coding-system '(utf-8-unix . utf-8-unix))

;; Windows環境の場合、URL通信時の文字コードをUTF-8に明示的に設定
(when (eq system-type 'windows-nt)
  (setq url-mime-charset-string "utf-8-unix"))

;; ;; * ターミナル（端末）への出力文字コードをUTF-8に設定
;; (set-terminal-coding-system 'utf-8-unix)

;; ;; * キーボード入力の文字コードをUTF-8に設定
;; (set-keyboard-coding-system 'utf-8-unix)

;; ;; * 新規バッファのデフォルト文字コードをUTF-8（改行コードはUnix形式）に設定
;; (set-buffer-file-coding-system 'utf-8-unix)

;; ;; * Emacsが使用する文字コードの優先順位を設定（UTF-8を最優先）
;; (prefer-coding-system 'utf-8-unix)

;; ;; * すべての文字コードシステムのデフォルトをUTF-8に設定
;; (set-default-coding-systems 'utf-8-unix)

;; ;; * ファイル名の文字コードをUTF-8に設定（日本語ファイル名対応）
;; (setq file-name-coding-system 'utf-8-unix)

;; ;; * マウスやキーボードによる選択範囲（リージョン）のエンコーディング
;; ;; X11 の PRIMARY selection などで使用
;; (set-selection-coding-system 'utf-8-unix)

;; ;; * クリップボード（コピー&ペースト）のエンコーディング
;; ;; Windows/WSL2 間のクリップボード共有で重要
;; (set-clipboard-coding-system 'utf-8-unix)

;; ;; * 新規バッファや未保存バッファのデフォルトエンコーディング
;; ;; 新しいファイルを作成する時の文字コードと改行コード
;; (set-buffer-file-coding-system 'utf-8-unix)

;; ;; * ファイル名のエンコーディング
;; ;; 日本語ファイル名を正しく扱うために必要
;; (set-file-name-coding-system 'utf-8-unix)

(cond
 ;; Windows
 ((eq system-type 'windows-nt)
  (prefer-coding-system 'utf-8-dos)
  (set-default-coding-systems 'utf-8-dos)
  (set-terminal-coding-system 'utf-8-dos)
  (set-keyboard-coding-system 'utf-8-dos)
  (set-selection-coding-system 'utf-16-le)
  (set-clipboard-coding-system 'utf-16-le)
  (set-buffer-file-coding-system 'utf-8-dos)
  (set-file-name-coding-system 'cp932)
  (message "Encoding: Windows"))

 ;; macOS
 ((eq system-type 'darwin)
  (prefer-coding-system 'utf-8-unix)
  (set-default-coding-systems 'utf-8-unix)
  (set-terminal-coding-system 'utf-8-unix)
  (set-keyboard-coding-system 'utf-8-unix)
  (set-selection-coding-system 'utf-8-unix)
  (set-clipboard-coding-system 'utf-8-unix)
  (set-buffer-file-coding-system 'utf-8-unix)
  (set-file-name-coding-system 'utf-8-unix)
  (message "Encoding: macOS"))

 ;; Linux (WSL2)
 ((eq system-type 'gnu/linux)
  (prefer-coding-system 'utf-8-unix)
  (set-default-coding-systems 'utf-8-unix)
  (set-terminal-coding-system 'utf-8-unix)
  (set-keyboard-coding-system 'utf-8-unix)
  (set-selection-coding-system 'utf-8-unix)
  (set-clipboard-coding-system 'utf-8-unix)
  (set-buffer-file-coding-system 'utf-8-unix)
  (set-file-name-coding-system 'utf-8-unix)
  (message "Encoding: Linux")))
