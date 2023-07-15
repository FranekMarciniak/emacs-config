(straight-use-package 'web-mode)
(add-to-list 'auto-mode-alist '("\\.json\\'" . web-mode))

(straight-use-package 'dockerfile-mode)
(add-to-list 'auto-mode-alist '("Dockerfile\\'" . dockerfile-mode))


(straight-use-package 'flymake-eslint)
(add-hook 'web-mode-hook 
  (lambda ()
    (flymake-eslint-enable)))

(add-hook 'web-mode-hook
  (lambda ()
    (flymake-eslint-enable)))

(add-hook 'typescript-mode-hook
  (lambda ()
    (flymake-eslint-enable)))
(global-set-key (kbd "C-c ! n") 'flymake-goto-next-error)


(straight-use-package 'typescript-mode)

(straight-use-package 'markdown-mode)
(straight-use-package 'yaml-mode)
(straight-use-package 'go-mode)
(straight-use-package 'json-mode)

(add-to-list 'auto-mode-alist '("js\\'" . js-mode))
