;; recent file menu
(require 'recentf)
(recentf-mode 1)

(defun toggle-fullscreen (&optional f)
   (interactive)
   (let ((current-value (frame-parameter nil 'fullscreen)))
        (set-frame-parameter nil 'fullscreen
                             (if (equal 'fullboth current-value)
                                 (if (boundp 'old-fullscreen) old-fullscreen nil)
                                 (progn (setq old-fullscreen current-value)
                                        'fullboth)))))
 (global-set-key (kbd "C-c f") 'toggle-fullscreen)  