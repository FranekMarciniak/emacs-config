(straight-use-package 'yasnippet)

;; this is where the snippets are saved. It's a good idea to put it in
;; a place where you can easily syncfiles with your other machines
(setq yas-snippet-dirs '("~/.emacs.d/config/snippets"))
(yas-global-mode)
