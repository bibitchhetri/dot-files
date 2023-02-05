;;; EmacsRule --- For Config
;;; Commentary:
;;; This file is modifies the default Emacs settings without adding new packages
;;; Code:

;; Remove the tool-bar
(tool-bar-mode -1)

;; Remove the menubar
(menu-bar-mode -1)

;; Remove the scroll-bar
(scroll-bar-mode -1)

;; Remove the beeping sound
(setq ring-bell-function 'ignore)

;; A global minor mode, provides a way to easily insert matching delimiters parentheses, braces, brackets, etc.
(electric-pair-mode)

;;Enable Bracktes Highlightligting when cursor is near
(show-paren-mode 1)
(setq show-paren-delay 0)


;; Write backups to ~/.emacs.d/backup/
(setq backup-directory-alist '(("." . "~/.emacs.d/backup"))
      backup-by-copying      t  ; Don't de-link hard links
      version-control        t  ; Use version numbers on backups
      delete-old-versions    t  ; Automatically delete excess backups:
      kept-new-versions      10 ; how many of the newest versions to keep
      kept-old-versions      5) ; and how many of the old

;; Newline without breaking current line even when cursor is in middle of line
(defun newline-without-break-of-line ()
  (interactive)
  (let ((oldpos (point)))
    (end-of-line)
    (newline-and-indent)))
(global-set-key (kbd "<C-return>") 'newline-without-break-of-line)


(provide 'settings)
;;; settings.el ends here

