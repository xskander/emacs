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

;; yaml mode
(add-hook 'yaml-mode-hook
          (lambda ()
            (define-key yaml-mode-map "\C-m" 'newline-and-indent)))

;; add hook to color css in html/css
(add-hook 'css-mode-hook 'xah-syntax-color-hex)
(add-hook 'html-mode-hook 'xah-syntax-color-hex)
(add-hook 'rjsx-mode-hook 'xah-syntax-color-hex)
(add-hook 'web-mode-hook 'xah-syntax-color-hex)

;; Grep search ignore folder
(eval-after-load 'grep
  '(progn
     (add-to-list 'grep-find-ignored-directories "public/*")
     (add-to-list 'grep-find-ignored-directories "coverage")
     (add-to-list 'grep-find-ignored-directories "tmp")
     (add-to-list 'grep-find-ignored-directories "spec/fixtures")
     (add-to-list 'grep-find-ignored-directories "*/public/*")
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

;; use web-mode for .jsx files
(add-to-list 'auto-mode-alist '("\\.jsx$" . rjsx-mode))
(add-to-list 'auto-mode-alist '("\\.js$" . rjsx-mode))
(add-to-list 'auto-mode-alist '("\\.tsx$" . web-mode))
(add-to-list 'auto-mode-alist '("\\.ts$" . web-mode))

;; https://github.com/purcell/exec-path-from-shell
;; only need exec-path-from-shell on OSX
;; this hopefully sets up path and other vars better
(when (memq window-system '(mac ns))
    (exec-path-from-shell-initialize))

;; projectile rails
(projectile-mode +1)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
(projectile-rails-global-mode 1)

;; highlight indentation
(add-hook 'enh-ruby-mode-hook
    (lambda () (highlight-indentation-current-column-mode)))
(add-hook 'rjsx-mode-hook
    (lambda () (highlight-indentation-current-column-mode)))
(add-hook 'web-mode-hook
    (lambda () (highlight-indentation-current-column-mode)))

;; rvm use default
(rvm-use-default)

;; rjsx-mode for react
(add-to-list 'auto-mode-alist '("components\\/.*\\.js\\'" . rjsx-mode))
(add-to-list 'auto-mode-alist '("app/javascript\\/.*\\.js\\'" . rjsx-mode))
(add-to-list 'auto-mode-alist '("components\\/.*\\.jsx\\'" . rjsx-mode))
(add-to-list 'auto-mode-alist '("app/javascript\\/.*\\.jsx\\'" . rjsx-mode))
(add-to-list 'auto-mode-alist '("src/layout\\/.*\\.tsx\\'" . web-mode))
(add-to-list 'auto-mode-alist '("src/app\\/.*\\.tsx\\'" . web-mode))
(add-to-list 'auto-mode-alist '("next/app\\/.*\\.tsx\\'" . web-mode))
(add-to-list 'auto-mode-alist '("src/app\\/.*\\.ts\\'" . web-mode))
(add-to-list 'auto-mode-alist '("next/app\\/.*\\.ts\\'" . web-mode))
