;; Emacs configuration file
;; Date last modified: 10/27/2017

;; -*- mode: elisp -*-

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.

;; Add package repositories
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
;;(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/") t)
;;(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
;;(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)

;; Disable the splash screen (to enable it again, replace the t with nil)
(setq inhibit-splash-screen t)

;; Enable / disable the menu bar, tool bar, and the scroll bar
;; This forces you to learn the keybindings
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

;; Enable syntax highlighting
(setq enable-global-font-lock-mode t)

;; Enable transient mark mode
;; (transient-mark-mode t)

;; Don't generate backup (~) files
(setq make-backup-files nil)

;; Set the highlight current line minor mode
(global-hl-line-mode t)

;; Enable line and column numbering

;; Show line number in the mode line
(line-number-mode t)

;; Show column number in the mode line
(column-number-mode t)

;; Enable auto-fill mode
(setq auto-fill-mode t)

;; Load a nice color theme
(load-theme 'leuven t)

;; Set a default font
(add-to-list 'default-frame-alist
	     '(font . "Consolas-12"))

;; Set the default directory
(setq default-directory "C:/Users/dsynck/")

;; org-mode configuration
;; Enable org-mode and add some basic settings
(require 'org)
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)
(setq org-todo-keywords
      '((sequence "TODO" "IN-PROGRESS" "WAITING" "DONE")))
;; The above is the default in recent emacsen

;; Set up org mode clocking
(setq org-clock-persist 'history)
(org-clock-persistence-insinuate)

;; Start Emacs maximized
(add-to-list 'default-frame-alist '(fullscreen . maximized))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
