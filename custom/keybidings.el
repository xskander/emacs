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