;;load paths
(add-to-list 'load-path "~/.emacs.d/custom")
(add-to-list 'load-path "~/.emacs.d/vendors")

;;initialize packages
(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
  )

(package-initialize)
(setq my-required-packages
      (list 'magit
            'ack-and-a-half
            'multiple-cursors
            'rvm
            'highlight-indentation
            'color-theme-solarized
            'projectile-rails
            'switch-window
            'git-commit-mode
            'git-rebase-mode
            'gitconfig-mode
            'gitignore-mode
            'enh-ruby-mode
            'rspec-mode
            'feature-mode
            'web-mode
            'haml-mode
            'slim-mode
            'coffee-mode
            'expand-region
            'yasnippet
            'flycheck))

(dolist (package my-required-packages)
  (when (not (package-installed-p package))
    (package-refresh-contents)
    (package-install package)))

;; my personal files
(load "requires.el")
(load "custom_methods.el")
(load "keybidings.el")
(load "customization.el")
