;; bundle-open
(global-set-key (kbd "C-x a") 'bundle-open)

;; coffee compile buffer
(global-set-key (kbd "C-x c") 'coffee-compile-buffer)

;; copy line in one command
(global-set-key "\C-c\M-w" 'copy-line)

;; cut line in one command
(global-set-key "\C-c\C-w" 'quick-cut-line)

;; enable global flycheck mode
(global-set-key "\C-c\C-f" 'global-flycheck-mode)

;; dash
(global-set-key "\C-cd" 'dash-at-point)
(global-set-key "\C-ce" 'dash-at-point-with-docset)
