;; Recently opened files
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 50)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)
(add-to-list 'recentf-exclude "\\ido.last\\'")

;; Emacs on Full screen
(defun fullscreen (&optional f)
  (interactive)
  (set-frame-parameter f 'fullscreen
		       (if (frame-parameter f 'fullscreen) nil 'fullboth)))
(global-set-key (kbd "C-c f") 'fullscreen)

;; Toggle window dedication
(defun toggle-window-dedicated ()
  "Toggle whether the current active window is dedicated or not"
  (interactive)
  (message
   (if (let (window (get-buffer-window (current-buffer)))
	 (set-window-dedicated-p window
				 (not (window-dedicated-p window))))
       "Window '%s' is dedicated"
     "Window '%s' is normal")
   (current-buffer)))
;; Press [pause] key in each window you want to "freeze"
(global-set-key (kbd "\C-x w") 'toggle-window-dedicated)

;; Prevent auto-resize
(setq even-window-heights nil)

;; Flyspell auto correct
(eval-after-load "flyspell" '(progn
   (define-key flyspell-mouse-map (kbd "<C-down-mouse-3>") #'flyspell-correct-word)
   (define-key flyspell-mouse-map (kbd "<C-mouse-3>") 'undefined) ))


;; Window resize
(global-set-key (kbd "S-C-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "S-C-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "S-C-<down>") 'shrink-window)
(global-set-key (kbd "S-C-<up>") 'enlarge-window)

;; Windows navigation
(global-set-key (kbd "C-c <left>")  'windmove-left)
(global-set-key (kbd "C-c <right>") 'windmove-right)
(global-set-key (kbd "C-c <up>")    'windmove-up)
(global-set-key (kbd "C-c <down>")  'windmove-down)

;; Disable wheel right and left
(global-set-key [wheel-left] 'ignore)
(global-set-key [wheel-right] 'ignore)
(global-set-key [double-wheel-left] 'ignore)
(global-set-key [double-wheel-right] 'ignore)
(global-set-key [triple-wheel-left] 'ignore)
(global-set-key [triple-wheel-right] 'ignore)

;; Undo Redo
(defalias 'redo 'undo-tree-redo)
(global-set-key (kbd "C-z") 'undo) ;【Ctrl+z】
(global-set-key (kbd "C-S-z") 'redo) ;【Ctrl+Shift+z】;  Mac style


;; No more typing the whole yes or no. Just y or n will do.
(fset 'yes-or-no-p 'y-or-n-p)

;; ob-ipython Kill Kernel
(global-set-key (kbd "C-M-q") 'ob-ipython-kill-kernel)

;; Delete selection mode
(delete-selection-mode 1)

;; Clipboard kill ring 
(setq save-interprogram-paste-before-kill t)
;;(setq x-select-enable-clipboard nil)

;; Smartparens move forward and backwards
(require 'smartparens-config)
(global-set-key (kbd "C-M-]") 'sp-forward-sexp)
(global-set-key (kbd "C-M-[") 'sp-backward-sexp)

;; Revert buffer w/o confirm
(defun revert-buffer-no-confirm ()
  "Revert buffer without confirmation."
  (interactive)
  (revert-buffer :ignore-auto :noconfirm))
(global-set-key (kbd "C-x M-r") 'revert-buffer-no-confirm)
