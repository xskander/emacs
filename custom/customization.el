;;; package --- customization.el
";;; Commentary: This helps customize the whole of emacs"
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

;; Kill whitespace on save
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; magit prevent data loss
(setq magit-auto-revert-mode nil)
(setq magit-last-seen-setup-instructions "1.4.0")
(setq magit-push-current-set-remote-if-missing nil)

;; load theme zenburn
(load-theme 'zenburn t)

;; remove menu bar
(menu-bar-mode -1)

;; set syntax colors in css files
(add-hook 'css-mode-hook 'xah-syntax-color-hex)
(add-hook 'html-mode-hook 'xah-syntax-color-hex)

;; Grep search ignore folder
(eval-after-load 'grep
  '(progn
     (add-to-list 'grep-find-ignored-directories "public")
     (add-to-list 'grep-find-ignored-directories "coverage")
     (add-to-list 'grep-find-ignored-directories "tmp")
     (add-to-list 'grep-find-ignored-directories "spec/fixtures")
     (add-to-list 'grep-find-ignored-directories "log")))
(add-hook 'grep-mode-hook (lambda () (toggle-truncate-lines 1)))

;; yas snippet
(add-to-list 'load-path
             "~/.emacs.d/snippet")
(require 'yasnippet)
(yas-global-mode 1)
(yas-reload-all)
(add-hook 'prog-mode-hook #'yas-minor-mode)

;; helm setup
;;(custom-set-variables
;; '(helm-ag-ignore-buffer-patterns '("\\.min.js\\'" "\\.log\\'" "\\.min.css\\'")))

(setq mode-line-modes
      (mapcar (lambda (elem)
                (pcase elem
                  (`(:propertize (,_ minor-mode-alist . ,_) . ,_)
                   "")
                  (t elem)))
              mode-line-modes))


