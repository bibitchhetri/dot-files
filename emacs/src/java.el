;;; EmacsRule --- For Config
;;; Commentary:
;;; Code:
;;; C++ Foramtter Clang Foramtter

(use-package  clang-format
  :ensure t)
(setq clang-format-style "file")
(defun clang-format-save-hook-for-this-buffer ()
  "Create a buffer local save hook."
  (add-hook 'before-save-hook
            (lambda ()
              (when (locate-dominating-file "." ".clang-format")
                (clang-format-buffer))
              ;; Continue to save.
              nil)
            nil
            ;; Buffer local hook.
            t))

(add-hook 'java-mode-hook (lambda () (clang-format-save-hook-for-this-buffer)))

(provide 'java)
;;; java.el ends here
