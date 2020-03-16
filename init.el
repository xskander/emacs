;;; init.el -- The begining of my emacs setup

;; load paths
(add-to-list 'load-path "~/.emacs.d/custom")
(add-to-list 'load-path "~/.emacs.d/vendors")
(add-to-list 'load-path "~/.emacs.d/rails")

;; initialize packages
(when (>= emacs-major-version 24)
  (setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3")
  (require 'package)
  (package-initialize)
  (add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
  (add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/") t)
  )

(package-initialize)
(setq my-required-packages
      (list 'magit
            'multiple-cursors
            'rvm
            'highlight-indentation
            'projectile-rails
            'switch-window
            'enh-ruby-mode
            'rspec-mode
            'feature-mode
            'web-mode
            'scss-mode
            'slim-mode
            'coffee-mode
            'expand-region
            'yasnippet
            'yaml-mode
            'zenburn-theme
            'elixir-mode
            'alchemist
            'dumb-jump
            'helm-ag
            'js2-mode
            'json-mode
            'exec-path-from-shell
            'rjsx-mode
            'column-enforce-mode
            'no-easy-keys
            'flycheck
            's))

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
(load "rails-requires.el")
(load "rails-custom_methods.el")
(load "rails-keybidings.el")
(load "rails-customization.el")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#3F3F3F" "#CC9393" "#7F9F7F" "#F0DFAF" "#8CD0D3" "#DC8CC3" "#93E0E3" "#DCDCCC"])
 '(coffee-tab-width 2)
 '(company-quickhelp-color-background "#4F4F4F")
 '(company-quickhelp-color-foreground "#DCDCCC")
 '(custom-safe-themes
   (quote
    ("04232a0bfc50eac64c12471607090ecac9d7fd2d79e388f8543d1c5439ed81f5" default)))
 '(fci-rule-color "#383838")
 '(helm-ag-ignore-buffer-patterns (quote ("\\.min.js\\'" "\\.log\\'" "\\.min.css\\'")))
 '(nrepl-message-colors
   (quote
    ("#CC9393" "#DFAF8F" "#F0DFAF" "#7F9F7F" "#BFEBBF" "#93E0E3" "#94BFF3" "#DC8CC3")))
 '(package-selected-packages
   (quote
    (no-easy-keys zenburn-theme yasnippet yaml-mode web-mode switch-window slim-mode scss-mode rvm rspec-mode rjsx-mode projectile-rails multiple-cursors magit json-mode highlight-indentation helm-ag feature-mode expand-region exec-path-from-shell enh-ruby-mode dumb-jump dash-at-point coffee-mode alchemist)))
 '(pdf-view-midnight-colors (quote ("#DCDCCC" . "#383838")))
 '(vc-annotate-background "#2B2B2B")
 '(vc-annotate-color-map
   (quote
    ((20 . "#BC8383")
     (40 . "#CC9393")
     (60 . "#DFAF8F")
     (80 . "#D0BF8F")
     (100 . "#E0CF9F")
     (120 . "#F0DFAF")
     (140 . "#5F7F5F")
     (160 . "#7F9F7F")
     (180 . "#8FB28F")
     (200 . "#9FC59F")
     (220 . "#AFD8AF")
     (240 . "#BFEBBF")
     (260 . "#93E0E3")
     (280 . "#6CA0A3")
     (300 . "#7CB8BB")
     (320 . "#8CD0D3")
     (340 . "#94BFF3")
     (360 . "#DC8CC3"))))
 '(vc-annotate-very-old-color "#DC8CC3"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
