;;; rails-customization.el -- customization calls

;; remove enconding from top of file
(setq enh-ruby-add-encoding-comment-on-save nil)

;; enh ruby mode for ruby code verification
(autoload 'enh-ruby-mode "enh-ruby-mode" "Major mode for ruby files" t)
(add-to-list 'auto-mode-alist '("\\.rb$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rake$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("\\.gemspec$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("\\.ru$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile$" . enh-ruby-mode))

;; inentation
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

;; Fly speel Configurations
(add-hook 'find-file-hooks 'turn-on-flyspell)

;; scss mode
(autoload 'scss-mode "scss-mode")
(add-to-list 'auto-mode-alist '("\\.scss\\'" . scss-mode))

;; Star Yaml Mode
(add-hook 'yaml-mode-hook
  (lambda ()
    (define-key yaml-mode-map "\C-m" 'newline-and-indent)))

;; helm-ag base default project
(setq dumb-jump-default-project "~/workspace/RepairPal")

;; use web-mode for .jsx files
(add-to-list 'auto-mode-alist '("\\.jsx$" . rjsx-mode))
(add-to-list 'auto-mode-alist '("\\.js$" . rsjx-mode))

;; turn on flychecking globally
(add-hook 'after-init-hook #'global-flycheck-mode)

;; disable jshint since we prefer eslint checking
(setq-default flycheck-disabled-checkers
              (append flycheck-disabled-checkers
                      '(javascript-jshint)))

;; use eslint with web-mode for jsx files
(flycheck-add-mode 'javascript-eslint 'rjsx-mode)

;; customize flycheck temp file prefix
(setq-default flycheck-temp-prefix ".flycheck")

;; disable json-jsonlist checking for json files
(setq-default flycheck-disabled-checkers
              (append flycheck-disabled-checkers
                      '(json-jsonlist)))

;; https://github.com/purcell/exec-path-from-shell
;; only need exec-path-from-shell on OSX
;; this hopefully sets up path and other vars better
(when (memq window-system '(mac ns))
    (exec-path-from-shell-initialize))

;; use local eslint from node_modules before global
;; http://emacs.stackexchange.com/questions/21205/flycheck-with-file-relative-eslint-executable
(defun my/use-eslint-from-node-modules ()
  (let* ((root (locate-dominating-file
                (or (buffer-file-name) default-directory)
                "node_modules"))
         (eslint (and root
                      (expand-file-name "node_modules/eslint/bin/eslint.js"
                                        root))))
    (when (and eslint (file-executable-p eslint))
      (setq-local flycheck-javascript-eslint-executable eslint))))
(add-hook 'flycheck-mode-hook #'my/use-eslint-from-node-modules)
