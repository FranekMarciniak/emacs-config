(global-set-key (kbd "M-c") 'org-capture)
(add-hook 'org-agenda-mode-hook 'hl-line-mode)
(require 'imenu) ;; to avoid this bug: https://debbugs.gnu.org/cgi/bugreport.cgi?bug=61685
(require 'org)

(defun inbox-timer ()
  "Start a timer for n minutes, where n is the amount of lines in a given buffer"
  (interactive)
  (org-timer-start (* 60 (count-lines (point-min) (point-max))))
)


(global-set-key (kbd "C-c n a") 'org-agenda)

(setq org-capture-templates
   '(("t" "TODO item" entry
	  (file my-org-inbox)
	  "* TODO %?
%U")
	 ("T" "task with link" entry
	  (file my-org-inbox)
	  "* TODO %? (link)
%a
%U")
	 ("j" "Journal entry" entry
	  (file+olp+datetree "~/org/journal.org")
	  "**** %<%H:%M> 
%?
")
))

(setq calendar-week-start-day 1)


(add-hook 'focus-out-hook
          (lambda () (org-save-all-org-buffers)))


(setq org-confirm-babel-evaluate nil)
(org-babel-do-load-languages
'org-babel-load-languages
'((python . t) (js . t) (shell . t)))
