 ;; add (load "~/.config/emacs/config.el") to init.el to load this file
(setq comp-deferred-compilation t) ;; to enable JIT compilation (gccemacs)
(load "~/.config/emacs/straight.el")
(setq tab-width 4)
(show-paren-mode)

;; (setq exec-path (append
;;   exec-path
;;   (split-string (shell-command-to-string "find ~/.nvm/versions -maxdepth 3 -name bin -type d | sort | head --bytes -1") "\n")
;;   ))

(straight-use-package 'sudo-edit)

(load "~/.emacs.d/no-beeping.el")
(load "~/.emacs.d/server.el")
(load "~/.emacs.d/modes.el")
(load "~/.emacs.d/keys.el")
(load "~/.emacs.d/backups.el")
(load "~/.emacs.d/undo-tree.el")
(load "~/.emacs.d/autocomplete.el")
(load "~/.emacs.d/company-oldschool-nav.el")
(load "~/.emacs.d/auto-formatting.el")
(load "~/.emacs.d/bookmarks.el")
(load "~/.emacs.d/magit.el")
(load "~/.emacs.d/syntax-highlighting.el")
(load "~/.emacs.d/webdev-basic.el")
(load "~/.emacs.d/webdev-medium.lsp.el")
(load "~/.emacs.d/snippets.el")
(load "~/.emacs.d/org.el")

(load "~/.emacs.d/qml.el")
(load "~/.emacs.d/multiple-cursors.el")
(load "~/.emacs.d/dired-open.el")
(load "~/.emacs.d/keybindings.el")


