;; format linum
(setq linum-format "%4d ")

;; format linum
(setq linum-format "%4d ")

;; indentation
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq whitespace-style '(trailing space-before-tab indentation empty space-after-tab))

;; final newline
(setq require-final-newline t)

;; oracle auto completion
(add-hook 'elm-mode-hook #'elm-oracle-setup-completion)

;; autoload gulpjs
(autoload 'gulpjs-start-task "gulpjs" "Start a gulp task." t)
