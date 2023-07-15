(straight-use-package 'undo-fu)
(straight-use-package 'undo-tree)
(global-undo-tree-mode)

(setq undo-tree-history-directory-alist '((".*" . "~/.emacs.d/undo-history/")))
(setq undo-tree-visualizer-timestamps t)
(setq undo-limit 67108864) ; 64mb.
(setq undo-strong-limit 100663296) ; 96mb.
(setq undo-outer-limit 1006632960) ; 960mb.
