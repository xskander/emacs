;; Highlight indentation
(require 'highlight-indentation)
(add-hook 'enh-ruby-mode-hook
    (lambda () (highlight-indentation-current-column-mode)))
(add-hook 'coffee-mode-hook
    (lambda () (highlight-indentation-current-column-mode)))

;; RVM
(require 'rvm)
(rvm-use-default)

;; Rspec
(require 'rspec-mode)
(setq rspec-use-rake-when-possible nil)

;; Switch windows
(require 'switch-window)

;; No easy keys
(require 'no-easy-keys)
(no-easy-keys 1)

;; Feature mode
(require 'feature-mode)
(add-to-list 'auto-mode-alist '("\.feature$" . feature-mode))

;;expand region
(require 'expand-region)
