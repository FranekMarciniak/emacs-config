(straight-use-package 'dired-open)
(require 'dired-open)
(define-key dired-mode-map (kbd "o") #'dired-open-xdg)
(setq process-connection-type nil);; necessary due to https://emacs.stackexchange.com/questions/19344/why-does-xdg-open-not-work-in-eshell
