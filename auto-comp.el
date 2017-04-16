(add-hook 'after-init-hook 'global-company-mode)

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
