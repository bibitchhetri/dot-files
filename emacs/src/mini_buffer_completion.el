;;; EmacsRule --- For Config
;;; Commentary:
;;; Code:

;;; Minibuffer completion
(use-package vertico
	     :ensure t
	     :init (vertico-mode))
(use-package vertico-posframe
  :if (display-graphic-p)
	     :ensure t)
(cond ((display-graphic-p) (vertico-posframe-mode)))   ;If graphical mode enable vertico-posframe-mode


;;; Describes packages
(use-package marginalia
  :after vertico
  :ensure t
  :custom
  (marginalia-annotators '(marginalia-annotators-heavy marginalia-annotators-light nil))
  :init
  (marginalia-mode))

;;; Icons for mini buuffer completion
(use-package all-the-icons-completion
	     :ensure t)
(all-the-icons-completion-mode)

(provide 'mini_buffer_completion)
;;; mini_buffer_completion.el ends here
