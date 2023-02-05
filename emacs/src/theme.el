;;; EmacsRule --- For Config
;;; Commentary:
;;; Code:

;;; Transparency only supports for the patched emacs ==> https://github.com/TheVaffel/emacs
(set-frame-parameter nil 'alpha-background 70) ; For current frame
(add-to-list 'default-frame-alist '(alpha-background . 75)) ; For all new frames henceforth

;; Increase the font size
(set-face-attribute 'default nil :height 135)

;;Remove Right and left spacing/margin
(setq-default left-fringe-width  2)
(setq-default right-fringe-width  1)

;;; Install Some Common Themes
(use-package doom-themes
  :ensure t)
(use-package dracula-theme
  :ensure t)
(use-package monokai-theme
	     :ensure t)
(use-package zenburn-theme
  :ensure t)
(use-package spacemacs-theme
:defer t
)
;;Load Doom-one theme
(load-theme 'modus-vivendi t)

(provide 'theme)
;;; theme.el ends here


