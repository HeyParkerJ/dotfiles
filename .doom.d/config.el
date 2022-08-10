;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "Parker Johnson"
      user-mail-address "parkerjohnsonwebdev@gmail.com")

(setq yas-snippet-dirs '("~/.doom.d/snippets"))
(yas-global-mode 1)

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

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")

;; org roam config
;; (use-package org-roam
;;       :ensure t
;;       :hook
;;       (after-init . org-roam-mode)
;;       :custom
;;       (org-roam-directory "~/org")
;;       :bind (:map org-roam-mode-map
;;               (("C-c n l" . org-roam)
;;                ("C-c n f" . org-roam-find-file)
;;                ("C-c n g" . org-roam-graph))
;;               :map org-mode-map
;;               (("C-c n i" . org-roam-insert))
;;               (("C-c n I" . org-roam-insert-immediate))))


;; Show my favorite org agenda on startup
(add-hook 'after-init-hook (lambda () (org-agenda nil "n")))


  ;; System information
  (defun my/laptop-p ()
    (or
     ;; MacBook
     (equal (system-name) "Parkers-MBP")
     ;; TODO - this seems to be the generic linux box name? Add more detail or configure
     (equal (system-name) "localhost.localdomain")))
  (defun my/work-laptop-p ()
    (equal (system-name) "m-pjohnson"))

    (require 'org (org-babel-load-file (expand-file-name "~/dotfiles/emacs/org-mode.common.org")) )
  (when (my/laptop-p)
    (require 'org (org-babel-load-file (expand-file-name "~/dotfiles/emacs/org-mode.home.org")) ))
  (when (my/work-laptop-p)
    (require 'org (org-babel-load-file (expand-file-name "~/dotfiles/emacs/org-mode.work.org")) ))

(setq org-clock-sound "/System/Library/Sounds/Glass.aiff")
(setq doom-font-increment 1) ; Default is 2, let's make it more granular

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)

;; Backups. C-x C-f (find-file) should help sort through these if needed.
;; Should investigate if Spacemacs handles this already at all.
(setq backup-directory-alist '(("." . "~/.emacs.d/backups")))

;; "Disk space is cheap. Save lots" - Sacha Chua
(setq delete-old-versions -1)
(setq version-control t)
(setq vc-make-backup-files t)
(setq auto-save-file-name-transforms '((".*" "~/.emacs.d/auto-save-list/" t)))

;; magit setup

(map! :map
      magit-file-section-map
      :n (kbd "RET") 'magit-diff-visit-file-other-window)
(map! :map
      magit-hunk-section-map
      :n (kbd "RET") 'magit-diff-visit-file-other-window)

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

;; Time and date
(setq display-time-day-and-date t)
(setq display-time-mode t)

;; Auto-refresh dired on file change
;; https://www.reddit.com/r/emacs/comments/1acg6q/how_to_configure_dired_to_update_instantly_when/
(add-hook 'dired-mode-hook 'auto-revert-mode)

(use-package! highlight-indent-guides
  :hook (prog-mode . highlight-indent-guides-mode)
  :config (setq highlight-indent-guides-method 'character)
  )


;; Too lazy to type 'no'
(fset 'yes-or-no-p 'y-or-n-p)

(add-to-list 'auto-mode-alist '("components\\/.*\\.js\\'" . rjsx-mode))

;; This keeps projectile from storing all buffers in a workspace when switching projects
(setq +workspaces-on-switch-project-behavior nil)

;; once you have selected your project, the top-level directory of the project is immediately opened for you in a dired buffer.
(setq projectile-switch-project-action #'projectile-dired)

;; KEYBINDINGS
;; Going to comment this because I want to try workspaces. Go back to using SPC b b for switch-to-buffer
;; (map! :leader
;;       "TAB" #'switch-to-buffer)

(map! "s-}" #'next-buffer
      "s-{" #'previous-buffer)

(setq evil-escape-key-sequence "fd")

;; Make flycheck errors much better
(set-popup-rule! "^\\*Flycheck errors\\*$" :side 'bottom :size 0.4 :select t)

;; Needed to add javascript-eslint to the the next-checker after lsp so that it would actually load, as that wasn't happening by deafult
;; also needed to runit after the lsp-afer-initalize-hook because otherwise 'lsp wasn't a valid checker
(add-hook 'lsp-after-initialize-hook (lambda
                                      ()
                                      (flycheck-add-next-checker 'lsp 'javascript-eslint)))
;;                                      https://github.com/hlissner/doom-emacs/issues/1530
;; Potential alternative to the above
;; (after! (:and lsp-mode flycheck)
;; (flycheck-add-next-checker 'lsp 'javascript-eslint))

;; lsp performance settings
(setq lsp-eslint-run "onSave")
(setq +format-with-lsp nil) ; We want something that will respect our prettierrc to do this instead. Also I don't know how to configure this yet.
(setq lsp-eslint-format nil)
(setq lsp-enable-file-watchers nil)

;; Recommendations from https://ianyepan.github.io/posts/emacs-ide/
;; (setq lsp-auto-guess-root t)
 (setq lsp-log-io nil)
;; (setq lsp-restart 'auto-restart)
;; (setq lsp-enable-symbol-highlighting nil)
(setq lsp-enable-on-type-formatting nil)
(setq lsp-signature-auto-activate nil)
(setq lsp-signature-render-documentation nil)
(setq lsp-eldoc-hook nil)
(setq lsp-modeline-code-actions-enable nil)
(setq lsp-modeline-diagnostics-enable nil)
(setq lsp-headerline-breadcrumb-enable nil)
(setq lsp-semantic-tokens-enable nil)
(setq lsp-enable-folding nil)
(setq lsp-enable-imenu nil)
(setq lsp-enable-snippet nil)
 (setq read-process-output-max (* 1024 1024)) ;; 1MB
 (setq lsp-idle-delay 0.35)

;; There was an issue where meta key wasn't working - this fixes that
;; macOS reports rebound modifiers on external keyboards as "right" modifiers, even if you're using left modifiers
;; Doom binds ns-right-option-modifier or mac-right-option-modifier (depending on emacs distro) to 'none
;; So this fixes that weird macOS functionality
;; https://github.com/hlissner/doom-emacs/issues/3952
(cond (IS-MAC
       (setq mac-right-option-modifier 'meta)))

;; golang
;; my exec-path and $PATH weren't in sync for some reason - I added a path reexport to both .zshrc and .bashrc but no luck
(add-to-list 'exec-path "~/go/bin")

;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c g k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c g d') to jump to their definition and see how
;; they are implemented.
