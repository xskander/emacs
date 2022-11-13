;; Switch windows
(require 'switch-window)

;; no easy keys
;; disable enter/file in vendors
(load "no-easy-keys.el")
(require 'no-easy-keys)

;; expand region
(require 'expand-region)

;; multiple setup
(require 'multiple-cursors)

;; require prettier to help clean js code
(require 'prettier-js)

;; Highlight indentation
(require 'highlight-indentation)

;; yas snippet
(add-to-list 'load-path "~/.emacs.d/snippet")
(require 'yasnippet)

;; RVM for gems
(require 'rvm)

;; show Debug when errors trigger to help debug this setup
;; (setq debug-on-error t)

;; column enforce column
(setq column-enforce-column 120)

;; commentary: This helps customize the whole of emacs"
(setq make-backup-files nil)

;; helm setup
(setq mode-line-modes
      (mapcar (lambda (elem)
                (pcase elem
                  (`(:propertize (,_ minor-mode-alist . ,_) . ,_)
                   "")
                  (t elem)))
              mode-line-modes))

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

;; move file to trash when saving
(setq delete-by-moving-to-trash t)
(setq trash-directory "~/.Trash")

;; magit prevent data loss
(setq magit-auto-revert-mode nil)
(setq magit-last-seen-setup-instructions "1.4.0")
(setq magit-push-current-set-remote-if-missing nil)

;; ------------------------------ rails

;; remove enconding from top of file
(setq enh-ruby-add-encoding-comment-on-save nil)

;; indentation
(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)
(setq-default c-basic-offset 2)
(setq css-indent-offset 2)
(setq js-indent-level 2)
(setq whitespace-style '(trailing space-before-tab indentation empty space-after-tab))

;; set web mode indentations
(setq web-mode-markup-indent-offset 2)

;; format linum
(setq linum-format "%4d ")

;; final newline
(setq require-final-newline t)

;; start web-mode for .erb files
(setq x-alt-keysym 'meta)
