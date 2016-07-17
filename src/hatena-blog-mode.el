(add-to-list 'load-path "~/.emacs.d/dist/hatena-blog-mode/")
(require 'hatena-blog-mode)

(hatena-blog-add-blog "" ;blog-id
                      "" ;name
                      "" ;hatena-id
                      "") ;api-key
