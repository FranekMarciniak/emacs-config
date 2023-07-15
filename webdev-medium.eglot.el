(straight-use-package 'eglot)

(add-hook 'web-mode-hook 'eglot-ensure)
(add-hook 'js-mode-hook 'eglot-ensure)
(add-hook 'sh-mode-hook 'eglot-ensure)
(add-hook 'typescript-mode-hook 'eglot-ensure)


;; the below is to address https://github.com/joaotavora/eglot/issues/976#issuecomment-1355438003
;; it might not be necessary in the future
;; see also https://github.com/orzechowskid/flymake-eslint/issues/23#issuecomment-1333998574

;; (add-hook 'eglot-managed-mode-hook (lambda () (flymake-eslint-enable)))
;; (setq eglot-stay-out-of '(flymake))


(global-set-key (kbd "C-c c a") 'eglot-code-actions)
(global-set-key (kbd "C-c c r") 'eglot-rename)

(straight-use-package 'company)
(add-hook 'after-init-hook 'global-company-mode)

(add-hook 'eglot-managed-mode-hook
          (lambda ()
            ;; Show flymake diagnostics first.
            (setq eldoc-documentation-functions
                  (cons #'flymake-eldoc-function
                        (remove #'flymake-eldoc-function eldoc-documentation-functions)))
            ;; Show all eldoc feedback.
            (setq eldoc-documentation-strategy #'eldoc-documentation-compose)))


(fset 'unpromisify-loop
   (kmacro-lambda-form [return ?\C-a ?\C-p ?a ?w ?a ?i ?t ?  ?P ?r ?o ?m ?i ?s ?e ?. ?a ?l ?l ?\( ?\) ?\; ?\C-n ?\C-a ?\C-s ?  ?o ?f ?  return ?\C-  ?\C-s ?\{ return ?\C-b ?\C-b ?\C-b ?\C-w ?\C-p ?\C-e ?\C-b ?\C-b ?\C-y ?. ?m ?a ?p ?\( ?a ?s ?y ?n ?c ?  ?\( ?\) ?= ?> ?\{ ?\} ?\) ?\C-n ?\C-a ?\C-s ?  ?o ?f ?  return ?\C-b ?\C-b ?\C-b ?\C-  ?\C-r ?c ?o ?n ?s ?t ?\C-f ?\C-f ?\C-f ?\C-f ?\C-f ?\C-w ?\C-p ?\C-a ?\C-s ?a ?s ?y ?n ?c ?  ?\( return ?\C-y ?\C-e ?\C-s ?\{ return ?\C-b ?\C-  ?\C-\M-f ?\C-w ?\C-p ?\C-e ?\C-b ?\C-b ?\C-b ?\C-b ?\C-b ?\C-d ?\C-d ?\C-y ?\C-n ?\C-a ?\C-k] 0 "%d"))


;;;; https://gist.github.com/gsj987/64d48bf49a374c96421ad20df886e947

(define-derived-mode typescriptreact-mode web-mode "TypescriptReact"
  "A major mode for tsx.")

(use-package typescript-mode
  :mode (("\\.ts\\'" . typescript-mode)
         ("\\.tsx\\'" . typescriptreact-mode)))

(use-package eglot
  :ensure t
  :defer 3
  :hook
  ((js-mode
    typescript-mode
    typescriptreact-mode) . eglot-ensure)
  :config
  (cl-pushnew '((js-mode typescript-mode typescriptreact-mode) . ("typescript-language-server" "--stdio"))
              eglot-server-programs
              :test #'equal))
;;;;


(add-to-list 'prettier-major-mode-parsers '(typescriptreact-mode tsx))
(add-to-list 'prettier-enabled-parsers 'tsx)
(add-hook 'typescriptreact-mode-hook (prettier-mode 1))
(setq eglot-confirm-server-initiated-edits nil)
