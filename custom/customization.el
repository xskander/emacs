;;; package --- customization.el

;; no easy keys setup
(no-easy-keys 1)

;; enforce column node
(add-hook 'prog-mode-hook 'column-enforce-mode)

;; kill whitespace on save
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; load theme zenburn
(load-theme 'zenburn t)

;; remove menu bar
(menu-bar-mode -1)

;; add hook to color css in html/css
(add-hook 'css-mode-hook 'xah-syntax-color-hex)
(add-hook 'html-mode-hook 'xah-syntax-color-hex)

;; Grep search ignore folder
(eval-after-load 'grep
  '(progn
     (add-to-list 'grep-find-ignored-directories "public")
     (add-to-list 'grep-find-ignored-directories "coverage")
     (add-to-list 'grep-find-ignored-directories "tmp")
     (add-to-list 'grep-find-ignored-directories "spec/fixtures")
     (add-to-list 'grep-find-ignored-directories "log")))
(add-hook 'grep-mode-hook (lambda () (toggle-truncate-lines 1)))

;; snippet mode
(yas-global-mode 1)
(yas-reload-all)
(add-hook 'prog-mode-hook #'yas-minor-mode)

;; Prettier; Help cleanup js react/code
(add-hook 'js2-mode-hook 'prettier-js-mode)
(add-hook 'web-mode-hook 'prettier-js-mode)

;; ------------------------------- rails

;; enh ruby mode for ruby code verification
(autoload 'enh-ruby-mode "enh-ruby-mode" "Major mode for ruby files" t)
(add-to-list 'auto-mode-alist '("\\.rb$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rake$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("\\.gemspec$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("\\.ru$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile$" . enh-ruby-mode))

;; activate corespunding ruby
(rvm-activate-corresponding-ruby)

;; js mode for coffe script files
(add-to-list 'auto-mode-alist '("\\.js.erb\\'" . js-mode))

;; start web-mode for .erb files
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))

;; scss mode
(autoload 'scss-mode "scss-mode")
(add-to-list 'auto-mode-alist '("\\.scss\\'" . scss-mode))

;; Star Yaml Mode
(add-hook 'yaml-mode-hook
  (lambda ()
    (define-key yaml-mode-map "\C-m" 'newline-and-indent)))

;; use web-mode for .jsx files
(add-to-list 'auto-mode-alist '("\\.jsx$" . rjsx-mode))
(add-to-list 'auto-mode-alist '("\\.js$" . rjsx-mode))

;; https://github.com/purcell/exec-path-from-shell
;; only need exec-path-from-shell on OSX
;; this hopefully sets up path and other vars better
(when (memq window-system '(mac ns))
    (exec-path-from-shell-initialize))

;; projectile rails
(projectile-mode +1)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
(projectile-rails-global-mode 1)

;; colors
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
;; '(helm-ag-ignore-buffer-patterns (quote ("\\.min.js\\'" "\\.log\\'" "\\.min.css\\'")))
 '(nrepl-message-colors
   (quote
    ("#CC9393" "#DFAF8F" "#F0DFAF" "#7F9F7F" "#BFEBBF" "#93E0E3" "#94BFF3" "#DC8CC3")))
 '(package-selected-packages
   (quote
    (zenburn-theme yasnippet yaml-mode web-mode switch-window slim-mode rvm rspec-mode rjsx-mode projectile-rails multiple-cursors magit json-mode highlight-indentation flycheck feature-mode expand-region exec-path-from-shell enh-ruby-mode dumb-jump dash-at-point coffee-mode alchemist)))
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

;; highlight indentation
(add-hook 'enh-ruby-mode-hook
    (lambda () (highlight-indentation-current-column-mode)))
(add-hook 'coffee-mode-hook
    (lambda () (highlight-indentation-current-column-mode)))

;; rvm use default
(rvm-use-default)

;; rjsx-mode for react
(add-to-list 'auto-mode-alist '("components\\/.*\\.js\\'" . rjsx-mode))
(add-to-list 'auto-mode-alist '("app/javascript\\/.*\\.js\\'" . rjsx-mode))
(add-to-list 'auto-mode-alist '("components\\/.*\\.jsx\\'" . rjsx-mode))
(add-to-list 'auto-mode-alist '("app/javascript\\/.*\\.jsx\\'" . rjsx-mode))
