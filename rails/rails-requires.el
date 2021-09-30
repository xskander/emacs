;; Requires - This is where all the libraries are imported

;; Highlight indentation
(require 'highlight-indentation)
(add-hook 'enh-ruby-mode-hook
    (lambda () (highlight-indentation-current-column-mode)))
(add-hook 'coffee-mode-hook
    (lambda () (highlight-indentation-current-column-mode)))

;; RVM for gems
(require 'rvm)
(rvm-use-default)

;; Rspec
(require 'rspec-mode)
(setq rspec-use-rake-when-possible nil)

;; Feature mode
(require 'feature-mode)
(add-to-list 'auto-mode-alist '("\.feature$" . feature-mode))

;; Helm used for searches
(require 'helm-ag)

;; rjsx-mode for react
(add-to-list 'auto-mode-alist '("components\\/.*\\.js\\'" . rjsx-mode))
(add-to-list 'auto-mode-alist '("app/javascript\\/.*\\.js\\'" . rjsx-mode))
(add-to-list 'auto-mode-alist '("components\\/.*\\.jsx\\'" . rjsx-mode))
(add-to-list 'auto-mode-alist '("app/javascript\\/.*\\.jsx\\'" . rjsx-mode))

;; Flycheck mode for rubocop
;; (global-flycheck-mode)
