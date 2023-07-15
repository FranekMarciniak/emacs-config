;;
;; install `black`, `shfmt` and `prettier` on your system
;;
;;
(straight-use-package 'apheleia) ;; formats anything with black or prettier
(straight-use-package 'prettier) ;; uses prettier to format, faster than apheleia

;; disabled due to a bug with emacs29
;; (apheleia-global-mode +1)
(global-prettier-mode)

;; skip aphaleia for modes supported by prettier
(with-eval-after-load 'apheleia
 (setq  apheleia-mode-alist
	(-filter (lambda (x) (not (string-prefix-p "prettier" (symbol-name (cdr x))))) apheleia-mode-alist))
  (add-to-list 'apheleia-mode-alist '(sh-mode . shfmt))
 )



