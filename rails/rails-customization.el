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

;; set web mode indentations
(setq web-mode-markup-indent-offset 2)

;; format linum
(setq linum-format "%4d ")

;; activate corespunding ruby
(rvm-activate-corresponding-ruby)

;; final newline
(setq require-final-newline t)

;; js mode for coffe script files
(add-to-list 'auto-mode-alist '("\\.js.erb\\'" . js-mode))

;; start web-mode for .erb files
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(setq x-alt-keysym 'meta)

;; Flyspeel Configurations
(add-hook 'find-file-hooks 'turn-on-flyspell)

;; scss mode
(autoload 'scss-mode "scss-mode")
(add-to-list 'auto-mode-alist '("\\.scss\\'" . scss-mode))

;; Star Yaml Mode
(add-hook 'yaml-mode-hook
  (lambda ()
    (define-key yaml-mode-map "\C-m" 'newline-and-indent)))

;; Dash
(autoload 'dash-at-point "dash-at-point"
  "Search the word at point with Dash." t nil)
