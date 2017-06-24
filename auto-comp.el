(add-hook 'after-init-hook 'global-company-mode)
(setq company-minimum-prefix-length 2)

;; Preserve upper-case
(setq company-dabbrev-downcase nil)

;; Jedi requires virtualenv
(defun my/python-mode-hook ()
  (add-to-list 'company-backends 'company-jedi))
(add-hook 'python-mode-hook 'my/python-mode-hook)

;; Auto-start
(defun auto-start-jedi ()
  (jedi:install-server))
(add-hook 'python-mode-hook 'auto-start-jedi)

;; Turn off company in latex mode
(add-hook 'LaTeX-mode-hook 'company-latex-hook)
(defun company-latex-hook ()
  (company-mode -1))

;; Eshell auto-complete
(add-hook
 'eshell-mode-hook
 (lambda ()
   (setq pcomplete-cycle-completions nil)))
