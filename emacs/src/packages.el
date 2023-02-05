;;; EmacsRule --- For Config
;;; Commentary:
;;; Code:

;;; Load Melpa(Package Manager)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(setq package-list '(use-package))
(setq package-archives '(("melpa" . "https://melpa.org/packages/")
			("elpa" . "https://elpa.gnu.org/packages/")
))
; activate all the packages (in particular autoloads)
(package-initialize)

; fetch the list of packages available 
(unless package-archive-contents
  (package-refresh-contents))

; install the missing packages
(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(use-package multiple-cursors
  :ensure t)
(global-set-key (kbd "C->") 'mc/mark-next-lines)
(global-set-key (kbd "C-.") 'mc/edit-lines)

;;For Syntax checking
(use-package flycheck
  :ensure t)
(global-flycheck-mode)

;;Switch window with alt+s
(global-set-key "\M-s" #'other-window)

;;; Change variable name all at once
(use-package iedit
  :ensure t)

;;Alt+n , ALt+p to switch buffer
(use-package iflipb
  :ensure t)
(global-set-key "\M-n" 'iflipb-next-buffer)
(global-set-key "\M-p" 'iflipb-previous-buffer)

;;For rainbow delimiter
(use-package rainbow-delimiters
  :ensure t)
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)


(provide 'packages)
;;; packages.el ends here
