;;; EmacsRule --- For Config
;;; Commentary:
;;; Code:

;;; Load Melpa(Package Manager)

(use-package all-the-icons-dired
  :ensure t)
(add-hook 'dired-mode-hook 'all-the-icons-dired-mode)

(require 'dired)
(add-hook 'dired-mode-hook (lambda () (dired-hide-details-mode 1)))
(add-hook 'dired-mode-hook (lambda () (setq cursor-type nil)))
(add-hook 'dired-mode-hook (lambda () (hl-line-mode 1)))

(provide 'dired)
;;; dired.el ends here
