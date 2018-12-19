;; Murat A. Erdogdu
;; emacs config

;; Init packages
(package-initialize)
(load "~/.emacs.d/package-settings")

;; Visual settings
(load "~/.emacs.d/visual-settings")

;; Key bindings
(load "~/.emacs.d/key-binding-settings")

;; AucTeX and Skim settings
(load "~/.emacs.d/auctex-settings")

;; Python settings
(load "~/.emacs.d/python-settings")

;; Org modesettings
(load "~/.emacs.d/org-mode-settings")

;; Auto-complete
(load "~/.emacs.d/auto-comp-settings.el")

;; Spell check
(load "~/.emacs.d/spell-check-settings.el")


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (smartrep elpy ein doom-themes company auctex-latexmk auctex))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(server-start)
