;; AucTeX
(require 'auctex-latexmk)
(auctex-latexmk-setup)
(setq auctex-latexmk-inherit-TeX-PDF-mode t)
(setq TeX-auto-save t)
(setq TeX-save-query nil)
(setq TeX-parse-self t)
(setq-default TeX-master nil)
(add-hook 'LaTeX-mode-hook 'visual-line-mode)
(add-hook 'LaTeX-mode-hook 'flyspell-mode)
(add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)
(add-hook 'LaTeX-mode-hook 'turn-on-reftex)
(add-hook 'LaTeX-mode-hook (lambda ()
                (setq case-fold-search nil)))
(setq reftex-plug-into-AUCTeX t)
(setq TeX-PDF-mode t)


;; make latexmk available via C-c C-c
;; Note: SyncTeX is setup via ~/.latexmkrc
(add-hook 'LaTeX-mode-hook (lambda ()
  (push
    '("latexmk" "latexmk -pdf %s" TeX-run-TeX nil t
      :help "Run latexmk on file")
    TeX-command-list)))
(add-hook 'TeX-mode-hook '(lambda () (setq TeX-command-default "latexmk")))

;; Skim's displayline is used for forward search (from .tex to .pdf)
;; option -b highlights the current line; option -g opens Skim in the background
(setq TeX-view-program-selection '((output-pdf "View")))
(setq TeX-view-program-list
      '(("View" "/Applications/Skim.app/Contents/SharedSupport/displayline -b -g %n %o %b")))
(add-hook 'LaTeX-mode-hook
	  (lambda () (local-set-key (kbd "<S-s-mouse-1>") #'TeX-view))
	  )
(setq TeX-PDF-mode t)

