
(setq inhibit-startup-message t)
(global-set-key (kbd "<escape>") 'keyboard-escape-quit)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)
(tooltip-mode -1)
(set-fringe-mode 10)
(column-number-mode)
(global-display-line-numbers-mode t)

;; disable line number in certain modes
(dolist (mode '(org-mode-hook
		term-mode-hook
		shell-mode-hook
		eshell-mode-hook))
  (add-hook mode ( lambda () (display-line-numbers-mode 0))))

(set-face-attribute 'default nil :font "Monospace" :height 220)

(load-theme 'tango-dark)

(require 'package)

(setq package-archives '(("melpa" . "https://melpa.org/packages/")
			 ("org" . "https://orgmode.org/elpa")
			 ("elpa" . "https://elpa.gnu.org/packages/")))

(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))

(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)

(use-package ivy
  :config
  (ivy-mode 1))

(use-package all-the-icons
  :ensure t)

(use-package doom-modeline
  :ensure t
  :init (doom-modeline-mode 1)
  :custom ((doom-modeline-height 15)))

(use-package doom-themes
  :ensure t
  :config
  ;; Global settings (defaults)
  (setq doom-themes-enable-bold t    ; if nil, bold is universally disabled
        doom-themes-enable-italic t) ; if nil, italics is universally disabled
  (load-theme 'doom-gruvbox t)

  ;; Enable custom neotree theme (all-the-icons must be installed!)
  (doom-themes-neotree-config)
  ;; or for treemacs users
  (setq doom-themes-treemacs-theme "doom-gruvbox") ; use "doom-colors" for less minimal icon theme
  (doom-themes-treemacs-config)
  ;; Corrects (and improves) org-mode's native fontification.
  (doom-themes-org-config))

;; colors ), (, [, ] to know the corresponding pairs
(use-package rainbow-delimiters
  :hook (prog-mode . rainbow-delimiters-mode))

;; evil-mode
(use-package evil
  :init
  (setq evil-want-integration t)
  (setq evil-want-keybinding nil)
  :config
  (evil-mode 1)
 )

(use-package evil-collection
  :after evil
  :config
  (evil-collection-init))

(use-package ein)

(use-package org-bullets
  :config
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1))))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ein:output-area-inlined-images t)
 '(package-selected-packages
   '(ein evil-collection evil rainbow-delimiters doom-themes all-the-icons doom-modeline ivy use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
