;;change html-mode nxml-mode
(add-to-list 'auto-mode-alist '("\\.[sx]?html?\\(\\.[a-zA-Z_]+\\)?\\'" . nxml-mode))

;;HTML5
(eval-after-load "rng-loc"
  '(add-to-list 'rng-schema-locating-files
				"~/.emacs.d/public_repos/html5-el/schemas.xml"))
(require 'whattf-dt)

;;auto complete tag
(setq nxml-slash-auto-complete-flag-t)
(setq nxml-bind-meta-tab-to-complete-flag t)
(add-to-list 'ac-modes 'nxml-mode)

(setq nxml-child-indent 2)
(setq nxml-attribute-indent 4)
