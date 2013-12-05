;;prevent backup files
(setq make-backup-files nil)

;;ido mode for buffers
(ido-mode t)

;;line number mode
(global-linum-mode t)

;;enh ruby mode for ruby code verification
(setq enh-ruby-program "~/.rvm/rubies/ruby-2.0.0-p195/bin/ruby")
(autoload 'enh-ruby-mode "enh-ruby-mode" "Major mode for ruby files" t)
(add-to-list 'auto-mode-alist '("\\.rb$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rake$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("\\.gemspec$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("\\.ru$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile$" . enh-ruby-mode))


;;highlight indentation
(require 'highlight-indentation)
(add-hook 'enh-ruby-mode-hook
	  (lambda () (highlight-indentation-current-column-mode)))
(add-hook 'coffee-mode-hook
	  (lambda () (highlight-indentation-current-column-mode)))

;;web-mode
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.jsp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))

(defun web-mode-hook () "Hooks for Web mode."
       (setq web-mode-markup-indent-offset 2)
       (setq web-mode-markup-indent-offset 2)
       (setq web-mode-css-indent-offset 2)
       (setq web-mode-css-indent-offset 2)
       (setq web-mode-indent-style 2)
       (setq web-mode-style-padding 1)
       (setq web-mode-script-padding 1)
       (setq web-mode-block-padding 0)
       (setq web-mode-comment-style 2)
       ) (add-hook 'web-mode-hook 'web-mode-hook)


;;fiplr
(setq fiplr-root-markers '(".git" ".svn"))
(setq fiplr-ignored-globs '((directories (".git" ".svn" "selenium" "doc" "tmp"))
			    (files ("*.jpg" "*.png" "*.zip" "*~" ".DS_Store" "tags" "TAGS" "*.ru" ".keep"))))


;; ;; fill column indicator
(require 'fill-column-indicator)
(setq-default fci-rule-column 80)
(setq fci-handle-truncate-lines nil)
(define-globalized-minor-mode global-fci-mode fci-mode (lambda () (fci-mode 1)))
(global-fci-mode 1)
(defun auto-fci-mode (&optional unused)
  (if (> (window-width) fci-rule-column)
      (fci-mode 1)
    (fci-mode 0))
  )
(add-hook 'after-change-major-mode-hook 'auto-fci-mode)
(add-hook 'window-configuration-change-hook 'auto-fci-mode)

;; indentation
(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)
(setq-default c-basic-offset 2)
(setq css-indent-offset 2)
(setq js-indent-level 2)

;; yes no set as y/n
(fset 'yes-or-no-p 'y-or-n-p)
(setq confirm-kill-emacs 'yes-or-no-p)

;; always refresh file content if they change on disk
(global-auto-revert-mode 1)

