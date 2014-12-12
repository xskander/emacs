;;prevent backup files
(setq make-backup-files nil)

;;ido mode for buffers
(ido-mode t)

;;line number mode
(global-linum-mode t)

;; themes
(load-theme 'solarized-dark t)

;;enh ruby mode for ruby code verification
(autoload 'enh-ruby-mode "enh-ruby-mode" "Major mode for ruby files" t)
(add-to-list 'auto-mode-alist '("\\.rb$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rake$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("\\.gemspec$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("\\.ru$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile$" . enh-ruby-mode))


;;highlight indentation
(require 'highlight-indentation)
(add-hook 'enh-ruby-mode-hook
    (lambda () (highlight-indentation-current-column-mode)))
(add-hook 'coffee-mode-hook
    (lambda () (highlight-indentation-current-column-mode)))


;;fiplr
(setq fiplr-root-markers '(".git" ".svn"))
(setq fiplr-ignored-globs '((directories (".git" ".svn" "selenium" "doc" "tmp"))
          (files ("*.jpg" "*.png" "*.zip" "*~" ".DS_Store" "tags" "TAGS" "*.ru" ".keep"))))


;;fill column indicator
;;uncomment this
;; (require 'fill-column-indicator)
;; (setq-default fci-rule-column 80)
;; (define-globalized-minor-mode global-fci-mode fci-mode (lambda () (fci-mode 1)))
;; (global-fci-mode 1)

;; (defun auto-fci-mode (&optional unused)
;;   (if (> (window-width) fci-rule-column)
;;       (fci-mode 1)
;;     (fci-mode 0))
;;   )
;; (add-hook 'after-change-major-mode-hook 'auto-fci-mode)
;; (add-hook 'window-configuration-change-hook 'auto-fci-mode)

;; indentation
(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)
(setq-default c-basic-offset 2)
(setq css-indent-offset 2)
(setq js-indent-level 2)

;; yes no set as y/n
(fset 'yes-or-no-p 'y-or-n-p)
(setq confirm-kill-emacs 'yes-or-no-p)

;; always refresh file content if they change on disk
(global-auto-revert-mode 1)

;; RVM
(require 'rvm)
(rvm-use-default)

;; Rspec
(require 'rspec-mode)
(setq rspec-use-rake-when-possible nil)

;;switch windows
(require 'switch-window)

;;no easy keys
(require 'no-easy-keys)
(no-easy-keys 1)

;;default line spacing
(setq-default line-spacing 1)

;;format linum
(setq linum-format "%4d ")

;;projectile rails
(add-hook 'projectile-mode-hook 'projectile-rails-on)
(projectile-global-mode)

(defadvice split-window (after move-point-to-new-window activate)
  "Moves the point to the newly created window after splitting."
  (other-window 1))

;;disable auto searching
(setq ido-auto-merge-delay-time 99999)

(require 'feature-mode)
(add-to-list 'auto-mode-alist '("\.feature$" . feature-mode))


;;ack setup
(setq ack-and-a-half-prompt-for-directory t)

;;final newline
(setq require-final-newline t)

;;haml mode
(add-hook 'haml-mode-hook
          (lambda ()
            (setq indent-tabs-mode nil)
            (define-key haml-mode-map "\C-m" 'newline-and-indent)))

;;nuke all buffers
(defun nuke-all-buffers ()
  (interactive)
  (mapcar 'kill-buffer (buffer-list))
  (delete-other-windows))

;; css mode for scss files
(add-to-list 'auto-mode-alist '("\\.scss\\'" . css-mode))


(setq whitespace-style '(trailing space-before-tab indentation empty space-after-tab))
(custom-set-variables '(coffee-tab-width 2))
;;js mode for coffe script files
(add-to-list 'auto-mode-alist '("\\.js.erb\\'" . js-mode))

;;activate corespunding ruby
(rvm-activate-corresponding-ruby)


;;start web-mode for .erb files
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
 (setq x-alt-keysym 'meta)

;;expand region
(require 'expand-region)

;;unbomd ctrl z
(global-unset-key (kbd "C-z"))
(global-unset-key (kbd "C-x C-z"))

(require 'compile)
;; Find root directory by searching for Gemfile
(defun* get-closest-gemfile-root (&optional (file "Gemfile"))
  (let ((root (expand-file-name "/")))
    (loop 
     for d = default-directory then (expand-file-name ".." d)
     if (file-exists-p (expand-file-name file d))
     return d
     if (equal d root)
     return nil)))


;; yas snippets
(add-to-list 'yas/root-directory "../vendors/yasnippet-snippets-master")
