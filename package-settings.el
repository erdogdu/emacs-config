;; Path addition
(let ((my-path (expand-file-name "/Library/TeX/texbin/")))
  (setenv "PATH" (concat my-path ":" (getenv "PATH")))
  (add-to-list 'exec-path my-path))
(let ((my-path (expand-file-name "/Users/erdogdu/anaconda2/bin/")))
  (setenv "PATH" (concat my-path ":" (getenv "PATH")))
  (add-to-list 'exec-path my-path))
(let ((my-path (expand-file-name "/usr/local/bin/")))
  (setenv "PATH" (concat my-path ":" (getenv "PATH")))
  (add-to-list 'exec-path my-path))

;; Melpa and Elpa
(require 'package)
(add-to-list
  'package-archives
    '("melpa" . "https://melpa.milkbox.net/packages/") t)

;; The packages to install
(setq package-list
      '(
        auctex
        auctex-latexmk
        company
        ;;company-auctex
        ;;company-jedi
        doom-themes
        ein
        elpy
        ;;ess
        ;;flycheck
        flyspell
        org
        ;;popup
        smartrep
        ;;smartparens
        ))

;; activate all the packages
(package-initialize)

;; fetch the list of packages available
(unless package-archive-contents
  (package-refresh-contents))

;; install the missing packages
(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))


