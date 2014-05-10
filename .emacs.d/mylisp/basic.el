;;disp number of lines and chars in region at mode line
;;http://d.hatena.ne.jp/sonota88/20110224/1298557375
(defun count-lines-and-chars ()
  (if mark-active
      (format "%d lines,%d chars "
	      (count-lines (region-beginning) (region-end))
	      (- (region-end) (region-beginning)))
    ""))

(add-to-list 'default-mode-line-format
	     '(:eval (count-lines-and-chars)))


;;key-bind
(global-set-key [f7] 'other-window)
(define-key global-map (kbd "C-c l") 'toggle-truncate-lines)


;;encode
(prefer-coding-system 'utf-8)


;;filename for Mac
(when (eq system-type 'darwin)
      (require 'ucs-normalize)
      (set-file-name-coding-system 'utf-8-hfs)
      (setq locale-coding-system 'utf-8-hfs))

;;filename for Windows
(when (eq window-system 'w32)
      (set-file-name-coding-system 'cp932)
      (setq locale-coding-system 'cp932))



;;about frame

;;disp column num
(column-number-mode t)

;;disp file size
(size-indication-mode t)

;;disp time(can change format)
;;(setq display-time-day-and-date t)
;;(setq display-time-24hr-format t)
(display-time-mode t)

;;disp battery
;;(display-battery-mode 1)

;;disp full path
(setq frame-title-format "%f")

;;disp line num
(global-linum-mode t)

;;tab width
(setq-default tab-width 4)

;;color
;;(when (require 'color-theme nil t)
;;  (color-theme-initialize)
;;  (color-theme-hober))


;;font
(add-to-list 'default-frame-alist '(font . "ricty-13.5"))
;;(set-face-attribute 'default nil
;;					:family "Ricty"
;;					:height 160)


;;auto-complete
(when (require 'auto-complete-config)
  (add-to-list 'ac-dictionary-directories "~/.emacs.d/elisp/ac-dict")
  (define-key ac-mode-map (kbd "M-a") 'auto-complete)
  (ac-config-default))
