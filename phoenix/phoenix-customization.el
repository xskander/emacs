;; indentation
(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)
(setq-default c-basic-offset 2)
(setq css-indent-offset 2)
(setq js-indent-level 2)
(setq whitespace-style '(trailing space-before-tab indentation empty space-after-tab))

;; set web mode indentations
(setq web-mode-markup-indent-offset 2)

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

;; scss mode
(autoload 'scss-mode "scss-mode")
(add-to-list 'auto-mode-alist '("\\.scss\\'" . scss-mode))

;; Flyspeel Configurations
(add-hook 'find-file-hooks 'turn-on-flyspell)
