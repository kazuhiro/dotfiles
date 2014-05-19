(require 'package)
(package-initialize)

(add-to-list 'package-archives
  '("melpa" . "http://melpa.milkbox.net/packages/") t)

;; packages
(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

(defvar my-packages '(markdown-mode
                      flycheck
                      undo-tree
		      groovy-mode
		      scala-mode2
		      git-commit-mode
		      elixir-mode))

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

;; keybindings
(global-set-key (kbd "C-c g") 'goto-line)
(global-set-key (kbd "C-q") 'query-replace)
(global-set-key (kbd "C-c q") 'query-replace-regexp)
(global-set-key (kbd "C-z") 'undo)
;; (global-set-key (kbd "C-w") 'er/expand-region)

;; modes
(show-paren-mode 1)
(ido-mode t)
(global-undo-tree-mode 1)
(auto-compression-mode t)
(global-font-lock-mode t)
(setq make-backup-files nil)
(global-linum-mode t)

;; editor settings
(menu-bar-mode 0)
(fset `yes-or-no-p `y-or-n-p)
(setq linum-format "%d ")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector ["#073642" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#657b83"])
 '(background-color "#002b36")
 '(background-mode dark)
 '(cursor-color "#839496")
 '(custom-enabled-themes (quote (solarized-dark)))
 '(custom-safe-themes (quote ("1e7e097ec8cb1f8c3a912d7e1e0331caeed49fef6cff220be63bd2a6ba4cc365" "fc5fcb6f1f1c1bc01305694c59a1a861b008c534cae8d0e48e4d5e81ad718bc6" default)))
 '(foreground-color "#839496")
 '(inhibit-startup-screen t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
