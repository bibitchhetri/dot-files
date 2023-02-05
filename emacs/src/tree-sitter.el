;;; EmacsRule --- For Config
;;; Commentary:
;;; Tree sitter provides more efficient and better code parsing,syntax hightlighting
;;; Code:
(use-package tree-sitter
  :ensure t)
(use-package tree-sitter-langs
  :ensure t)
(global-tree-sitter-mode)
(add-hook 'tree-sitter-after-on-hook #'tree-sitter-hl-mode)

(provide 'tree-sitter)
;;; tree-sitter.el ends here
