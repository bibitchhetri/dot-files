;;; EmacsRule --- For Config
;;; Commentary:
;;; This file is modifies the default Emacs settings without adding new packages
;;; Code:

(use-package page-break-lines :ensure t)
(use-package all-the-icons :ensure t)

(use-package dashboard
  :ensure t
  :diminish (page-break-lines-mode all-the-icons)
  :config
  (dashboard-setup-startup-hook ))

;;; Just for navigation bar below banner
(setq dashboard-set-navigator t)

;;; Just enable some icons
(setq dashboard-set-heading-icons t)
(setq dashboard-set-file-icons t)

;;; Just banner title
(setq dashboard-banner-logo-title "Welcome to Emacs")

;;; To show horizontal lines
(setq dashboard-page-separator "\n\f\n")

;;; Change banner type (1-9)
;;(setq dashboard-startup-banner 5)
(setq dashboard-startup-banner "~/.emacs.d/elpa/dashboard-20221206.1228/banners/rsz_om.png")

;; Format: "(icon title help action face prefix suffix)"
(setq dashboard-navigator-buttons
      `(;; line1
        ((,(all-the-icons-faicon "github" :height 1.1 :v-adjust 0.0) "Homepage" "Browse homepage" (lambda (&rest _) (browse-url "https://www.github.com/bibitchhetri")))

	 (,(all-the-icons-faicon "refresh" :height 0.8 :v-adjust 0.0) "Reload" "Reload-Init-File" (lambda (&rest _) (load-file "~/.emacs.d/init.el")))
        (,(all-the-icons-material "help" :height 0.8 :v-adjust 0.0) "Help" "Show Help" #'help))
         ;; line 2
        ((,(all-the-icons-faicon "linkedin" :height 1.1 :v-adjust 0.0)
          "Linkedin"
          ""
          (lambda (&rest _) (browse-url "https://np.linkedin.com/in/bibit-kunwar-6814b821a/")))
	 )))


(provide 'dashboard)
;;; dashboard.el ends here
