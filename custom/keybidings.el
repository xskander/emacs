;; package --- keybindings.el
;;; Commentary:
;;; I've used this file to setup different keybindings

;;; Code:
;; unset ido buffers
(global-unset-key "\C-x\C-b")

;; unset fill column
(global-unset-key (kbd "C-x f"))

;; unbond ctrl z
(global-unset-key (kbd "C-z"))
(global-unset-key (kbd "C-x C-z"))

;; unset lower and uppercase
(global-unset-key (kbd "M-l"))
(global-unset-key (kbd "M-u"))
(global-unset-key (kbd "M-c"))

;; set CTRL H for backward
(global-set-key [(control h)] 'delete-backward-char)

;; set CTRL Q for rgrep search
(global-set-key [(control q)] 'rgrep)

;; multiple lines
(global-set-key (kbd "C-c C-x n") 'mc/mark-next-like-this)
(global-set-key (kbd "C-c C-x p") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-x a") 'mc/mark-all-like-this)

;; multiple lines
(global-set-key (kbd "C-c C-k a") 'mc/mark-all-like-this)

;; magit
(global-set-key (kbd "C-c g") 'magit-status)

;; magit extract number from branch
(global-set-key (kbd "C-c m") 'git-extract-number-from-branch-name)

;; magit not yet done - outputs the [not-yet-done] text in git
(global-set-key (kbd "C-c n") 'git-not-yet-done)

;; switch window
(global-set-key (kbd "C-x o") 'switch-window)

;; kill all buffers
(global-set-key (kbd "C-x d") 'nuke-all-buffers)

;; kill current buffer
(global-set-key (kbd "C-x k") 'volatile-kill-buffer)

;; expand region
(global-set-key (kbd "C-x q") 'er/mark-inside-quotes)
(global-set-key (kbd "C-x p") 'er/mark-inside-pairs)
(global-set-key (kbd "C-x r") 'er/expand-region)

(global-set-key (kbd "C-c h") 'helm-ag-project-root)

;; Split window method
(global-set-key "\C-x2" (lambda () (interactive)(split-window-vertically) (other-window 1)))
(global-set-key "\C-x3" (lambda () (interactive)(split-window-horizontally) (other-window 1)))

;; copy line in one command
(global-set-key "\C-c\M-w" 'copy-line)

;; cut line in one command
(global-set-key "\C-c\C-w" 'quick-cut-line)

;; Mark all the things
(global-set-key (kbd "C-c C-k a") 'mc/mark-all-like-this)

;; projectile keybinding
(define-key projectile-rails-mode-map (kbd "C-c r") 'projectile-rails-command-map)

;; avy keybinding. use to search by letter and jump to it.
(global-set-key (kbd "C-c a") 'avy-goto-char)
(global-set-key (kbd "C-c l") 'avy-goto-line)
;;; keybindings.el ends here

;; Move the scroll in Emacs without moving the position cursor.
(global-set-key "\M-n" 'scroll-page-without-moving-point-down)
(global-set-key "\M-p" 'scroll-page-without-moving-point-up)

;; Mwim navigation
(global-set-key (kbd "C-a") 'mwim-beginning)
(global-set-key (kbd "C-e") 'mwim-end)

;;; keybidings.el ends here
