;;; init-environment.el --- Environment settings -*- lexical-binding: t; -*-

(cond
 ((member "みかちゃん" (font-family-list))
  (custom-set-faces
   '(default ((t (:family #("みかちゃん" 0 5 (charset cp932-2-byte))
                          :foundry "outline"
                          :slant normal
                          :weight regular
                          :height 163
                          :width normal))))))
 ((member "ＭＳ ゴシック" (font-family-list))
  (custom-set-faces
   '(default ((t (:family #("ＭＳ ゴシック" 0 7 (charset cp932-2-byte))
                          :foundry "outline"
                          :slant normal
                          :weight regular
                          :height 163
                          :width normal))))))
 (t (print "好みのフォントは存在しませんでした。")))
