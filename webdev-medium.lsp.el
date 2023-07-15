(straight-use-package 'lsp-mode)
(straight-use-package 'flycheck-projectile)

(setq gc-cons-threshold 100000000)
(setq read-process-output-max (* 1024 1024)) ;; 1mb
(setq lsp-keymap-prefix "C-c c")


(add-hook 'typescript-mode-hook 'lsp)


;; we use lsp only for web stuff, when we need two language servers at the same time (ts/eslint).
;; for others, we use the build-in eglot


(straight-use-package 'eglot)
(setq eglot-confirm-server-initiated-edits nil)

(add-hook 'web-mode-hook 'eglot-ensure)
(add-hook 'js-mode-hook 'eglot-ensure)
(add-hook 'sh-mode-hook 'eglot-ensure)


(add-hook 'eglot-managed-mode-hook
          (lambda ()
	    (local-set-key (kbd "C-c c a") 'eglot-code-actions)
	    (local-set-key (kbd "C-c c r") 'eglot-rename)))
