(setq org-capture-templates '(("t" "Todo [inbox]" entry
                               (file+headline "~/org/inbox.org" "Tasks")
                                 "* TODO %i%?")
                                 ))

(setq org-agenda-files
      '("~/org/work.org" "~/org/inbox.org"))
