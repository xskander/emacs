;; bundle-open
(global-set-key (kbd "C-x a") 'bundle-open)

;; coffee compile buffer
(global-set-key (kbd "C-x c") 'coffee-compile-buffer)

;; copy line in one command
(global-set-key "\C-c\M-w" 'copy-line)

;; cut line in one command
(global-set-key "\C-c\C-w" 'quick-cut-line)

;; Mark all the things
(global-set-key (kbd "C-c C-k a") 'mc/mark-all-like-this)


;; flycheck-mode - i keep having to close it
(global-set-key (kbd "C-c ! m") 'flycheck-mode)

;;;(provide 'rails-keybidings)
;;; rails-keybidings.el ends here
