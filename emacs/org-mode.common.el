(add-hook 'auto-save-hook 'org-save-all-org-buffers)

;;(org-agenda-list)
;;(switch-to-buffer "*Org Agenda*")
;;(spacemacs/toggle-maximize-buffer)

(setq org-agenda-custom-commands
   '(("n" "Agenda, goals, all TODO"
     ;; One block with a standard agenda view
       ((agenda "")
        ;; One block of All tasks tagged :goal:
        (tags-todo "goal")
        ;; One block of ALL tasks that are TODOs
        (alltodo ""))
       )))

(setq org-agenda-window-setup 'current-window)

(add-hook 'text-mode-hook 'turn-on-visual-line-mode)

(setq org-ellipsis "↴")

(setq org-todo-keywords
      '((sequence "TODO(t)" "PRIORITY(P)" "IN-PROGRESS(p!)" "WAITING(w@)" "|" "DONE(d!)" "CANCELLED(c@)")))