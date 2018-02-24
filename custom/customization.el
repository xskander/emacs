;; prevent backup files
(setq make-backup-files nil)

;; ido mode for buffers
(ido-mode t)

;; line number mode
(global-linum-mode t)

;; yes no set as y/n
(fset 'yes-or-no-p 'y-or-n-p)
(setq confirm-kill-emacs 'yes-or-no-p)

;; always refresh file content if they change on disk
(global-auto-revert-mode 1)

;; default line spacing
(setq-default line-spacing 1)

;; disable auto searching
(setq ido-auto-merge-delay-time 99999)

;; yas snippet
(require 'yasnippet)
(setq yas/root-directory "~/.emacs.d/snippets")
(yas/load-directory yas/root-directory)
(yas/global-mode t)

;; Kill whitespace on save
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; magit prevent data loss
(setq magit-auto-revert-mode nil)
(setq magit-last-seen-setup-instructions "1.4.0")

;; load theme zenburn
(load-theme 'zenburn t)

;; remove menu bar
(menu-bar-mode -1)

;; set syntax colors in css files
(add-hook 'css-mode-hook 'xah-syntax-color-hex)
(add-hook 'html-mode-hook 'xah-syntax-color-hex)

;; prevent total anihilation
(setq delete-by-moving-to-trash t)

;; Grep search ignore folder
(eval-after-load 'grep
  '(progn
     (add-to-list 'grep-find-ignored-directories "public")
     (add-to-list 'grep-find-ignored-directories "coverage")
     (add-to-list 'grep-find-ignored-directories "tmp")
     (add-to-list 'grep-find-ignored-directories "spec/fixtures")
     (add-to-list 'grep-find-ignored-directories "log")))
(add-hook 'grep-mode-hook (lambda () (toggle-truncate-lines 1)))

;; projectile rails
(add-hook 'projectile-mode-hook 'projectile-rails-on)
(projectile-global-mode)
