(print "start package")
;; 必要であればプロキシの設定
;;(setq url-proxy-services '(("http" . "999.999.999.999:8080")))

;;;
;;; package mode
;;;
(require 'package)

;;;
;;; リポジトリ情報 の追加
;;;
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)


;;;
;;; 初期化
;;;
(package-initialize)


;;;
;;; パッケージ情報の更新
;;;
(package-refresh-contents)
