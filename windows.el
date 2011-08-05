(setenv "PATH" (concat "d:/soft/editor/unixtools/;" (getenv "PATH")))
(setq exec-path (cons "d:/soft/editor/unixtools" exec-path))
(setq exec-path (cons "d:/Ruby192/bin" exec-path))

(add-hook 'shell-mode-hook 'n-shell-mode-hook)
(defun n-shell-mode-hook ()
  "12Jan2002 - sailor, shell mode customizations."
  (local-set-key '[up] 'comint-previous-input)
  (local-set-key '[down] 'comint-next-input)
  (local-set-key '[(shift tab)] 'comint-next-matching-input-from-input)
  )
  
  
(defun jbr-init ()
  "Called from term-setup-hook after the default
terminal setup is
done or directly from startup if term-setup-hook not
used.  The value
0xF030 is the command for maximizing a window."
  (interactive)
  (w32-send-sys-command #xf030)
  (ecb-redraw-layout)
  (calendar)
)
(setq term-setup-hook 'jbr-init)
(setq window-setup-hook 'jbr-init)