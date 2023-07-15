(straight-use-package 'projectile)
(straight-use-package 'counsel-projectile)
;; (use-package prescient ;; to enable sorting the suggestions for autocomplete                                                                         
;;   :straight t                                                                                                   
;;   :config
;;   (prescient-persist-mode +1) ;; to make the frequency statistics persist over restarts of emacs
;;   (setq perscient-history-length 1000))

;; (use-package ivy-prescient ;; see https://systemcrafters.net/emacs-tips/completion-sorting-with-prescient/
;;   :straight t
;;   :after counsel
;;   :config
;;   (ivy-prescient-mode 1))
(straight-use-package 'prescient)
(straight-use-package 'ivy-prescient)

(straight-use-package 'company-mode)
(require 'counsel)
(require 'projectile)
(require 'ivy-prescient)
(projectile-mode)
(counsel-projectile-mode)
(counsel-mode) ;; to enable nicer M-x etc
(ivy-mode) ;; ensures that any Emacs command using completing-read-function uses ivy for completion
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
(global-set-key (kbd "C-x b") 'counsel-switch-buffer)
(global-set-key (kbd "C-c f r") 'counsel-recentf)
(global-set-key (kbd "C-c s i") 'counsel-imenu)

(setq recentf-max-menu-items 50)
(setq recentf-max-saved-items 50)
