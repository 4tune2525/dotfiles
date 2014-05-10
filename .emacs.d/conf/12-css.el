(autoload 'css-mode "css-mode")
(setq auto-mode-alist
	  (cons '("\\.css\\'" . css-mode) auto-mode-alist))

(defun css-mode-hook ()
  "css-mode hooks"
  (setq cssm-indent-function #'cssm-c-style-indenter)
  (setq cssm-indent-level 2)
  (setq-default indent-tabs-mode nil)
  (setq cssm-newline-before-closing-bracket t))

(add-hook 'css-mode-hook 'css-mode-hooks)
