;; Org mode load languages
(org-babel-do-load-languages
  'org-babel-load-languages
  '(
    (ein . t)
    (python . t)
    ;; (R . t)
    ))

(setq org-display-inline-images t)
(setq org-redisplay-inline-images t)
(setq org-src-preserve-indentation t)
(setq org-confirm-babel-evaluate nil)
(setq org-support-shift-select t)
(setq org-src-tab-acts-natively t)
(setq org-src-preserve-indentation t
      org-edit-src-content-indentation 0)
(setq org-src-fontify-natively t)

(add-hook 'org-mode-hook
          (lambda ()
            (local-set-key "\C-\M-c" 'outline-show-all)))

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
  "#+email: erdogdu@toronto.edu\n"
  "-----"
  )

(random t)
(defun org-insert-source-block ()
  (interactive)
  (insert
   (format "#+name: l%s-%d
#+begin_src ein :session 8888/temp.ipynb

#+end_src" (line-number-at-pos) (random 100)
)
   )
  (forward-line -1)
  (goto-char (line-end-position))
)
(add-hook 'org-mode-hook
    (lambda ()
    (local-set-key "\C-\M-s" 'org-insert-source-block)))

(add-to-list 'org-structure-template-alist
             '("s" "#+begin_src ein :session 8888/temp.ipynb\n\n#+end_src"))
(add-to-list 'org-structure-template-alist
             '("p" "#+begin_src ein :session 8888/temp.ipynb :image output.png :results drawer\n\n#+end_src"))
