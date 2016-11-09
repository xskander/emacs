;;prevent backup files
(setq make-backup-files nil)

;;ido mode for buffers
(ido-mode t)

;;line number mode
(global-linum-mode t)

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

;;final newline
(setq require-final-newline t)

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

;; magit prevent data loss
(setq magit-auto-revert-mode nil)
(setq magit-last-seen-setup-instructions "1.4.0")

;; themes
;; (load-theme 'solarized-dark t)

;; load theme zenburn
(load-theme 'zenburn t)

;; remove menu bar
(menu-bar-mode -1)

;; set web mode indentations
(setq web-mode-markup-indent-offset 2)

;; set syntax colors in css files
(add-hook 'css-mode-hook 'xah-syntax-color-hex)
(add-hook 'html-mode-hook 'xah-syntax-color-hex)

;; prevent total anihilation
(setq delete-by-moving-to-trash t)

;; scss mode
(autoload 'scss-mode "scss-mode")
(add-to-list 'auto-mode-alist '("\\.scss\\'" . scss-mode))

;; Grep search ignore folder
(eval-after-load 'grep
  '(progn
     (add-to-list 'grep-find-ignored-directories "public")
     (add-to-list 'grep-find-ignored-directories "coverage")
     (add-to-list 'grep-find-ignored-directories "tmp")
     (add-to-list 'grep-find-ignored-directories "spec/fixtures")
     (add-to-list 'grep-find-ignored-directories "log")))
(add-hook 'grep-mode-hook (lambda () (toggle-truncate-lines 1)))

;; Star Yaml Mode
(add-hook 'yaml-mode-hook
  (lambda ()
    (define-key yaml-mode-map "\C-m" 'newline-and-indent)))

;; Dash
(autoload 'dash-at-point "dash-at-point"
  "Search the word at point with Dash." t nil)
