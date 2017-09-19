;; Murat A. Erdogdu
;; emacs configuration

;; Init packages
(package-initialize)
(load "~/.emacs.d/package-settings")

;; Visual settings
(load "~/.emacs.d/visual-settings")

;; Key bindings
(load "~/.emacs.d/key-bindings")

;; AucTeX and Skim settings
(load "~/.emacs.d/auctex-settings")

;; Programming language settings
(load "~/.emacs.d/programming-settings")

;; Auto-complete
(load "~/.emacs.d/auto-comp.el")

;; Start e-macs server
(server-start)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (auctex))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

