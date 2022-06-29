;;; init.el -- The begining of my emacs setup

;; load paths
(add-to-list 'load-path "~/.emacs.d/custom")
(add-to-list 'load-path "~/.emacs.d/vendors")
(add-to-list 'load-path "~/.emacs.d/rails")

;; initialize packages
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))

(package-initialize)
(setq my-required-packages
      (list 'multiple-cursors
            'highlight-indentation
	    'projectile-rails
            'switch-window
	    'enh-ruby-mode
	    'rvm
            'web-mode
	    'scss-mode
	    'rjsx-mode
            'expand-region
            'yasnippet
            'column-enforce-mode
            'zenburn-theme
            ))

(dolist (package my-required-packages)
  (when (not (package-installed-p package))
    (package-refresh-contents)
    (package-install package)))

;; ;; common stuff
(load "requires.el")
(load "custom_methods.el")
(load "keybidings.el")
(load "customization.el")

;; ;; rails specific stuff
(load "rails-requires.el")
(load "rails-keybidings.el")
(load "rails-customization.el")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(column-enforce-mode magit magit-section transient zenburn-theme yasnippet web-mode multiple-cursors js2-mode helm expand-region)))
