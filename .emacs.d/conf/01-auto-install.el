
;;auto-install setting
(when (require 'auto-install nil t)
  ;;set install directory (default is ~/.emacs.d/auto-install/)
  (setq auto-install-directory "~/.emacs.d/elisp/")
  (auto-install-update-emacswiki-package-name t)
  ;;if you need to proxy setting
  ;;(setq url-proxy-services '(("http" . "localhost:8339")))
  (auto-install-compatibility-setup))

;;auto install list
;;(install-elisp "http://www.emacswiki.org/emacs/download/redo+.el")

;;auto instal settings
(when (require 'redo+ nil t)
  (global-set-key [f8] 'redo))

;;color-moccur
(when (require 'color-moccur nil t)
  (setq moccur-split-word t)
  (add-to-list 'dmoccur-exclusion-mask "\\.DS_Store")
  (add-to-list 'dmoccur-exclusion-mask "^#.+#$")
  (when (and (executable-find "cmigemo")
			 (require 'migemo nil t))
	(setq moccur-use-migemo t)))

;;moccur-edit settings
(require 'moccur-edit nil t)

;;wgrep
(require 'wgrep nil t)

;;undohist
(when (require 'undohist nil t)
  (undohist-initialize))

;;undo-tree
(when (require 'undo-tree nil t)
  (global-undo-tree-mode))

;;point-undo settings
(when (require 'point-undo nil t)
  (global-set-key (kbd "<f5>") 'point-undo)
  (global-set-key (kbd "<f6>") 'point-redo)
  ;;recommendation
  ;;(define-key global-map (kbd "M-[") 'point-undo)
  ;;(define-key global-map (kbd "M-]") 'point-redo)
)

;;tabbar
;; (when (require 'tabbar nil t)
;;     (tabbar-mode)
;; 	(add-hook 'term-setup-hook '(lambda ()
;; 								  (define-key function-key-map "\e[17~" [f6] )
;; 								  (global-set-key (kbd "\e[17~") [f6])
;; 								  ))
;; 	(define-key function-key-map "17~" [f6])
;; 	(global-set-key (kbd "M-]") 'tabbar-forward)
;; 	(global-set-key (kbd "M-[") 'tabbar-backward))


;; anything

;; (auto-install-batch "anything")
(when (require 'anything nil t)

  (global-set-key (kbd "<f9>") 'anything)

  (setq
   anything-idle-delay 0.1
   anything-input-idle-delay 0.1
   anything-candidate-number-limit 100
   anything-quick-update t
   anything-enables-shortcuts 'alphabet)

  (when (require 'anything-config nil t)
	(setq anything-su-or-sudo "sudo"))

  (require 'anything-match-plugin nil t)

  (when (and (executable-find "cmigemo")
			 (require 'migemo nit t))
	(require 'anything-migemo nil t))

  (when (require 'anything-complete nil t)
	(anything-lisp-complete-symbol-set-timer 150))

  (require 'anything-show-completion nil t)

  (when (require 'auto-install nil t)
	(require 'anything-auto-install nil t))

  (when (require 'descbinds-anything nil t)
	(descbinds-anything-install))


  ;;(install-elisp "http://svn.coderepos.org/share/lang/elisp/anything-c-moccur/trunk/anything-c-mocuur.el")
  ;;you need color-moccur.el.
  (when (require 'anything-c-moccur nil t)
	(setq
	 anything-c-moccurur-idle-delay 0.1
	 lanything-c-moccur-higligt-info-line-flag t
	 anything-c-moccur-enable-auto-look-flag t
	 anything-c-moccur-enable-initial-pattern t))

  (defun at0 ()
	(interactive)
	(anything-other-buffer '(anything-c-source-buffers
							 anything-c-source-emacs-commands
							 anything-c-source-recentf)
						   "*at0*"))
  
)



