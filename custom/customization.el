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

;; indentation
(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)
(setq-default c-basic-offset 2)
(setq css-indent-offset 2)
(setq js-indent-level 2)
(setq whitespace-style '(trailing space-before-tab indentation empty space-after-tab))
(custom-set-variables '(coffee-tab-width 2))

;; yes no set as y/n
(fset 'yes-or-no-p 'y-or-n-p)
(setq confirm-kill-emacs 'yes-or-no-p)

;; always refresh file content if they change on disk
(global-auto-revert-mode 1)

;;default line spacing
(setq-default line-spacing 1)

;;format linum
(setq linum-format "%4d ")

;;projectile rails
(add-hook 'projectile-mode-hook 'projectile-rails-on)
(projectile-global-mode)

;; activate corespunding ruby
(rvm-activate-corresponding-ruby)

;;disable auto searching
(setq ido-auto-merge-delay-time 99999)

;;ack setup
(setq ack-and-a-half-prompt-for-directory t)

;;final newline
(setq require-final-newline t)

;;haml mode
(add-hook 'haml-mode-hook
          (lambda ()
            (setq indent-tabs-mode nil)
            (define-key haml-mode-map "\C-m" 'newline-and-indent)))

;; css mode for scss files
(add-to-list 'auto-mode-alist '("\\.scss\\'" . css-mode))

;;js mode for coffe script files
(add-to-list 'auto-mode-alist '("\\.js.erb\\'" . js-mode))

;; start web-mode for .erb files
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(setq x-alt-keysym 'meta)


;; snipets
(setq yas-snippet-dirs
      '("~/.emacs.d/snippets"
        ))
(yas-global-mode 1)

;; Kill whitespace on save
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; Flyspeel Configurations
;; (add-hook 'after-init-hook 'flyspell-mode)
(add-hook 'find-file-hooks 'turn-on-flyspell)

;; Flymake configuration
(add-hook 'enh-ruby-mode-hook 'flycheck-mode)
