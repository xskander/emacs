;; load paths
(add-to-list 'load-path "~/.emacs.d/custom")
(add-to-list 'load-path "~/.emacs.d/vendors")
(add-to-list 'load-path "~/.emacs.d/phoenix")

;; initialize packages
(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
  (add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/") t)
  )

(package-initialize)
(setq my-required-packages
      (list 'magit
            'multiple-cursors
            'highlight-indentation
            'projectile-rails
            'switch-window
            'git-commit-mode
            'git-rebase-mode
            'gitconfig-mode
            'gitignore-mode
            'web-mode
            'scss-mode
            'slim-mode
            'coffee-mode
            'expand-region
            'yasnippet-bundle
            'yaml-mode
            'zenburn-theme
            'dash-at-point
            'elixir-mode
            'alchemist
            'flycheck))

(dolist (package my-required-packages)
  (when (not (package-installed-p package))
    (package-refresh-contents)
    (package-install package)))

;; common stuff
(load "requires.el")
(load "custom_methods.el")
(load "keybidings.el")
(load "customization.el")

;; rails specific stuff
(load "phoenix-requires.el")
;; (load "phoenix-custom_methods.el")
;; (load "phoenix-keybidings.el")
(load "phoenix-customization.el")