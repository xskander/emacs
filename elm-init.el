;;load paths
(add-to-list 'load-path "~/.emacs.d/custom")
(add-to-list 'load-path "~/.emacs.d/elm")
(add-to-list 'load-path "~/.emacs.d/vendors")

;;initialize packages
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
            'switch-window
            'git-commit-mode
            'git-rebase-mode
            'gitignore-mode
            'scss-mode
            'expand-region
            'yasnippet
            'zenburn-theme
            'elm-mode
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

;; elm specific stuff
(load "elm-required.el")
(load "elm-custom_methods.el")
(load "elm-keybidings.el")
(load "elm-customization.el")
