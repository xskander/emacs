;;; init.el -- The begining of my emacs setup

;; load paths
(add-to-list 'load-path "~/.emacs.d/custom")
(add-to-list 'load-path "~/.emacs.d/vendors")

;; initialize packages
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))

(package-initialize)
(setq my-required-packages
      (list 'multiple-cursors
            'highlight-indentation
            'avy
            'switch-window
	          'enh-ruby-mode
            'prettier-js
	          'rvm
            'web-mode
	          'rjsx-mode
            'helm-ag
            'expand-region
            'yasnippet
            'projectile-rails
            'column-enforce-mode
            'zenburn-theme))

(dolist (package my-required-packages)
  (when (not (package-installed-p package))
    (package-refresh-contents)
    (package-install package)))

;; require all files from the custom folder
(load "requires.el")
(load "methods.el")
(load "customization.el")
(load "keybidings.el")
