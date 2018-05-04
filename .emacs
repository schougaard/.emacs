;; On Windows: c:/Users/user/AppData/Roaming/.emacs

(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["black" "#d55e00" "#009e73" "#f8ec59" "#0072b2" "#cc79a7" "#56b4e9" "white"])
 '(blink-cursor-mode nil)
 '(cua-mode t nil (cua-base))
 '(custom-enabled-themes (quote (wheatgrass)))
 '(ido-vertical-mode t)
 '(package-selected-packages
   (quote
    (projectile dashboard ido-grid-mode smex ido-vertical-mode ac-html markdown-mode yaml-mode neotree super-save)))
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Consolas" :foundry "outline" :slant normal :weight normal :height 98 :width normal)))))

;; ------------------------------------

;; See: https://github.com/emacs-tw/awesome-emacs

;; Useful configuation commands:
; menu-set-font
; list-packages
; package-list-packages
; package-install:
; markdown-mode yaml-mode neotree super-save
;;C-x C-e in any buffer evaluates the Lisp form immediately before point

;; Place this file in C:\Users\Username\AppData\Roaming and point to the appropriate files
;;https://emacs.stackexchange.com/questions/12881/how-do-i-set-a-different-location-for-the-dot-emacs-emacs-file-on-windows-7
;(setq user-init-file "C:/path/to/.emacs")
;(setq user-emacs-directory "C:/path/to/.emacs.d/")
;(setq default-directory "C:/whatever/you/want/to/start/in")
;(setenv "HOME" "D:/my/home/directory")
;(load user-init-file)

(setq initial-scratch-message nil)
(setq inhibit-splash-screen t)
;(switch-to-buffer "**")

;; https://github.com/bbatsov/projectile
(projectile-mode)
(setq projectile-switch-project-action #'neotree)

;; Dashboard
;;(require 'dashboard)
(setq dashboard-banner-logo-title "Emacs Ready!")
(setq dashboard-startup-banner 'logo)
(setq dashboard-items '((recents  . 10)
                        (projects . 10)
                        (bookmarks . 5)
                        ;(agenda . 5)
                        ;(registers . 5)
			))
(dashboard-setup-startup-hook)

(super-save-mode +1)
(setq super-save-auto-save-when-idle t)

(setq mouse-autoselect-window t)

;; backup in one place. flat, no tree structure
(setq backup-directory-alist '(("" . "~/.emacs.d/emacs-backup")))

;; https://superuser.com/questions/610776/remapping-emacs-keys-using-scancodes
(setq w32-pass-multimedia-buttons-to-system nil)
(global-set-key (kbd "<browser-forward>") 'next-buffer)
(global-set-key (kbd "<browser-back>") 'previous-buffer)

;; Neotree C-c C-c will display current directory as root in tree
;;(require 'neotree)
(global-set-key [f8] 'neotree-toggle)
;(global-set-key (kbd "C-m") 'neotree-toggle)

;; IDO
;; https://www.masteringemacs.org/article/introduction-to-ido-mode
;;(require 'ido)
(setq ido-enable-flex-matching t)
(setq ido-use-filename-at-point 'guess)
(setq ido-create-new-buffer 'always)
(ido-everywhere 1)
(ido-mode 1)

;(require 'ido-vertical-mode)
;(ido-vertical-mode 1)

;;(require 'ido-grid-mode)
(ido-grid-mode 1)


;;(require 'smex) ; Not needed if you use package.el
(smex-initialize) ; Can be omitted. This might cause a (minimal) delay
		  ; when Smex is auto-initialized on its first run.

(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)

;; Message in minibuffer
(message "Emacs ready!")


;; TODO:
;; https://github.com/chrisdone/god-mode
;; http://ergoemacs.github.io/


