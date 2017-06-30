;; Murat A. Erdogdu

(package-initialize)

;; Init packages
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
 '(package-selected-packages (quote (auctex))))
(custom-set-faces
 )

