;;; Commentary:
;;; package --- Summary
;;packages
(require 'package)
;;; Code:
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                         ("marmalade" . "https://marmalade-repo.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")))
;;(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

;;use-package configuration
(unless (package-installed-p 'use-package)
  (progn
    (package-refresh-contents)
    (package-install 'use-package)))

(require 'use-package)
(setq use-package-always-ensure t)

(global-set-key(kbd "C-x g") 'magit-status)

;;use-package automatically installs and applys configurations
(use-package ess)
(use-package evil
  :init
  (setq evil-want-C-u-scroll t)
  :config
  (evil-mode t))
(use-package evil-magit)
(use-package evil-org
	:config
	(add-hook 'org-mode-hook 'evil-org-mode))
(use-package flycheck
  :config
  (add-hook 'after-init-hook #'global-flycheck-mode))
(use-package yasnippet
  :config
  (yas-global-mode 1))
(use-package auto-complete
  :config
  (require 'auto-complete-config)
  (ac-config-default))
;(use-package auto-complete-clang-async)
;(use-package haskell-mode)
;(use-package haskell-snippets)
(use-package python-environment)
(use-package magit)
(use-package gnu-apl-mode)
(use-package markdown-mode)
(use-package flyspell)
(use-package pdf-tools)
(use-package gruvbox-theme
  :config
  (load-theme 'gruvbox-light-soft t))



;;just in case
;;packages listed
;(setq package-list '(evil flycheck yasnippet auto-complete use-package
;						  auto-complete-clang-async evil-org haskell-mode
;						  haskell-snippets python-environment magit
;						  gnu-apl-mode gruvbox-theme))

;;function to install packages probably only use when first configuring emacs
;(defun install-packages ()
;  "Run this to install all packages listed in package-list. Probably best used for first time setup."
;  (interactive)
;  (unless package-archive-contents
;    (package-refresh-contents))
;  (dolist (package package-list)
;    (unless (package-installed-p package)
;      (package-install package))))
;
;;;;Package settings
;(require 'evil)
;(evil-mode 1)
;(setq evil-want-C-u-scroll t)
;
;(require 'auto-complete)
;(require 'auto-complete-config)
;(ac-config-default)
;
;(require 'yasnippet)
;(yas-global-mode 1)
;(require 'flycheck)
;(add-hook 'after-init-hook #'global-flycheck-mode)

;;theme settings
;(load-theme 'gruvbox-light-soft t)
(scroll-bar-mode 0)
(tool-bar-mode 0)
(global-linum-mode t)
(blink-cursor-mode 0)
(setq visible-bell t)
(add-to-list 'default-frame-alist '(font . "DejaVu Sans Mono-10"))
(set-face-attribute 'default t :font "DejaVu Sans Mono-10")
;;(add-to-list 'default-frame-alist '(font . "Liberation Mono-10"))
;;(set-face-attribute 'default t :font "Liberation Mono-10")
(display-battery-mode t)
(display-time-mode t)
(org-indent-mode t)

(add-hook 'text-mode-hook 'visual-line-mode t)
(add-hook 'org-mode-hook 'org-beamer-mode t)
(add-hook 'org-mode-hook 'flyspell-mode t)

;;qol updates
(fset 'yes-or-no-p 'y-or-n-p)
;;word wrap
(visual-line-mode t)
(show-paren-mode t)
(setq-default show-trailing-whitespace t)
(ido-mode t)
(icomplete-mode t)

(setq org-src-tab-acts-natively t)


;;indentation settings
;;t for tabs
(setq-default c-basic-offset 2)
(setq indent-tabs-mode nil)
(setq-default tab-width 4)

;;keybindings
(global-set-key [f1] 'eshell)
(global-set-key (kbd "M-o") 'other-window)
(global-set-key [f5] 'compile)

;;(add-hook 'org-mode-hook #'toggle-word-wrap)

(set-frame-font "Menlo:pixelsize=14")
(add-to-list 'default-frame-alist
			 (cons 'font "Menlo:pixelsize=14"))

(provide 'init)
;;; init.el ends here

;; just in case
;(custom-set-variables
; ;; custom-set-variables was added by Custom.
; ;; If you edit it by hand, you could mess it up, so be careful.
; ;; Your init file should contain only one such instance.
; ;; If there is more than one, they won't work right.
; '(ansi-color-faces-vector
;   [default default default italic underline success warning error])
; '(ansi-color-names-vector
;   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
; '(ansi-term-color-vector
;   [unspecified "#FFFFFF" "#d15120" "#5f9411" "#d2ad00" "#6b82a7" "#a66bab" "#6b82a7" "#505050"])
; '(blink-cursor-mode nil)
; ;;'(custom-enabled-themes (quote (gruvbox-light-soft)))
; '(custom-safe-themes
;   (quote
;    ("f6a935e77513ba40014aa8467c35961fdb1fc936fa48407ed437083a7ad932de" "125fd2180e880802ae98b85f282b17f0aa8fa6cb9fc4f33d7fb19a38c40acef0" "dc9a8d70c4f94a28aafc7833f8d05667601968e6c9bf998791c39fcb3e4679c9" "5a970147df34752ed45bfdf0729233abfc085d9673ae7e40210c5e2d8f624b08" "65d9573b64ec94844f95e6055fe7a82451215f551c45275ca5b78653d505bc42" "357d5abe6f693f2875bb3113f5c031b7031f21717e8078f90d9d9bc3a14bcbd8" "c1390663960169cd92f58aad44ba3253227d8f715c026438303c09b9fb66cdfb" default)))
; '(fci-rule-character-color "#d9d9d9")
; '(fci-rule-color "#d9d9d9")
; '(package-selected-packages
;   (quote
;    (gruvbox-theme flycheck helm evil-org mu4e-alert haskell-snippets haskell-mode yasnippet auto-complete-clang-async auto-complete python-environment magit gnu-apl-mode expand-region evil)))
; '(tool-bar-mode nil))
;
;(custom-set-faces
; ;; custom-set-faces was added by Custom.
; ;; If you edit it by hand, you could mess it up, so be careful.
; ;; Your init file should contain only one such instance.
; ;; If there is more than one, they won't work right.
; '(default ((t (:family "Liberation Mono" :foundry "1ASC" :slant normal :weight normal :height 103 :width normal)))))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
	(org-evil ess ess-R-data-view gruvbox-theme gnu-apl-mode python-environment auto-complete yasnippet use-package popup flycheck evil-org evil-magit markdown-mode+ markdown-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
