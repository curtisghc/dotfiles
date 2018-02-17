
(fset 'yes-or-no-p 'y-or-n-p)
(show-paren-mode t)
(setq-default show-trailing-whitespace t)

;;c indent width
(setq-default c-basic-offset 2)

;;spaces (t is for tabs)
(setq indent-tabs-mode nil)

;;tab width
(setq-default tab-width 4)

(blink-cursor-mode 0)
(setq visible-bell t)
;;(setq initial-scratch-message "")
(scroll-bar-mode 0)
(tool-bar-mode 0)
;;(menu-bar-mode 0)

;;line numbers
(global-linum-mode t)

;;word wrap
(visual-line-mode t)

(add-to-list 'default-frame-alist '(font . "DejaVu Sans Mono-10"))
(set-face-attribute 'default t :font "DejaVu Sans Mono-10")
;;(add-to-list 'default-frame-alist '(font . "Liberation Mono-10"))
;;(set-face-attribute 'default t :font "Liberation Mono-10")
(icomplete-mode t)
(ido-mode t)

(global-set-key [f1] 'ansi-term)
(global-set-key (kbd "M-o") 'other-window)

(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

(add-hook 'org-mode-hook #'toggle-word-wrap)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(ansi-term-color-vector
   [unspecified "#FFFFFF" "#d15120" "#5f9411" "#d2ad00" "#6b82a7" "#a66bab" "#6b82a7" "#505050"])
 '(blink-cursor-mode nil)
 '(custom-enabled-themes (quote (gruvbox-light-soft)))
 '(custom-safe-themes
   (quote
    ("f6a935e77513ba40014aa8467c35961fdb1fc936fa48407ed437083a7ad932de" "125fd2180e880802ae98b85f282b17f0aa8fa6cb9fc4f33d7fb19a38c40acef0" "dc9a8d70c4f94a28aafc7833f8d05667601968e6c9bf998791c39fcb3e4679c9" "5a970147df34752ed45bfdf0729233abfc085d9673ae7e40210c5e2d8f624b08" "65d9573b64ec94844f95e6055fe7a82451215f551c45275ca5b78653d505bc42" "357d5abe6f693f2875bb3113f5c031b7031f21717e8078f90d9d9bc3a14bcbd8" "c1390663960169cd92f58aad44ba3253227d8f715c026438303c09b9fb66cdfb" default)))
 '(display-battery-mode t)
 '(display-time-mode t)
 '(fci-rule-character-color "#d9d9d9")
 '(fci-rule-color "#d9d9d9")
 '(package-selected-packages
   (quote
    (gruvbox-theme flycheck helm evil-org mu4e-alert haskell-snippets haskell-mode yasnippet auto-complete-clang-async auto-complete python-environment magit gnu-apl-mode expand-region evil)))
 '(send-mail-function (quote smtpmail-send-it))
 '(smtpmail-smtp-server "mail.cock.li")
 '(smtpmail-smtp-service 465)
 '(tool-bar-mode nil))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Liberation Mono" :foundry "1ASC" :slant normal :weight normal :height 103 :width normal)))))

(setq evil-want-C-u-scroll t)
(require 'evil)
(evil-mode 1)

(require 'expand-region)
(global-set-key (kbd "C-=") 'er/expand-region)
(global-set-key (kbd "C--") 'er/contract-region)

(require 'auto-complete)
(require 'auto-complete-config)
(ac-config-default)

(require 'yasnippet)
(yas-global-mode 1)

(require 'flycheck)
(global-flycheck-mode)


