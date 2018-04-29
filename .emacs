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
 '(cua-mode t nil (cua-base))
 '(custom-enabled-themes (quote (wheatgrass)))
 '(package-selected-packages (quote (super-save))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Consolas" :foundry "outline" :slant normal :weight normal :height 98 :width normal)))))

;; ------------------------------------
;; Useful configuation commands:
; list-packages
; menu-set-font

;; Place this file in C:\Users\Username\AppData\Roaming and point to the appropriate files
;;https://emacs.stackexchange.com/questions/12881/how-do-i-set-a-different-location-for-the-dot-emacs-emacs-file-on-windows-7
;(setq user-init-file "C:/path/to/.emacs")
;(setq user-emacs-directory "C:/path/to/.emacs.d/")
;(setq default-directory "C:/whatever/you/want/to/start/in")
;(setenv "HOME" "D:/my/home/directory")
;(load user-init-file)

(super-save-mode +1)
(setq super-save-auto-save-when-idle t)

(setq mouse-autoselect-window t)

;; backup in one place. flat, no tree structure
(setq backup-directory-alist '(("" . "~/.emacs.d/emacs-backup")))


