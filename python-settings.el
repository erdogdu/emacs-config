;; Elpy require jedi, flake8, pep8, yapf
;; pip install jedi flake8 autopep8 yapf
;; remove ivy.elc for symbol func void error
(elpy-enable)
;; Jump forward with M-., jump back with M-,
(define-key elpy-mode-map (kbd "M-,") 'pop-tag-mark)

;; EIN settings
(require 'ein)
(require 'ein-notebook)
(require 'ein-subpackages)
(setq ein:use-smartrep t)
(setq ein:jupyter-default-server-command "~/anaconda2/bin/jupyter")
(setq ein:jupyter-default-notebook-directory "~/Dropbox/workspace/temp/")
(setq ein:org-inline-image-directory "~/Dropbox/workspace/temp/output.png")
(setq ein:completion-backend 'ein:use-company-backend)
(setq ein:org-async-p t)

