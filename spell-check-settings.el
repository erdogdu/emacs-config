(autoload 'flyspell-mode "flyspell" "On-the-fly spelling checker." t)

(setq flyspell-issue-message-flag nil)
(add-hook 'LaTeX-mode-hook 'flyspell-mode)
(setenv "DICTIONARY" "en_US")


