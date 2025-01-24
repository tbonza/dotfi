;; Disable startup message (shortmess+=I)
(setq inhibit-startup-message t)

;; Disable menu bar
(menu-bar-mode -1)

;; Enable line numbers
(global-display-line-numbers-mode t)
(setq display-line-numbers-type 'relative) ;; Relative line numbers

;; Highlight search results
(setq search-highlight t)
(setq query-replace-highlight t)

;; Use 2 spaces instead of tabs during formatting
(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)
(setq-default c-basic-offset 2)
(setq-default standard-indent 2)

;; Use 2 spaces for Python files
(add-hook 'python-mode-hook
          (lambda ()
            (setq python-indent-offset 4)
            (setq tab-width 4)
            (setq indent-tabs-mode nil)))

;; Column should not be more than 80 characters
(require 'whitespace)
(setq whitespace-line-column 80) ;; limit line length
(setq whitespace-style '(face lines-tail))
(add-hook 'prog-mode-hook 'whitespace-mode)

;; Syntax highlighting (syntax on)
(global-font-lock-mode t)

;; Show matching parentheses
(show-paren-mode 1)

;; Package manager (equivalent to Vim's plug#begin() and plug#end())
(require 'package)
(setq package-archives '(("melpa" . "https://melpa.org/packages/")
                         ("org" . "https://orgmode.org/elpa/")
                         ("gnu" . "https://elpa.gnu.org/packages/")))

(package-initialize)

(unless package-archive-contents
  (package-refresh-contents))

(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(require 'use-package)

;; Install and configure vimtex equivalent for Emacs
(use-package auctex
  :ensure t)

;; Add the path to the cloned lean4-mode to the load-path
(add-to-list 'load-path "~/.emacs.d/lean4-mode")

;; Require lean4-mode
(require 'lean4-mode)

;; Optionally, set up any additional configuration for lean4-mode
;; Example: Enable lean4-mode for Lean files
(add-to-list 'auto-mode-alist '("\\.lean\\'" . lean4-mode))

;; Load theme equivalent to 'habamax' in Vim
(load-theme 'tango-dark t) ;; 'tango-dark' is an example, change to your preferred theme
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(auctex)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
