;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "Parker Johnson"
      user-mail-address "parkerjohnsonwebdev@gmail.com")

  ;; System information
  (defun my/laptop-p ()
    (or
     ;; MacBook
     (equal (system-name) "Parkers-Macbook-Pro.local")
     ;; TODO - this seems to be the generic linux box name? Add more detail or configure
     (equal (system-name) "localhost.localdomain")))
  (defun my/work-laptop-p ()
    (equal (system-name) "m-pjohnson2"))

;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;;
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
;; (setq doom-font (font-spec :family "monospace" :size 12 :weight 'semi-light)
;;       doom-variable-pitch-font (font-spec :family "sans" :size 13))

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:

;; (setq doom-theme 'nimbus)
;; (setq doom-theme 'modus-vivendi)
;; (setq doom-theme 'doom-material)
(setq doom-theme 'kanagawa)

(setq doom-font (font-spec :family "Hack" :size 14 :weight 'regular)
      doom-variable-pitch-font (font-spec :family "Hack" :size 13)
      doom-unicode-font (font-spec :family "Hack")
      doom-big-font (font-spec :family "Hack" :size 24))

(setq doom-font-increment 1) ; Default is 2, let's make it more granular

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)

(use-package! highlight-indent-guides
  :hook (prog-mode . highlight-indent-guides-mode)
  :config (setq highlight-indent-guides-method 'character))

;; Display time and date
(setq display-time-day-and-date t)
(setq display-time-mode t)

(map! :map
      magit-file-section-map
      :n (kbd "RET") 'magit-diff-visit-file-other-window)
(map! :map
      magit-hunk-section-map
      :n (kbd "RET") 'magit-diff-visit-file-other-window)

(map! :map smerge-mode-map
      :leader
  ("m = <"  #'smerge-diff-base-upper)
  ("m = ="  #'smerge-diff-upper-lower)
  ("m = >"  #'smerge-diff-base-lower)
  ("m C"    #'smerge-combine-with-next)
  ("m E"    #'smerge-ediff)
  ("m R"    #'smerge-refine)
  ("m RET"  #'smerge-keep-current)
  ("m a"    #'smerge-keep-all)
  ("m b"    #'smerge-keep-base)
  ("m j"    #'smerge-keep-lower)
  ("m k"    #'smerge-keep-upper)
  ("m n"    #'smerge-next)
  ("m p"    #'smerge-prev)
  ("m r"    #'smerge-resolve))

;; dired-sidebar
(use-package! dired-sidebar
  :config
  (setq dired-sidebar-subtree-line-prefix "__")
  (setq dired-sidebar-theme 'vscode)
  (setq dired-sidebar-use-term-integration t)
  (setq dired-sidebar-use-custom-font t)
  (setq dired-listing-switches "-alh")   ; human readable format when in detail
  (setq dired-kill-when-opening-new-dired-buffer t) ; kill when changing dir
  )
(map!
 :map dired-mode-map
 :n "h" 'dired-up-directory
 :leader
 ("o p" #'dired-sidebar-toggle-sidebar))

;; Auto-refresh dired on file change
;; https://www.reddit.com/r/emacs/comments/1acg6q/how_to_configure_dired_to_update_instantly_when/
(add-hook 'dired-mode-hook 'auto-revert-mode)

;; This keeps projectile from storing all buffers in a workspace when switching projects
(setq +workspaces-on-switch-project-behavior nil)

;; once you have selected your project, the top-level directory of the project is immediately opened for you in a dired buffer.
(setq projectile-switch-project-action #'projectile-dired)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")

(setq org-clock-sound "/System/Library/Sounds/Glass.aiff")

(add-hook 'auto-save-hook 'org-save-all-org-buffers)

;; This changes the start date to the correct day, as previously it was behind about 3 days
;; A caveat is that old, scheduled items will indeed begin showing up in my agendas
(setq org-agenda-start-day nil)
;; Hide tasks that are scheduled in the future.
(setq org-agenda-todo-ignore-scheduled 'future)
;; Use "second" instead of "day" for time comparison.
;; It hides tasks with a scheduled time like "<2020-11-15 Sun 11:30>"
(setq org-agenda-todo-ignore-time-comparison-use-seconds t)
;; Hide the deadline prewarning prior to scheduled date.
(setq org-agenda-skip-deadline-prewarning-if-scheduled 'pre-scheduled)

(setq org-agenda-custom-commands
      '(
        ("n" "Agenda / INTR / PROG / NEXT"
         ((agenda "" nil)
          (todo "INTR" nil)
          (todo "PROG" nil)
          (todo "NEXT" nil)
          (todo "WAITING" nil)
          (todo "PROJECTS"
                  ((org-agenda-skip-function
                    '(org-agenda-skip-entry-if 'todo '("WAITING")))
          ))
         ((org-agenda-span 'day))
         )
        ("m" "Everything"
         ((agenda "" nil)
          (todo "GOAL" nil)
          (todo "PROJECT" nil)
          (todo "INTR" nil)
          (todo "PROG" nil)
          (todo "NEXT" nil)
          (todo "WAITING" nil)
          )
         ((org-agenda-span 'day))
         )
        )
      )

;; Add a timestamp when task is set to 'done'
(setq org-log-done 'time)

(setq org-agenda-window-setup 'current-window)

(add-hook 'text-mode-hook 'turn-on-visual-line-mode)

(setq org-ellipsis "↴")

;; TODO keywords.
(setq org-todo-keywords
      '((sequence "TODO(t)" "NEXT(n)" "PROG(p)" "INTR(i)" "GOAL(g)" "PROJECT(r)" "WAITING(w@)" "|" "DONE(d)" "CANCELLED(c@)")))

;; Old config here
;; (setq org-todo-keywords
;; '((sequence "TODO(t)" "IN-PROGRESS(p!)" "WAITING(w@)" "|" "DONE(d!)" "CANCELLED(c@)")))

;; Needed to add javascript-eslint to the the next-checker after lsp so that it would actually load, as that wasn't happening by deafult
;; also needed to runit after the lsp-afer-initalize-hook because otherwise 'lsp wasn't a valid checker
(add-hook 'lsp-after-initialize-hook (lambda
                                      ()
                                      (flycheck-add-next-checker 'lsp 'javascript-eslint)))
;;                                      https://github.com/hlissner/doom-emacs/issues/1530
;; Potential alternative to the above
;; (after! (:and lsp-mode flycheck)
;; (flycheck-add-next-checker 'lsp 'javascript-eslint))

;; https://emacs-lsp.github.io/lsp-mode/page/lsp-typescript/#available-configurations
;; lsp performance settings
(setq lsp-eslint-run "onSave")
(setq +format-with-lsp nil) ; We want something that will respect our prettierrc to do this instead. Also I don't know how to configure this yet.
(setq lsp-eslint-format nil)
(setq lsp-enable-file-watchers nil)

;; Recommendations from https://ianyepan.github.io/posts/emacs-ide/
;; (setq lsp-auto-guess-root t)
 (setq lsp-log-io nil)
;; (setq lsp-restart 'auto-restart)
(setq lsp-enable-symbol-highlighting t)
(setq lsp-enable-on-type-formatting nil)
;; (setq lsp-signature-auto-activate nil)
;; (setq lsp-signature-render-documentation nil)
;; (setq lsp-eldoc-hook nil)
(setq lsp-modeline-code-actions-enable t)
(setq lsp-modeline-diagnostics-enable nil)
(setq lsp-headerline-breadcrumb-enable nil)
;; (setq lsp-semantic-tokens-enable nil)
(setq lsp-enable-folding nil)
(setq lsp-enable-imenu t)
(setq lsp-enable-snippet nil)
(setq read-process-output-max (* 1024 1024)) ;; 1MB
(setq lsp-idle-delay 0.25)

(setq evil-escape-key-sequence "fd")

;; Show my favorite org agenda on startup
(add-hook 'after-init-hook (lambda () (org-agenda nil "n")))

;; Too lazy to type 'no'
(fset 'yes-or-no-p 'y-or-n-p)

(setq delete-old-versions -1)
(setq version-control t)
(setq vc-make-backup-files t)
(setq auto-save-file-name-transforms '((".*" "~/.emacs.d/auto-save-list/" t)))

(setq backup-directory-alist '(("." . "~/.emacs.d/backups")))

;; Make flycheck errors much better
(set-popup-rule! "^\\*Flycheck errors\\*$" :side 'bottom :size 0.4 :select t)

;; Going to comment this because I want to try workspaces. Go back to using SPC b b for switch-to-buffer
;; (map! :leader
;;       "TAB" #'switch-to-buffer)

(map! "s-}" #'next-buffer
      "s-{" #'previous-buffer)

(setq yas-snippet-dirs '("~/.doom.d/snippets"))
(yas-global-mode 1)

(cond (IS-MAC
       (setq mac-right-option-modifier 'meta)))
