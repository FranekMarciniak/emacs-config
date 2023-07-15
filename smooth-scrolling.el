(pixel-scroll-precision-mode 1)
(setq pixel-scroll-precision-large-scroll-height 20)
(setq pixel-scroll-precision-interpolate-page 1)

(global-set-key (kbd "C-v") 'pixel-scroll-interpolate-down)
(global-set-key (kbd "M-v") 'pixel-scroll-interpolate-up)
