;;set CTRL H for backward
(global-set-key [(control h)] 'delete-backward-char)

;;set CTRL Q for ack search
(global-set-key [(control q)] 'ack-and-a-half)

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

;;fiplr
(global-set-key (kbd "C-c f") 'fiplr-find-file)

;;switch window
(global-set-key (kbd "C-x o") 'switch-window)

;; clear whitespace
(global-set-key (kbd "C-x w") 'whitespace-cleanup)

;;kill all buffers
(global-set-key (kbd "C-x d") 'nuke-all-buffers)

;;expand region
(global-set-key (kbd "C-x q") 'er/mark-inside-quotes)
(global-set-key (kbd "C-x p") 'er/mark-inside-pairs)
(global-set-key (kbd "C-x r") 'er/expand-region)

;; Frames
(global-set-key (kbd "C-c n") 'new-frame)
(global-set-key (kbd "C-c o") 'other-frame)

;; Command History
(global-set-key (kbd "C-c h") 'command-history)

;; kill current buffer
(global-set-key (kbd "C-x k") 'volatile-kill-buffer)
