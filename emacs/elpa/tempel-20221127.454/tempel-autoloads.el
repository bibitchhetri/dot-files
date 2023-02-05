;;; tempel-autoloads.el --- automatically extracted autoloads  -*- lexical-binding: t -*-
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "tempel" "tempel.el" (0 0 0 0))
;;; Generated autoloads from tempel.el

(autoload 'tempel-expand "tempel" "\
Expand exactly matching template name at point.
If INTERACTIVE is nil the function acts like a capf.

\(fn &optional INTERACTIVE)" t nil)

(autoload 'tempel-complete "tempel" "\
Complete template name at point and expand.
If INTERACTIVE is nil the function acts like a capf.

\(fn &optional INTERACTIVE)" t nil)

(autoload 'tempel-insert "tempel" "\
Insert TEMPLATE-OR-NAME.
If called interactively, select a template with `completing-read'.

\(fn TEMPLATE-OR-NAME)" t nil)

(autoload 'tempel-key "tempel" "\
Bind KEY to TEMPLATE-OR-NAME in MAP.

\(fn KEY TEMPLATE-OR-NAME &optional MAP)" nil t)

(autoload 'tempel-abbrev-mode "tempel" "\
Install Tempel templates as abbrevs.

This is a minor mode.  If called interactively, toggle the
`Tempel-Abbrev mode' mode.  If the prefix argument is positive, enable
the mode, and if it is zero or negative, disable the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable the
mode if ARG is nil, omitted, or is a positive number.  Disable the
mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `tempel-abbrev-mode'.

The mode's hook is called both when the mode is enabled and when it is
disabled.

\(fn &optional ARG)" t nil)

(put 'global-tempel-abbrev-mode 'globalized-minor-mode t)

(defvar global-tempel-abbrev-mode nil "\
Non-nil if Global Tempel-Abbrev mode is enabled.
See the `global-tempel-abbrev-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-tempel-abbrev-mode'.")

(custom-autoload 'global-tempel-abbrev-mode "tempel" nil)

(autoload 'global-tempel-abbrev-mode "tempel" "\
Toggle Tempel-Abbrev mode in all buffers.
With prefix ARG, enable Global Tempel-Abbrev mode if ARG is positive; otherwise,
disable it.

If called from Lisp, toggle the mode if ARG is `toggle'.
Enable the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

Tempel-Abbrev mode is enabled in all buffers where `tempel--abbrev-on' would do
it.

See `tempel-abbrev-mode' for more information on Tempel-Abbrev mode.

\(fn &optional ARG)" t nil)

(register-definition-prefixes "tempel" '("tempel-"))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; tempel-autoloads.el ends here
