; directory to put various el files into
(add-to-list 'load-path "/Users/tford")
(autoload 'ruby-mode "ruby-mode" "Major mode for editing ruby scripts." t)
(setq auto-mode-alist (cons '(".rb$" . ruby-mode) auto-mode-alist))

(add-to-list 'load-path "~/.emacs.d/")


(defun shift-left ()

    "Takes the current line and moves it all the way to the left."

    (interactive)

    (indent-line-to 0)

    (end-of-line)

) ; End function shift-left.

(defun full-path ()

    "Shows the full pathname of the file being visited by the current buffer."

    (interactive)

    (message (buffer-file-name))


) ; End function full-path

(defun insert-full-path ()

    "Inserts the full pathname of the file being visited by the current buffer."

    (interactive)

    (insert (buffer-file-name))

) ; End function full-path



(global-set-key "\M- " 'set-mark-command)

; Moving around.
(global-set-key "\M-a" 'move-beginning-of-line)
(global-set-key "\M-e" 'move-end-of-line)
(global-set-key [?\e left] 'shift-left)
(global-set-key "\C-f" 'forward-word)
(global-set-key "\C-b" 'backward-word)

; Cut, copy, and paste.
(global-set-key "\M- " 'set-mark-command)
(global-set-key "\M-w" 'kill-region)
(global-set-key "\M-y" 'yank)
(global-set-key "\C-xy"  'yank-pop)

; Filenames
(global-set-key "\M-p" 'full-path)
(global-set-key "\M-\C-p" 'insert-full-path)


; Autocompletions
(define-abbrev-table 'global-abbrev-table ' (
    ("teh" "the" nil)
;    ("print" "print STDERR" nil)
    )
)
(setq default-abbrev-mode t)

; Tab stops
(setq-default c-basic-offset 4)
(setq js-indent-level 2)
(setq tab-width 4)
(setq indent-tabs-mode nil)
(setq-default indent-tabs-mode nil)

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(tab-stop-list (quote (4 8 12 16 20 24 28 32 36 40 44 48 52 56 60 64 68 72 76 80 84 88 92 96 100 104 108 112 116 120))))

