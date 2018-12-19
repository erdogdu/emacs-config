;; company-auctex mode has issues with lates AucTex
;; (add-to-list 'load-path "~/.emacs.d./elpa/company-auctex-20180725.1912/company-auctex.el")
;; (require 'company-auctex)
;; (company-auctex-init)

;; company-mode
(add-hook 'after-init-hook 'global-company-mode)
(setq company-minimum-prefix-length 3)
;; Preserve upper-case
(setq company-dabbrev-downcase nil)
(setq company-idle-delay 0)


;; Jedi requires virtualenv
;; pip install jedi and epc
;; pip install --upgrade /bla/.emacs.d/elpa/jedi-core-XXX/
;; (defun my/python-mode-hook ()
;;   (add-to-list 'company-backends 'company-jedi))
;; (add-hook 'python-mode-hook 'my/python-mode-hook)

;; Auto-start
;; (defun auto-start-jedi ()
;;   (jedi:install-server))
;; (add-hook 'python-mode-hook 'auto-start-jedi)

;; Turn off company in latex mode
;; (add-hook 'LaTeX-mode-hook 'company-latex-hook)
;; (defun company-latex-hook ()
;;   (company-mode 1)) ;; -1 to turn off

;; Eshell auto-complete
(add-hook
 'eshell-mode-hook
 (lambda ()
   (setq pcomplete-cycle-completions nil)))
