;; ESS R mode
(require 'ess-site)
;;(setq org-babel-R-command "/usr/local/bin/R --slave --no-save")

;; ESS Julia mode
;; (setq org-babel-julia-command "/Applications/Julia-0.5.app/Contents/Resources/julia/bin/julia")

;; MATLAB mode
(autoload 'matlab-mode "matlab" "Matlab Editing Mode" t)
(add-to-list
 'auto-mode-alist
 '("\\.m$" . matlab-mode))
(setq matlab-indent-function t)
(setq matlab-shell-command "matlab")

;; PYTHON MODE
(require 'ob-python)
(require 'ob-ipython)
(require 'py-autopep8)
;;(require 'smartparens-config)
;;(add-hook 'python-mode-hook #'smartparens-mode)

(elpy-enable)

;; requires flake8, tornado and jedi, pep8
(org-babel-do-load-languages
 'org-babel-load-languages
 '(
   (ipython . t)
   (python . t)
   (julia . t)
   (R . t)
   ))
;; There is a problem with the R path:
;; when it is included, emacs gives error


;; Spelling
(setq ispell-program-name "/usr/local/Cellar/ispell/3.4.00/bin/ispell")
(autoload 'flyspell-mode "flyspell" "On-the-fly spelling checker." t)
(autoload 'flyspell-delay-command "flyspell" "Delay on command." t) 
(autoload 'tex-mode-flyspell-verify "flyspell" "" t) 



(setq org-src-preserve-indentation t)
(setq org-confirm-babel-evaluate nil)
(setq org-support-shift-select t)
(setq org-src-tab-acts-natively t)
(setq org-src-preserve-indentation t
      org-edit-src-content-indentation 0)

;; This fixes ob-ipython warning bugs
(setq python-shell-prompt-detect-failure-warning nil)
(setq python-shell-completion-native-enable nil)

;;display/update images in the buffer after I evaluate
(add-hook 'org-babel-after-execute-hook 'org-display-inline-images 'append)
;; yank and indent
(dolist (command '(yank yank-pop))
  (eval `(defadvice ,command (after indent-region activate)
	   (and (not current-prefix-arg)
		(member major-mode '(emacs-lisp-mode lisp-mode
				     clojure-mode    scheme-mode
				     haskell-mode    ruby-mode
				     rspec-mode      python-mode
				     c-mode          c++-mode
				     objc-mode       latex-mode
				     plain-tex-mode  julia-mode
				     fortran-mode))
		(let ((mark-even-if-inactive transient-mark-mode))
		                     (indent-region (region-beginning) (region-end) nil))))))

(add-hook 'emacs-lisp-mode-hook #'aggressive-indent-mode)
(add-hook 'css-mode-hook #'aggressive-indent-mode)

;; org skeleton
(define-skeleton org-skeleton
  "#+TITLE: DEMO SCRIPT\n"
  "#+AUTHOR: Murat A. Erdogdu\n"
  "#+email: erdogdu@\n"
  "-----"
  )
(global-set-key [C-S-f3] 'org-skeleton)

(add-to-list 'org-structure-template-alist
             '("s" "#+BEGIN_SRC ipython :session a :results value :async t\n\n#+END_SRC"))
(add-to-list 'org-structure-template-alist
             '("plot" "#+BEGIN_SRC ipython :session a :file ./temp.png :exports both\n\n#+END_SRC"))
