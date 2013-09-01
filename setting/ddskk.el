;;;;; 
;;;;; SKK
;;;;; 
;; debian: /usr/share/skk:
;; /usr/share/skk/SKK-JISYO.L
(require 'skk-autoloads)
(setq skk-user-directory "~/Documents/dic")
(setq skk-large-jisyo "~/Documents/dic/SKK-JISYO.L")
(setq skk-preload t)

(global-set-key "\C-x\C-j" 'skk-mode)
(global-set-key "\C-xj" 'skk-auto-fill-mode)
(global-set-key "\C-xt" 'skk-tutorial)

(autoload 'skk-mode "skk" nil t)
(autoload 'skk-tutorial "skk-tut" nil t)
(autoload 'skk-check-jisyo "skk-tools" nil t)
(autoload 'skk-merge "skk-tools" nil t)
(autoload 'skk-diff "skk-tools" nil t)
;;;; �� "�u"����͂�����"�v"�������ő}��
(setq skk-auto-insert-paren t)
;;;; �� ��Ǔ_�� , . ���g��
(setq skk-kuten-touten-alist
      '(
	(jp . ("�B" . "�A" ))
	(en . ("�D" . "�C"))
	))
;;;; �� jp �ɂ���Ɓu�B�A�v���g���܂�
(setq-default skk-kutouten-type 'jp)
;;;; �� @�ő}��������t�\���𔼊p��
(setq skk-number-style nil)
;;;; �� �ϊ��̂Ƃ�Enter�������Ă��m��݂̂ŉ��s���Ȃ��B
(setq skk-egg-like-newline t)
;;; �C���N�������^���T�[�`�œ��{��
(add-hook 'isearch-mode-hook
          (function (lambda ()
                      (and (boundp 'skk-mode) skk-mode
                           (skk-isearch-mode-setup)))))
(add-hook 'isearch-mode-end-hook
          (function (lambda ()
                      (and (boundp 'skk-mode) skk-mode
                           (skk-isearch-mode-cleanup)
                           (skk-set-cursor-color-properly)))))

