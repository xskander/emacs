;; Switch windows
(require 'switch-window)

;; No easy keys
(require 'no-easy-keys)
(no-easy-keys 1)

;; expand region
(require 'expand-region)

;; ;; multiple cursors
(require 'multiple-cursors)

(setq debug-on-error t)

(setq column-enforce-column 120)
(add-hook 'prog-mode-hook 'column-enforce-mode)

(require 'prettier-js)
