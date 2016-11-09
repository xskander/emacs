;;set CTRL H for backward
(global-set-key [(control h)] 'delete-backward-char)

;;set CTRL Q for rgrep search
(global-set-key [(control q)] 'rgrep)

;;unset ido buffers
(global-unset-key "\C-x\C-b")

;;multiple lines
(global-set-key (kbd "C-c C-n") 'mc/mark-next-like-this)
(global-set-key (kbd "C-c C-p") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-a") 'mc/mark-all-like-this)

;;unset backspace and enter
(global-set-key (kbd "<return>") 'ignore)
(global-set-key (kbd "<backspace>") 'ignore)

;;magit
(global-set-key (kbd "C-c g") 'magit-status)

;;switch window
(global-set-key (kbd "C-x o") 'switch-window)

;;kill all buffers
(global-set-key (kbd "C-x d") 'nuke-all-buffers)

;;expand region
(global-set-key (kbd "C-x q") 'er/mark-inside-quotes)
(global-set-key (kbd "C-x p") 'er/mark-inside-pairs)
(global-set-key (kbd "C-x r") 'er/expand-region)

;; kill current buffer
(global-set-key (kbd "C-x k") 'volatile-kill-buffer)

;; unbond ctrl z
(global-unset-key (kbd "C-z"))
(global-unset-key (kbd "C-x C-z"))

;; unset lower and uppercase
(global-unset-key (kbd "M-l"))
(global-unset-key (kbd "M-u"))
(global-unset-key (kbd "M-c"))

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
