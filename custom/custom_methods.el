;; kill buffer withou prompting
(defun volatile-kill-buffer ()
  "Kill current buffer unconditionally."
  (interactive)
  (let ((buffer-modified-p nil))
    (kill-buffer (current-buffer))))

;; Find root directory by searching for Gemfile
(defun* get-closest-gemfile-root (&optional (file "Gemfile"))
  (let ((root (expand-file-name "/")))
    (loop
     for d = default-directory then (expand-file-name ".." d)
     if (file-exists-p (expand-file-name file d))
     return d
     if (equal d root)
     return nil)))


(defadvice split-window (after move-point-to-new-window activate)
  "Moves the point to the newly created window after splitting."
  (other-window 1))

;;nuke all buffers
(defun nuke-all-buffers ()
  (interactive)
  (mapcar 'kill-buffer (buffer-list))
  (delete-other-windows))

;; turn on flyspell lambda method
(defun turn-on-flyspell () (flyspell-mode 1))

;; set colors in css files
(defun xah-syntax-color-hex ()
  "Syntax color text of the form 「#ff1100」 in current buffer.
URL `http://ergoemacs.org/emacs/emacs_CSS_colors.html'
Version 2015-06-11"
  (interactive)
  (font-lock-add-keywords
   nil
   '(("#[abcdef[:digit:]]\\{6\\}"
      (0 (put-text-property
          (match-beginning 0)
          (match-end 0)
          'face (list :background (match-string-no-properties 0)))))))
  (font-lock-fontify-buffer))

;; move files to trash not into the ether
(defun system-move-file-to-trash (file)
    "Use \"trash\" to move FILE to the system trash.
When using Homebrew, install it using \"brew install trash\"."
    (call-process (executable-find "trash")
                  nil 0 nil
                  file))
