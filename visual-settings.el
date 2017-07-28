;; Kill startup screen
(setq inhibit-startup-screen t)

;; Makes *scratch* empty.
(setq initial-scratch-message "")

;; Removes *scratch* from buffer after the mode has been set.
(defun remove-scratch-buffer ()
  (if (get-buffer "*scratch*")
      (kill-buffer "*scratch*")))
(add-hook 'after-change-major-mode-hook 'remove-scratch-buffer)

;; Removes *Completions* from buffer after you've opened a file.
(add-hook 'minibuffer-exit-hook
	  '(lambda ()
	     (let ((buffer "*Completions*"))
	       (and (get-buffer buffer)
		    (kill-buffer buffer)))))

;; Screen size
(add-to-list 'default-frame-alist '(height . 55))
(add-to-list 'default-frame-alist '(width . 100))

;; scroll one line at a time (less "jumpy" than defaults)
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1))) ;; one line at a time
(setq mouse-wheel-progressive-speed nil) ;; don't accelerate scrolling
(setq mouse-wheel-follow-mouse 't) ;; scroll window under mouse
(setq scroll-step 1) ;; keyboard scroll one line at a time

;; line numbers and arrows
(global-linum-mode t)
(setq-default visual-line-fringe-indicators nil)
(setq-default fringe-indicator-alist '(
				       (truncation left-arrow right-arrow)
				       (continuation nil) ;; left-curly-arrow
				       (overlay-arrow . right-triangle)
				       (up . up-arrow)
				       (down . down-arrow)
				       (top top-left-angle top-right-angle)
				       (bottom bottom-left-angle bottom-right-angle top-right-angle top-left-angle)
				       (top-bottom left-bracket right-bracket top-right-angle top-left-angle)
				       (empty-line . empty-line)
				       (unknown . question-mark)))

;; match parantheses
(show-paren-mode 1)

;; Replace highlighted text
(delete-selection-mode 1)

;; Remove tool bar
(tool-bar-mode -1)

;; Kill all with out annoying
(require 'cl-lib)
(defadvice save-buffers-kill-emacs (around no-query-kill-emacs activate)
  "Prevent annoying \"Active processes exist\" query when you quit Emacs."
  (cl-letf (((symbol-function #'process-list) (lambda ())))
    ad-do-it))

;;(defadvice save-buffers-kill-emacs (around no-query-kill-emacs activate)
;;  "Prevent annoying \"Active processes exist\" query when you quit Emacs."
;;  (flet ((process-list ())) ad-do-it))

;; Window resizing code chunk
(defadvice pop-to-buffer (before cancel-other-window first)
  (ad-set-arg 1 nil))
(ad-activate 'pop-to-buffer)

;; Themes
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")

;; zenburn settings
(load-theme 'hc-zenburn t)
(set-face-attribute 'region nil :background "#666" :foreground "#EF2020")  

(custom-set-variables
 '(package-selected-packages (quote (auctex))))
(custom-set-faces)

