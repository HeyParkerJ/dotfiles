;;; package: --- A theme inspired by the colors of the famous painting by Katsushika Hokusa

;;; Commentary: Original theme created by rebelot see: https://github.com/rebelot/kanagawa.nvim
;;; Code:

(eval-when-compile
  (require 'cl-lib))

(require 'autothemer)

(unless (>= emacs-major-version 24)
  (error "Requires Emacs 24 or later"))


(autothemer-deftheme
	kanagawa "A theme inspired by the colors of the famous painting by Katsushika Hokusa"

 ((((class color) (min-colors #xFFFFFF))        ; col 1 GUI/24bit
   ((class color) (min-colors #xFF)))           ; col 2 Xterm/256

  ;; Define our color palette
  (fujiWhite		"#DCD7BA" "#ffffff")
  (old-white		"#C8C093" "#ffffff")

  (sumiInk-0		"#16161D" "#000000")
  (sumiInk-1b		"#181820" "#000000")
  (sumiInk-1		"#1F1F28" "#080808")
  (sumiInk-2		"#2A2A37" "#121212")
  (sumiInk-3		"#363646" "#303030")
  (sumiInk-4		"#54546D" "#303030")

  (waveBlue-1		"#223249" "#4e4e4e")
  (waveBlue-2		"#2D4F67" "#585858")
  (waveAqua1		"#6A9589" "#6a9589")
  (waveAqua2		"#7AA89F" "#717C7C")

  (winterGreen		"#2B3328" "#585858")
  (winterYellow		"#49443C" "#585858")
  (winterRed		"#43242B" "#585858")
  (winterBlue		"#252535" "#585858")

  (autumnGreen		"#76946A" "#585858")
  (autumnRed		"#C34043" "#585858")
  (autumnYellow		"#DCA561" "#585858")

  (samuraiRed		"#E82424" "#585858")
  (roninYellow		"#FF9E3B" "#585858")

  (dragonBlue		"#658594" "#658594")
  (fujiGray         "#727169" "#717C7C")
  (springViolet1	"#938AA9" "#717C7C")
  (oniViolet		"#957FB8" "#717C7C")
  (crystalBlue		"#7E9CD8" "#717C7C")
  (springViolet2	"#9CABCA" "#717C7C")
  (springBlue		"#7FB4CA" "#717C7C")
  (lightBlue		"#A3D4D5" "#717C7C")
  (springGreen		"#98BB6C" "#717C7C")
  (boatYellow1		"#938056" "#717C7C")
  (boatYellow2		"#C0A36E" "#717C7C")
  (carpYellow		"#E6C384" "#717C7C")
  (sakuraPink		"#D27E99" "#717C7C")
  (waveRed          "#E46876" "#717C7C")
  (peachRed         "#FF5D62" "#717C7C")
  (surimiOrange		"#FFA066" "#717C7C")
  (katanaGray		"#717C7C" "#717C7C")
  (comet            "#54536D" "#4e4e4e"))

  ;; Customize faces
  (
  (border                                        (:background sumiInk-1b :foreground sumiInk-0))
  (button                                        (:foreground waveAqua2))
  (child-frame                                   (:background sumiInk-0 :foreground sumiInk-0))
  (child-frame-border                            (:background sumiInk-0 :foreground sumiInk-0))
  (cursor                                        (:background lightBlue :foreground sumiInk-0 :bold t))
  (default                                       (:background sumiInk-1b :foreground fujiWhite))
  (error                                         (:foreground samuraiRed))
  (fringe                                        (:foreground sumiInk-3))
  (glyph-face                                    (:background sumiInk-4))
  (glyphless-char                                (:foreground sumiInk-4))
  (header-line                                   (:background sumiInk-0))
  (highlight                                     (:background comet :foreground springViolet1))
  (hl-line                                       (:background sumiInk-2))
  (homoglyph                                     (:foreground lightBlue))
  (internal-border                               (:background sumiInk-1b))
  (line-number                                   (:foreground sumiInk-4))
  (line-number-current-line                      (:foreground springViolet2 :background sumiInk-2 :bold t))
  (lv-separator                                  (:foreground waveBlue-2 :background sumiInk-2))
  (match                                         (:background carpYellow :foreground sumiInk-0))
  (menu                                          (:background sumiInk-0 :foreground fujiWhite))
  (mode-line                                     (:background sumiInk-0))
  (mode-line-inactive                            (:background nil :foreground sumiInk-4 :bold nil))
  (mode-line-active                              (:background sumiInk-0 :foreground old-white :bold nil))
  (mode-line-highlight                           (:foreground boatYellow2))
  (mode-line-buffer-id                           (:foreground waveAqua2 :bold t))
  (numbers                                       (:background sakuraPink))
  (region                                        (:background waveBlue-2))
  (separator-line                                (:background sumiInk-0))
  (shadow                                        (:background sumiInk-0))
  (success                                       (:foreground waveAqua2))
  (vertical-border                               (:foreground sumiInk-4))
  (warning                                       (:foreground roninYellow))
  (window-border                                 (:background sumiInk-1b))
  (window-divider                                (:foreground sumiInk-2))
  (hi-yellow                                     (:background carpYellow :foreground sumiInk-1b))

  ;; Font lock
  (font-lock-type-face                           (:foreground waveAqua2))
  (font-lock-regexp-grouping-backslash           (:foreground boatYellow2))
  (font-lock-keyword-face                        (:foreground oniViolet :weight 'semi-bold))
  (font-lock-warning-face                        (:foreground roninYellow))
  (font-lock-string-face                         (:foreground springGreen :italic t))
  (font-lock-builtin-face                        (:foreground springBlue))
  (font-lock-reference-face                      (:foreground peachRed))
  (font-lock-constant-face                       (:foreground carpYellow))
  (font-lock-function-name-face                  (:foreground crystalBlue))
  (font-lock-variable-name-face                  (:foreground waveRed))
  (font-lock-negation-char-face                  (:foreground peachRed))
  (font-lock-comment-face                        (:foreground fujiGray :italic t))
  (font-lock-comment-delimiter-face              (:foreground fujiGray :italic t))
  (font-lock-doc-face                            (:foreground comet))
  (font-lock-doc-markup-face                     (:foreground comet))
  (font-lock-preprocessor-face	                 (:foreground boatYellow2))
  (elisp-shorthand-font-lock-face                (:foreground fujiWhite))

  (info-xref                                     (:foreground carpYellow))
  (minibuffer-prompt-end                         (:foreground autumnRed :background winterRed))
  (minibuffer-prompt                             (:foreground carpYellow :background winterYellow))
  (epa-mark                                      (:foreground waveRed))
  (dired-mark                                    (:foreground waveRed))
  (trailing-whitespace                           (:background comet))
  (mode-line                                     (:background sumiInk-0 :foreground fujiWhite :bold t))

  ;; Battery colors
  (doom-modeline-battery-critical                (:foreground peachRed))
  (doom-modeline-battery-warning                 (:foreground springGreen))
  (doom-modeline-battery-charging                (:foreground fujiGray))
  (doom-modeline-battery-error                   (:foreground peachRed))
  (doom-modeline-battery-normal                  (:foreground springViolet1))
  (doom-modeline-battery-full                    (:foreground waveAqua2))

  ;; Doom visual state
  (doom-modeline-evil-motion-state               (:foreground lightBlue))
  (doom-modeline-evil-emacs-state                (:foreground crystalBlue))
  (doom-modeline-evil-insert-state               (:foreground peachRed))
  (doom-modeline-evil-normal-state               (:foreground lightBlue))
  (doom-modeline-evil-visual-state               (:foreground springGreen))
  (doom-modeline-evil-replace-state              (:foreground roninYellow))
  (doom-modeline-evil-operator-state             (:foreground crystalBlue))

  (doom-modeline-project-dir                     (:bold t :foreground waveAqua2))
  (doom-modeline-buffer-path                     (:inherit 'bold :foreground waveAqua2))
  (doom-modeline-buffer-file                     (:inherit 'bold :foreground oniViolet))
  (doom-modeline-buffer-modified                 (:inherit 'bold :foreground carpYellow))
  (doom-modeline-error                           (:background peachRed))
  (doom-modeline-buffer-major-mode               (:foreground waveAqua2 :bold t))
  (doom-modeline-info                            (:bold t :foreground lightBlue))
  (doom-modeline-project-dir                     (:bold t :foreground surimiOrange))
  (doom-modeline-bar                             (:bold t :background springViolet1))
  (doom-modeline-panel                           (:inherit 'bold :background boatYellow2 :foreground sumiInk-2))
  (doom-themes-visual-bell                       (:background autumnRed))

  ;; elfeed
  (elfeed-search-feed-face                       (:foreground springViolet1))
  (elfeed-search-tag-face                        (:foreground waveAqua2))

  ;; message colors
  (message-header-name                           (:foreground sumiInk-4))
  (message-header-other                          (:foreground surimiOrange))
  (message-header-subject                        (:foreground carpYellow))
  (message-header-to                             (:foreground old-white))
  (message-header-cc                             (:foreground waveAqua2))
  (message-header-xheader                        (:foreground old-white))
  (custom-link                                   (:foreground crystalBlue))
  (link                                          (:foreground crystalBlue))

  ;; org-mode
  (org-done                                      (:foreground dragonBlue))
  (org-code                                      (:background sumiInk-0))
  (org-meta-line                                 (:background winterGreen :foreground springGreen))
  (org-block                                     (:background sumiInk-0 :foreground sumiInk-4))
  (org-block-begin-line                          (:background winterBlue :foreground springBlue))
  (org-block-end-line	                         (:background winterRed :foreground peachRed))
  (org-headline-done                             (:foreground dragonBlue :strike-through t))
  (org-todo                                      (:foreground surimiOrange :bold t))
  (org-headline-todo                             (:foreground sumiInk-2))
  (org-upcoming-deadline                         (:foreground peachRed))
  (org-footnote                                  (:foreground waveAqua2))
  (org-indent                                    (:background sumiInk-1b :foreground sumiInk-1b))
  (org-hide                                      (:background sumiInk-1b :foreground sumiInk-1b))
  (org-date                                      (:foreground waveBlue-2))
  (org-ellipsis                                  (:foreground waveBlue-2 :bold t))
  (org-level-1                                   (:foreground peachRed :height 1.3 :bold t))
  (org-level-2                                   (:foreground springViolet2 :height 1.15 :bold t))
  (org-level-3                                   (:foreground boatYellow2 :height 1.05))
  (org-level-4                                   (:foreground fujiWhite))
  (org-level-5                                   (:foreground fujiWhite))
  (org-level-6                                   (:foreground carpYellow))
  (org-level-7                                   (:foreground surimiOrange))
  (org-level-8                                   (:foreground springGreen))

  ;; which-key
  (which-key-key-face                            (:inherit 'font-lock-variable-name-face))
  (which-func                                    (:inherit 'font-lock-function-name-face :bold t))
  (which-key-group-description-face              (:foreground waveRed))
  (which-key-command-description-face            (:foreground crystalBlue))
  (which-key-local-map-description-face          (:foreground carpYellow))
  (which-key-posframe                            (:background waveBlue-1))
  (which-key-posframe-border	                 (:background waveBlue-1))

  ;; swiper
  (swiper-line-face                              (:foreground carpYellow))
  (swiper-background-match-face-1                (:background surimiOrange :foreground sumiInk-0))
  (swiper-background-match-face-2                (:background crystalBlue :foreground sumiInk-0))
  (swiper-background-match-face-3                (:background boatYellow2 :foreground sumiInk-0))
  (swiper-background-match-face-4                (:background peachRed :foreground sumiInk-0))
  (swiper-match-face-1                           (:inherit 'swiper-background-match-face-1))
  (swiper-match-face-2                           (:inherit 'swiper-background-match-face-2))
  (swiper-match-face-3                           (:inherit 'swiper-background-match-face-3))
  (swiper-match-face-4                           (:inherit 'swiper-background-match-face-4))

  (counsel-outline-default                       (:foreground carpYellow))
  (info-header-xref                              (:foreground carpYellow))
  (xref-file-header                              (:foreground carpYellow))
  (xref-match                                    (:foreground carpYellow))

  ;; rainbow delimiters
  (rainbow-delimiters-mismatched-face            (:foreground peachRed))
  (rainbow-delimiters-unmatched-face             (:foreground waveAqua2))
  (rainbow-delimiters-base-error-face            (:foreground peachRed))
  (rainbow-delimiters-base-face                  (:foreground sumiInk-4))

  (rainbow-delimiters-depth-1-face               (:foreground springViolet2))
  (rainbow-delimiters-depth-2-face               (:foreground dragonBlue))
  (rainbow-delimiters-depth-3-face               (:foreground springViolet1))
  (rainbow-delimiters-depth-4-face               (:foreground springGreen))
  (rainbow-delimiters-depth-5-face               (:foreground waveAqua2))
  (rainbow-delimiters-depth-6-face               (:foreground carpYellow))
  (rainbow-delimiters-depth-7-face               (:foreground waveRed))
  (rainbow-delimiters-depth-8-face               (:foreground lightBlue))
  (rainbow-delimiters-depth-9-face               (:foreground springViolet2))

  ;; show-paren
  (show-paren-match                              (:background waveAqua1 :foreground sumiInk-0 :bold t))
  (show-paren-match-expression	                 (:background waveAqua1 :foreground sumiInk-0 :bold t))
  (show-paren-mismatch                           (:background peachRed :foreground old-white))
  (tooltip                                       (:foreground sumiInk-0 :background carpYellow :bold t))

  ;; company-box
  (company-tooltip                               (:background sumiInk-2))
  (company-tooltip-common                        (:foreground autumnYellow))
  (company-tooltip-quick-access                  (:foreground springViolet2))
  (company-tooltip-scrollbar-thumb               (:background autumnRed))
  (company-tooltip-scrollbar-track               (:background sumiInk-2))
  (company-tooltip-search                        (:background carpYellow :foreground sumiInk-0 :distant-foreground fujiWhite))
  (company-tooltip-selection                     (:background peachRed :foreground winterRed :bold t))
  (company-tooltip-mouse                         (:background sumiInk-2 :foreground sumiInk-0 :distant-foreground fujiWhite))
  (company-tooltip-annotation                    (:foreground peachRed :distant-foreground sumiInk-1))
  (company-scrollbar-bg                          (:inherit 'tooltip))
  (company-scrollbar-fg                          (:background peachRed))
  (company-preview                               (:foreground carpYellow))
  (company-preview-common                        (:foreground peachRed :bold t))
  (company-preview-search                        (:inherit 'company-tooltip-search))
  (company-template-field                        (:inherit 'match))

  ;; flycheck
  (flycheck-posframe-background-face             (:background sumiInk-0))
  (flycheck-posframe-face                        (:background sumiInk-0))
  (flycheck-posframe-info-face                   (:background sumiInk-0 :foreground autumnGreen))
  (flycheck-posframe-warning-face                (:background sumiInk-0 :foreground lightBlue))
  (flycheck-posframe-error-face                  (:background sumiInk-0 :foreground samuraiRed))
  (flycheck-fringe-warning                       (:foreground lightBlue))
  (flycheck-fringe-error                         (:foreground samuraiRed))
  (flycheck-fringe-info                          (:foreground autumnGreen))
  (flycheck-error-list-warning                   (:foreground roninYellow :bold t))
  (flycheck-error-list-error                     (:foreground samuraiRed :bold t))
  (flycheck-error-list-info                      (:foreground waveAqua1 :bold t))
  (flycheck-inline-error                         (:foreground samuraiRed :background winterRed :italic t :bold t :height 138))
  (flycheck-inline-info                          (:foreground lightBlue :background winterBlue :italic t  :bold t :height 138))
  (flycheck-inline-warning                       (:foreground winterYellow :background carpYellow :italic t :bold t :height 138))

  ;; indent dots
  (highlight-indent-guides-character-face        (:foreground sumiInk-3))
  (highlight-indent-guides-stack-character-face  (:foreground sumiInk-3))
  (highlight-indent-guides-stack-odd-face        (:foreground sumiInk-3))
  (highlight-indent-guides-stack-even-face       (:foreground comet))
  (highlight-indent-guides-stack-character-face  (:foreground sumiInk-3))
  (highlight-indent-guides-even-face             (:foreground sumiInk-2))
  (highlight-indent-guides-odd-face              (:foreground comet))

  (highlight-operators-face                      (:foreground boatYellow2))
  (highlight-quoted-symbol                       (:foreground springGreen))
  (highlight-numbers-face                        (:foreground sakuraPink))
  (highlight-symbol-face                         (:background waveBlue-1 :foreground lightBlue))

  ;; ivy
  (ivy-current-match                             (:background crystalBlue :foreground sumiInk-0 :bold t))
  (ivy-action                                    (:background nil :foreground fujiWhite))
  (ivy-grep-line-number                          (:background nil :foreground springGreen))
  (ivy-minibuffer-match-face-1                   (:background nil :foreground waveRed))
  (ivy-minibuffer-match-face-2                   (:background nil :foreground springGreen))
  (ivy-minibuffer-match-highlight                (:foreground lightBlue))
  (ivy-grep-info                                 (:foreground lightBlue))
  (ivy-grep-line-number                          (:foreground springViolet2))
  (ivy-confirm-face                              (:foreground waveAqua2))

  ;; posframe's
  (ivy-posframe                                  (:background peachRed :foreground peachRed))
  (ivy-posframe-border                           (:background peachRed :foreground peachRed))

  ;;treemacs
  (treemacs-directory-collapsed-face             (:foreground fujiWhite))
  (treemacs-directory-face                       (:foreground fujiWhite))
  (treemacs-file-face                            (:foreground fujiWhite))

  (treemacs-git-added-face                       (:foreground surimiOrange))
  (treemacs-git-renamed-face                     (:foreground fujiWhite))
  (treemacs-git-ignored-face                     (:foreground sumiInk-4))
  (treemacs-git-unmodified-face                  (:foreground fujiWhite))
  (treemacs-git-renamed-face                     (:foreground fujiWhite))
  (treemacs-git-modified-face                    (:foreground springGreen))

  ;; lsp and lsp-ui
  (lsp-headerline-breadcrumb-path-error-face     (:underline (:color springGreen :style 'wave) :foreground sumiInk-4 :background sumiInk-0))
  (lsp-headerline-breadcrumb-path-face           (:background sumiInk-0))
  (lsp-headerline-breadcrumb-path-hint-face      (:background sumiInk-0))
  (lsp-headerline-breadcrumb-path-info-face      (:background sumiInk-0))
  (lsp-headerline-breadcrumb-separator-face      (:background sumiInk-0))
  (lsp-headerline-breadcrumb-symbols-face        (:background sumiInk-0))
  (lsp-headerline-breadcrumb-project-prefix-face (:background sumiInk-0))
  (lsp-headerline-breadcrumb-symbols-error-face  (:foreground peachRed))

  (lsp-ui-doc-background                         (:background sumiInk-0 :foreground peachRed))
  (lsp-ui-doc-header                             (:background sumiInk-0 :foreground peachRed))
  (lsp-ui-doc-border                             (:background nil :foreground nil))
  (lsp-ui-peek-filename                          (:foreground lightBlue))
  (lsp-ui-sideline-code-action                   (:foreground carpYellow))
  (lsp-ui-sideline-current-symbol                (:foreground springBlue))
  (lsp-ui-sideline-symbol                        (:foreground dragonBlue))

  ;; dashboard
  (dashboard-heading                             (:foreground springViolet2 :bold t))
  (dashboard-items-face                          (:bold nil :foreground fujiWhite))
  (dashboard-banner-logo-title                   (:bold t :height 200))
  (dashboard-no-items-face                       (:foreground sumiInk-4))

  ;; all-the-icons
  (all-the-icons-dgreen                          (:foreground waveAqua2))
  (all-the-icons-green                           (:foreground waveAqua2))
  (all-the-icons-dpurple                         (:foreground springViolet2))
  (all-the-icons-purple                          (:foreground springViolet2))

  ;; evil
  (evil-ex-lazy-highlight                        (:foreground winterGreen :background autumnGreen :bold t))
  (evil-ex-substitute-matches                    (:foreground winterRed :background autumnRed :bold t))
  (evil-ex-substitute-replacement                (:foreground surimiOrange :strike-through nil :inherit 'evil-ex-substitute-matches))
  (evil-search-highlight-persist-highlight-face  (:background carpYellow))

  ;; term
  (term                                          (:background sumiInk-0 :foreground fujiWhite))
  (term-color-blue                               (:background crystalBlue :foreground crystalBlue))
  (term-color-bright-blue                        (:inherit 'term-color-blue))
  (term-color-green                              (:background waveAqua2 :foreground waveAqua2))
  (term-color-bright-green                       (:inherit 'term-color-green))
  (term-color-black                              (:background sumiInk-0 :foreground fujiWhite))
  (term-color-bright-black                       (:background sumiInk-1b :foreground sumiInk-1b))
  (term-color-white                              (:background fujiWhite :foreground fujiWhite))
  (term-color-bright-white                       (:background old-white :foreground old-white))
  (term-color-red                                (:background peachRed :foreground peachRed))
  (term-color-bright-red                         (:background springGreen :foreground springGreen))
  (term-color-yellow                             (:background carpYellow :foreground carpYellow))
  (term-color-bright-yellow                      (:background carpYellow :foreground carpYellow))
  (term-color-cyan                               (:background springBlue :foreground springBlue))
  (term-color-bright-cyan                        (:background springBlue :foreground springBlue))
  (term-color-magenta                            (:background springViolet2 :foreground springViolet2))
  (term-color-bright-magenta                     (:background springViolet2 :foreground springViolet2))

  ;; popup
  (popup-face                                    (:inherit 'tooltip))
  (popup-selection-face                          (:inherit 'tooltip))
  (popup-tip-face                                (:inherit 'tooltip))

  ;; anzu
  (anzu-match-1                                  (:foreground waveAqua2 :background sumiInk-2))
  (anzu-match-2                                  (:foreground carpYellow :background sumiInk-2))
  (anzu-match-3                                  (:foreground lightBlue :background sumiInk-2))

  (anzu-mode-line                                (:foreground sumiInk-0 :background springViolet2))
  (anzu-mode-no-match	                         (:foreground fujiWhite :background peachRed))
  (anzu-replace-to                               (:foreground springBlue :background winterBlue))
  (anzu-replace-highlight                        (:foreground peachRed :background winterRed :strike-through t))

  ;; ace
  (ace-jump-face-background                      (:foreground waveBlue-2))
  (ace-jump-face-foreground                      (:foreground peachRed :background sumiInk-0 :bold t))

  ;; vertico
  (vertico-multiline                             (:background samuraiRed))
  (vertico-group-title                           (:background winterBlue :foreground lightBlue :bold t))
  (vertico-group-separator                       (:background winterBlue :foreground lightBlue :strike-through t))
  (vertico-current                               (:foreground carpYellow :bold t :italic t :background waveBlue-1))

  (vertico-posframe-border                       (:background sumiInk-3))
  (vertico-posframe                              (:background sumiInk-2))
  (orderless-match-face-0                        (:foreground crystalBlue :bold t))

  (comint-highlight-prompt                       (:background springViolet2 :foreground sumiInk-1))
  (completions-annotations                       (:background nil :foreground dragonBlue :italic t))

  ;; hydra
  (hydra-face-amaranth                           (:foreground autumnRed))
  (hydra-face-blue                               (:foreground springBlue))
  (hydra-face-pink                               (:foreground sakuraPink))
  (hydra-face-red                                (:foreground peachRed))
  (hydra-face-teal                               (:foreground lightBlue))

  ;; centaur-tabs
  (centaur-tabs-active-bar-face                  (:background springBlue :foreground fujiWhite))
  (centaur-tabs-selected                         (:background sumiInk-1b :foreground fujiWhite :bold t))
  (centaur-tabs-selected-modified                (:background sumiInk-1b :foreground fujiWhite))
  (centaur-tabs-modified-marker-selected         (:background sumiInk-1b :foreground autumnYellow))
  (centaur-tabs-close-selected                   (:inherit 'centaur-tabs-selected))
  (tab-line                                      (:background sumiInk-0))

  (centaur-tabs-unselected                       (:background sumiInk-0 :foreground sumiInk-4))
  (centaur-tabs-default                          (:background sumiInk-0 :foreground sumiInk-4))
  (centaur-tabs-unselected-modified              (:background sumiInk-0 :foreground peachRed))
  (centaur-tabs-modified-marker-unselected       (:background sumiInk-0 :foreground sumiInk-4))
  (centaur-tabs-close-unselected                 (:background sumiInk-0 :foreground sumiInk-4))

  (centaur-tabs-close-mouse-face                 (:background nil :foreground peachRed))
  (centaur-tabs-default                          (:background roninYellow ))
  (centaur-tabs-name-mouse-face                  (:foreground springBlue :bold t))

  (git-gutter:added                              (:foreground autumnGreen))
  (git-gutter:deleted                            (:foreground waveRed))
  (git-gutter:modified                           (:foreground springBlue))

  (diff-hl-margin-change                         (:foreground springBlue :background winterBlue))
  (diff-hl-margin-delete                         (:foreground peachRed :background winterRed))
  (diff-hl-margin-insert                         (:foreground comet :background winterBlue))

  (bm-fringe-face                                (:background peachRed :foreground sumiInk-3))
  (bm-fringe-persistent-face                     (:background peachRed :foreground sumiInk-3))

  (ansi-color-green                              (:foreground springGreen))
  (ansi-color-black                              (:background sumiInk-0))
  (ansi-color-cyan                               (:foreground waveAqua2))
  (ansi-color-magenta                            (:foreground sakuraPink))
  (ansi-color-blue                               (:foreground crystalBlue))
  (ansi-color-red                                (:foreground peachRed))
  (ansi-color-white                              (:foreground fujiWhite))
  (ansi-color-yellow                             (:foreground autumnYellow))
  (ansi-color-bright-white                       (:foreground old-white))
  (ansi-color-bright-white                       (:foreground old-white))

  (tree-sitter-hl-face:attribute                 (:foreground surimiOrange))
  (tree-sitter-hl-face:escape                    (:foreground waveRed))
  (tree-sitter-hl-face:constructor               (:foreground waveRed :weight 'semi-bold))

  (tree-sitter-hl-face:constant                  (:foreground surimiOrange))
  (tree-sitter-hl-face:constant.builtin          (:foreground carpYellow :weight 'semi-bold))

  (tree-sitter-hl-face:embedded                  (:foreground boatYellow2))

  (tree-sitter-hl-face:function                  (:foreground crystalBlue))
  (tree-sitter-hl-face:function.builtin          (:foreground peachRed :italic t :background winterRed))
  (tree-sitter-hl-face:function.call             (:foreground springViolet2))
  (tree-sitter-hl-face:function.macro            (:foreground samuraiRed))
  (tree-sitter-hl-face:function.special          (:foreground sakuraPink))
  (tree-sitter-hl-face:function.label            (:foreground surimiOrange))

  (tree-sitter-hl-face:method                    (:foreground lightBlue))
  (tree-sitter-hl-face:method.call               (:foreground lightBlue))

  (tree-sitter-hl-face:property                  (:foreground carpYellow))
  (tree-sitter-hl-face:property.definition       (:foreground old-white :italic t))

  (tree-sitter-hl-face:tag                       (:foreground peachRed))

  (tree-sitter-hl-face:type                      (:foreground waveAqua2 :weight 'semi-bold))
  (tree-sitter-hl-face:type.argument             (:foreground surimiOrange))
  (tree-sitter-hl-face:type.builtin              (:foreground autumnRed))
  (tree-sitter-hl-face:type.parameter            (:foreground surimiOrange))
  (tree-sitter-hl-face:type.super                (:foreground samuraiRed :bold t))

  (tree-sitter-hl-face:variable                  (:foreground springBlue :italic t))
  (tree-sitter-hl-face:variable.builtin          (:foreground waveRed))
  (tree-sitter-hl-face:variable.parameter        (:foreground springViolet2 :italic t))
  (tree-sitter-hl-face:variable.special          (:foreground surimiOrange))
  (tree-sitter-hl-face:variable.synthesized      (:foreground lightBlue))

  (tree-sitter-hl-face:number                    (:foreground sakuraPink))
  (tree-sitter-hl-face:operator                  (:foreground sakuraPink :bold t))

  (tree-sitter-hl-face:punctuation               (:foreground lightBlue))
  (tree-sitter-hl-face:punctuation.bracket       (:foreground springViolet2 :bold t))
  (tree-sitter-hl-face:punctuation.delimiter     (:foreground springViolet2 :bold t))
  (tree-sitter-hl-face:punctuation.special       (:foreground peachRed))

  (tree-sitter-hl-face:case-pattern              (:foreground waveRed))
  (tree-sitter-hl-face:variable.synthesized      (:foreground waveRed))
  (tree-sitter-hl-face:keyword.compiler          (:foreground peachRed :bold t :italic t))

  (focus-unfocused (:foreground sumiInk-4))


  ;; And then all the stuff I generated from autothemer-generate-templates
(anzu-mode-line-no-match
  (:inherit 'anzu-mode-line))
 (helpful-heading
  (:weight 'bold))
 (edebug-disabled-breakpoint
  (:extend t :background winterYellow))
 (edebug-enabled-breakpoint
  (:inherit 'highlight))
 (Info-quoted
  (:inherit 'fixed-pitch-serif))
 (info-index-match
  (:inherit 'match))
 (info-header-node
  (:inherit 'info-node))
 (info-xref-visited
  (:inherit
   ('link-visited 'info-xref)))
 (info-menu-star
  (:foreground samuraiRed))
 (info-menu-header
  (:weight 'bold :inherit 'variable-pitch))
 (info-title-4
  (:weight 'bold :inherit 'variable-pitch))
 (info-title-3
  (:height 1.2 :inherit 'info-title-4))
 (info-title-2
  (:height 1.2 :inherit 'info-title-3))
 (info-title-1
  (:height 1.2 :inherit 'info-title-2))
 (info-node
  (:weight 'bold :slant 'italic :foreground fujiWhite))
 (git-gutter-fr:deleted
  (:inherit
   ('git-gutter:deleted 'fringe)))
 (git-gutter-fr:added
  (:inherit
   ('git-gutter:added 'fringe)))
 (git-gutter-fr:modified
  (:inherit
   ('git-gutter:modified 'fringe)))
 (git-gutter:unchanged
  (:background roninYellow :inherit 'default))
 (git-gutter:separator
  (:weight 'bold :foreground lightBlue :inherit 'default))
 (whitespace-space-after-tab
  (:foreground samuraiRed :background roninYellow))
 (whitespace-empty
  (:foreground samuraiRed :background roninYellow))
 (whitespace-big-indent
  (:foreground samuraiRed :background samuraiRed))
 (whitespace-indentation
  (:foreground samuraiRed :background roninYellow))
 (whitespace-space-before-tab
  (:foreground samuraiRed :background roninYellow))
 (whitespace-line
  (:foreground sakuraPink :background winterGreen))
 (whitespace-trailing
  (:weight 'bold :foreground roninYellow :background samuraiRed))
 (whitespace-newline
  (:weight 'normal :foreground springViolet2))
 (whitespace-tab
  (:foreground springViolet2 :background sumiInk-3))
 (whitespace-hspace
  (:foreground springViolet2 :background winterYellow))
 (whitespace-space
  (:foreground springViolet2 :background winterGreen))
 (evil-embrace-section-title-face
  (:inherit 'font-lock-doc-face))
 (embrace-help-mark-func-face
  (:inherit 'font-lock-function-name-face))
 (embrace-help-pair-face
  (:inverse-video t :inherit 'font-lock-function-name-face))
 (embrace-help-separator-face
  (:inherit 'font-lock-comment-face))
 (embrace-help-key-face
  (:weight 'bold :inherit 'font-lock-constant-face))
 (eros-result-overlay-face
  (:box
   (:line-width -1 :color sumiInk-0)
   :background sumiInk-1b))
 (highlight-quoted-quote
  (:inherit 'font-lock-keyword-face))
 (highlight-numbers-number
  (:inherit 'font-lock-constant-face))
 (highlight-indent-guides-top-character-face
  (:foreground sumiInk-4))
 (highlight-indent-guides-top-even-face
  (:background sumiInk-4))
 (highlight-indent-guides-top-odd-face
  (:background comet))
 (so-long-mode-line-inactive
  (:inherit 'mode-line-inactive))
 (so-long-mode-line-active
  (:inherit 'mode-line-emphasis))
 (ffap
  (:inherit 'highlight))
 (sp-show-pair-match-content-face nil)
 (sp-show-pair-enclosing
  (:inherit 'highlight))
 (sp-show-pair-mismatch-face
  (:inherit 'show-paren-mismatch))
 (sp-show-pair-match-face
  (:inherit 'show-paren-match))
 (sp-wrap-tag-overlay-face
  (:inherit 'sp-pair-overlay-face))
 (sp-wrap-overlay-closing-pair
  (:foreground samuraiRed :inherit 'sp-wrap-overlay-face))
 (sp-wrap-overlay-opening-pair
  (:foreground sumiInk-0 :inherit 'sp-wrap-overlay-face))
 (sp-wrap-overlay-face
  (:inherit 'sp-pair-overlay-face))
 (sp-pair-overlay-face
  (:inherit 'highlight))
 (flycheck-posframe-border-face nil)
 (flycheck-verify-select-checker
  (:box
   (:style 'released-button)))
 (flycheck-error-list-highlight
  (:weight 'bold))
 (flycheck-error-list-error-message nil)
 (flycheck-error-list-checker-name
  (:inherit 'font-lock-function-name-face))
 (flycheck-error-list-id-with-explainer
  (:box
   (:style 'released-button)
   :inherit 'flycheck-error-list-id))
 (flycheck-error-list-id
  (:inherit 'font-lock-type-face))
 (flycheck-error-list-filename
  (:weight 'normal :inherit 'mode-line-buffer-id))
 (flycheck-error-list-column-number nil)
 (flycheck-error-list-line-number nil)
 (flycheck-info
  (:underline
   (:style 'wave :color winterGreen)))
 (flycheck-warning
  (:underline
   (:style 'wave :color roninYellow)))
 (flycheck-error
  (:underline
   (:style 'wave :color samuraiRed)))
 (flycheck-delimited-error nil)
 (flycheck-error-delimiter nil)
 (ibuffer-locked-buffer
  (:foreground sakuraPink))
 (which-key-docstring-face
  (:inherit 'which-key-note-face))
 (which-key-special-key-face
  (:weight 'bold :inverse-video t :inherit 'which-key-key-face))
 (which-key-highlighted-command-face
  (:underline t :inherit 'which-key-command-description-face))
 (which-key-note-face
  (:inherit 'which-key-separator-face))
 (which-key-separator-face
  (:inherit 'font-lock-comment-face))
 (company-echo-common
  (:foreground samuraiRed))
 (company-echo nil)
 (company-tooltip-quick-access-selection
  (:inherit 'company-tooltip-annotation-selection))
 (company-tooltip-annotation-selection
  (:inherit 'company-tooltip-annotation))
 (company-tooltip-common-selection
  (:inherit 'company-tooltip-common))
 (company-tooltip-search-selection
  (:inherit 'highlight))
 (ivy-posframe-cursor
  (:inherit 'cursor))
 (avy-goto-char-timer-face
  (:inherit 'highlight))
 (avy-background-face
  (:foreground fujiGray))
 (avy-lead-face
  (:foreground fujiWhite :background samuraiRed))
 (avy-lead-face-2
  (:foreground fujiWhite :background sakuraPink))
 (avy-lead-face-1
  (:foreground fujiWhite :background old-white))
 (avy-lead-face-0
  (:foreground fujiWhite :background sumiInk-4))
 (all-the-icons-ivy-dir-face
  (:foreground fujiWhite))
 (counsel-outline-8
  (:inherit 'org-level-8))
 (counsel-outline-7
  (:inherit 'org-level-7))
 (counsel-outline-6
  (:inherit 'org-level-6))
 (counsel-outline-5
  (:inherit 'org-level-5))
 (counsel-outline-4
  (:inherit 'org-level-4))
 (counsel-outline-3
  (:inherit 'org-level-3))
 (counsel-outline-2
  (:inherit 'org-level-2))
 (counsel-outline-1
  (:inherit 'org-level-1))
 (counsel-application-name
  (:inherit 'font-lock-builtin-face))
 (counsel-evil-register-face
  (:inherit 'counsel-outline-1))
 (counsel--mark-ring-highlight
  (:inherit 'highlight))
 (counsel-active-mode
  (:inherit 'font-lock-builtin-face))
 (counsel-key-binding
  (:inherit 'font-lock-keyword-face))
 (counsel-variable-documentation
  (:inherit 'font-lock-comment-face))
 (xref-line-number
  (:inherit 'compilation-line-number))
 (ivy-yanked-word
  (:inherit 'highlight))
 (ivy-completions-annotations
  (:inherit 'completions-annotations))
 (ivy-separator
  (:inherit 'font-lock-doc-face))
 (ivy-prompt-match
  (:inherit 'ivy-current-match))
 (ivy-highlight-face
  (:inherit 'highlight))
 (ivy-virtual
  (:inherit 'font-lock-builtin-face))
 (ivy-remote
  (:foreground crystalBlue))
 (ivy-modified-outside-buffer
  (:inherit 'default))
 (ivy-modified-buffer
  (:inherit 'default))
 (ivy-org
  (:inherit 'org-level-4))
 (ivy-subdir
  (:inherit 'dired-directory))
 (ivy-match-required-face
  (:foreground samuraiRed :inherit 'minibuffer-prompt))
 (ivy-minibuffer-match-face-4
  (:weight 'bold :background katanaGray))
 (ivy-minibuffer-match-face-3
  (:weight 'bold :background crystalBlue))
 (ivy-cursor
  (:foreground sumiInk-0 :background fujiWhite))
 (evil-goggles-paste-face
  (:inherit 'evil-goggles-default-face))
 (evil-goggles-record-macro-face
  (:inherit 'evil-goggles-default-face))
 (evil-goggles-set-marker-face
  (:inherit 'evil-goggles-default-face))
 (evil-goggles-replace-with-register-face
  (:inherit 'evil-goggles-default-face))
 (evil-goggles-nerd-commenter-face
  (:inherit 'evil-goggles-default-face))
 (evil-goggles-commentary-face
  (:inherit 'evil-goggles-default-face))
 (evil-goggles-surround-face
  (:inherit 'evil-goggles-default-face))
 (evil-goggles-shift-face
  (:inherit 'evil-goggles-default-face))
 (evil-goggles-fill-and-move-face
  (:inherit 'evil-goggles-default-face))
 (evil-goggles-join-face
  (:inherit 'evil-goggles-default-face))
 (evil-goggles-indent-face
  (:inherit 'evil-goggles-default-face))
 (evil-goggles-change-face
  (:inherit 'evil-goggles-default-face))
 (evil-goggles-yank-face
  (:inherit 'evil-goggles-default-face))
 (evil-goggles-delete-face
  (:inherit 'evil-goggles-default-face))
 (evil-goggles--pulse-face nil)
 (evil-goggles-default-face
  (:inherit 'region))
 (evil-snipe-matches-face
  (:inherit 'region))
 (evil-snipe-first-match-face
  (:inherit 'isearch))
 (nav-flash-face
  (:extend t :inherit 'highlight))
 (pulse-highlight-face
  (:background boatYellow2))
 (pulse-highlight-start-face
  (:background boatYellow2))
 (persp-face-lighter-default
  (:inherit 'italic))
 (persp-face-lighter-nil-persp
  (:inherit 'bold-italic))
 (persp-face-lighter-buffer-not-in-persp
  (:weight 'bold :foreground waveBlue-1 :background samuraiRed))
 (doom-modeline-buffer-timemachine
  (:slant 'italic :inherit 'doom-modeline-buffer-file))
 (doom-modeline-lsp-running
  (:weight 'normal :slant 'normal :inherit 'compilation-mode-line-run))
 (doom-modeline-lsp-error
  (:weight 'normal :inherit 'error))
 (doom-modeline-lsp-warning
  (:weight 'normal :inherit 'warning))
 (doom-modeline-lsp-success
  (:weight 'normal :inherit 'success))
 (doom-modeline-repl-warning
  (:weight 'normal :inherit 'warning))
 (doom-modeline-repl-success
  (:weight 'normal :inherit 'success))
 (doom-modeline-persp-buffer-not-in-persp
  (:inherit
   ('font-lock-doc-face 'bold 'italic)))
 (doom-modeline-persp-name
  (:inherit
   ('font-lock-comment-face 'italic)))
 (doom-modeline-debug-visual
  (:background boatYellow1))
 (doom-modeline-bar-inactive
  (:background sumiInk-4))
 (doom-modeline-unread-number
  (:weight 'normal :slant 'italic))
 (doom-modeline-notification
  (:inherit 'doom-modeline-warning))
 (doom-modeline-urgent
  (:inherit
   ('error 'bold)))
 (doom-modeline-warning
  (:inherit
   ('warning 'bold)))
 (doom-modeline-debug
  (:slant 'normal :inherit
          ('font-lock-doc-face 'bold)))
 (doom-modeline-input-method-alt
  (:slant 'normal :inherit
          ('font-lock-doc-face 'bold)))
 (doom-modeline-input-method
  (:inherit
   ('mode-line-emphasis 'bold)))
 (doom-modeline-host
  (:inherit 'italic))
 (doom-modeline-highlight
  (:inherit 'mode-line-emphasis))
 (doom-modeline-project-root-dir
  (:inherit
   ('mode-line-emphasis 'bold)))
 (doom-modeline-project-parent-dir
  (:inherit
   ('font-lock-comment-face 'bold)))
 (doom-modeline-buffer-minor-mode
  (:slant 'normal :inherit 'font-lock-doc-face))
 (doom-modeline-vspc-face
  (:inherit 'variable-pitch))
 (doom-modeline-spc-face
  (:inherit 'mode-line))
 (all-the-icons-dsilver
  (:foreground katanaGray))
 (all-the-icons-lsilver
  (:foreground old-white))
 (all-the-icons-silver
  (:foreground fujiGray))
 (all-the-icons-dpink
  (:foreground sakuraPink))
 (all-the-icons-lpink
  (:foreground fujiWhite))
 (all-the-icons-pink
  (:foreground fujiWhite))
 (all-the-icons-dcyan
  (:foreground sumiInk-4))
 (all-the-icons-lcyan
  (:foreground lightBlue))
 (all-the-icons-cyan-alt
  (:foreground lightBlue))
 (all-the-icons-cyan
  (:foreground waveAqua2))
 (all-the-icons-dorange
  (:foreground boatYellow1))
 (all-the-icons-lorange
  (:foreground roninYellow))
 (all-the-icons-orange
  (:foreground roninYellow))
 (all-the-icons-lpurple
  (:foreground fujiWhite))
 (all-the-icons-purple-alt
  (:foreground crystalBlue))
 (all-the-icons-dmaroon
  (:foreground fujiGray))
 (all-the-icons-lmaroon
  (:foreground boatYellow1))
 (all-the-icons-maroon
  (:foreground boatYellow1))
 (all-the-icons-dblue
  (:foreground sumiInk-4))
 (all-the-icons-lblue
  (:foreground lightBlue))
 (all-the-icons-blue-alt
  (:foreground dragonBlue))
 (all-the-icons-blue
  (:foreground waveAqua2))
 (all-the-icons-dyellow
  (:foreground boatYellow1))
 (all-the-icons-lyellow
  (:foreground surimiOrange))
 (all-the-icons-yellow
  (:foreground roninYellow))
 (all-the-icons-lgreen
  (:foreground old-white))
 (all-the-icons-red-alt
  (:foreground autumnRed))
 (all-the-icons-dred
  (:foreground winterRed))
 (all-the-icons-lred
  (:foreground peachRed))
 (all-the-icons-red
  (:foreground autumnRed))
 (diary-button nil)
 (diary-time
  (:inherit 'font-lock-variable-name-face))
 (diary-anniversary
  (:inherit 'font-lock-keyword-face))
 (vi-tilde-fringe-face
  (:inherit
   ('quote 'default)))
 (doom-themes-org-hash-tag
  (:inherit 'org-tag))
 (doom-themes-org-at-tag
  (:inherit 'org-formula))
 (solaire-header-line-face
  (:inherit 'header-line))
 (solaire-mode-line-inactive-face
  (:inherit 'mode-line-inactive))
 (solaire-mode-line-face
  (:inherit 'mode-line))
 (solaire-region-face
  (:inherit 'region))
 (solaire-org-hide-face
  (:inherit 'org-hide))
 (solaire-hl-line-face
  (:inherit 'hl-line))
 (solaire-line-number-face
  (:inherit
   ('line-number 'solaire-default-face)))
 (solaire-fringe-face
  (:inherit 'solaire-default-face))
 (dired-sidebar-face nil)
 (dired-subtree-depth-6-face
  (:background sumiInk-1b))
 (dired-subtree-depth-5-face
  (:background sumiInk-1b))
 (dired-subtree-depth-4-face
  (:background sumiInk-1))
 (dired-subtree-depth-3-face
  (:background sumiInk-1))
 (dired-subtree-depth-2-face
  (:background winterBlue))
 (dired-subtree-depth-1-face
  (:background winterBlue))
 (rxt-highlight-face
  (:background sumiInk-1))
 (reb-regexp-grouping-construct
  (:weight 'bold :underline t :inherit 'font-lock-keyword-face))
 (reb-regexp-grouping-backslash
  (:weight 'bold :underline t :inherit 'font-lock-keyword-face))
 (reb-match-3
  (:background winterYellow))
 (reb-match-2
  (:background winterYellow))
 (reb-match-1
  (:background waveBlue-1))
 (reb-match-0
  (:background waveBlue-2))
 (hl-todo
  (:weight 'bold :foreground sakuraPink))
 (compilation-column-number
  (:inherit 'font-lock-doc-face))
 (compilation-line-number
  (:inherit 'font-lock-keyword-face))
 (compilation-mode-line-exit
  (:weight 'bold :foreground winterGreen :inherit 'compilation-info))
 (compilation-mode-line-run
  (:inherit 'compilation-warning))
 (compilation-mode-line-fail
  (:weight 'bold :foreground samuraiRed :inherit 'compilation-error))
 (compilation-info
  (:inherit 'success))
 (compilation-warning
  (:inherit 'warning))
 (compilation-error
  (:inherit 'error))
 (magit-popup-option-value
  (:inherit 'font-lock-string-face))
 (magit-popup-disabled-argument
  (:inherit 'shadow))
 (magit-popup-argument
  (:inherit 'font-lock-warning-face))
 (magit-popup-key
  (:inherit 'font-lock-builtin-face))
 (magit-popup-heading
  (:inherit 'font-lock-keyword-face))
 (magit-blame-date nil)
 (magit-blame-name nil)
 (magit-blame-hash nil)
 (magit-blame-summary nil)
 (magit-blame-heading
  (:weight 'normal :slant 'normal :extend t :inherit 'magit-blame-highlight))
 (magit-blame-dimmed
  (:weight 'normal :slant 'normal :inherit 'magit-dimmed))
 (magit-blame-margin
  (:weight 'normal :slant 'normal :inherit 'magit-blame-highlight))
 (magit-blame-highlight
  (:extend t :foreground fujiWhite :background winterYellow))
 (magit-reflog-other
  (:foreground lightBlue))
 (magit-reflog-remote
  (:foreground lightBlue))
 (magit-reflog-cherry-pick
  (:foreground sumiInk-0))
 (magit-reflog-rebase
  (:foreground peachRed))
 (magit-reflog-reset
  (:foreground samuraiRed))
 (magit-reflog-checkout
  (:foreground waveBlue-1))
 (magit-reflog-merge
  (:foreground sumiInk-0))
 (magit-reflog-amend
  (:foreground peachRed))
 (magit-reflog-commit
  (:foreground sumiInk-0))
 (magit-bisect-bad
  (:foreground autumnRed))
 (magit-bisect-skip
  (:foreground boatYellow1))
 (magit-bisect-good
  (:foreground winterYellow))
 (magit-sequence-exec
  (:inherit 'magit-hash))
 (magit-sequence-onto
  (:inherit 'magit-sequence-done))
 (magit-sequence-done
  (:inherit 'magit-hash))
 (magit-sequence-drop
  (:foreground peachRed))
 (magit-sequence-head
  (:foreground lightBlue))
 (magit-sequence-part
  (:foreground carpYellow))
 (magit-sequence-stop
  (:foreground fujiWhite))
 (magit-sequence-pick
  (:inherit 'default))
 (magit-filename
  (:weight 'normal))
 (magit-cherry-equivalent
  (:foreground peachRed))
 (magit-cherry-unmatched
  (:foreground lightBlue))
 (magit-signature-error
  (:foreground lightBlue))
 (magit-signature-revoked
  (:foreground sakuraPink))
 (magit-signature-expired-key
  (:inherit 'magit-signature-expired))
 (magit-signature-expired
  (:foreground roninYellow))
 (magit-signature-untrusted
  (:foreground waveAqua2))
 (magit-signature-bad
  (:weight 'bold :foreground samuraiRed))
 (magit-signature-good
  (:foreground sumiInk-0))
 (magit-keyword-squash
  (:inherit 'font-lock-warning-face))
 (magit-keyword
  (:inherit 'font-lock-string-face))
 (magit-refname-pullreq
  (:inherit 'magit-refname))
 (magit-refname-wip
  (:inherit 'magit-refname))
 (magit-refname-stash
  (:inherit 'magit-refname))
 (magit-refname
  (:foreground fujiWhite))
 (magit-head
  (:inherit 'magit-branch-local))
 (magit-branch-upstream
  (:slant 'italic))
 (magit-branch-current
  (:box 1 :inherit 'magit-branch-local))
 (magit-branch-local
  (:foreground lightBlue))
 (magit-branch-remote-head
  (:box 1 :inherit 'magit-branch-remote))
 (magit-branch-remote
  (:foreground fujiWhite))
 (magit-tag
  (:foreground carpYellow))
 (magit-hash
  (:foreground fujiGray))
 (magit-dimmed
  (:foreground katanaGray))
 (magit-header-line-key
  (:inherit 'font-lock-builtin-face))
 (magit-header-line
  (:inherit 'magit-section-heading))
 (package-status-avail-obso
  (:inherit 'package-status-incompat))
 (package-status-incompat
  (:inherit 'error))
 (package-status-unsigned
  (:inherit 'font-lock-warning-face))
 (package-status-dependency
  (:inherit 'package-status-installed))
 (package-status-installed
  (:inherit 'font-lock-comment-face))
 (package-status-disabled
  (:inherit 'font-lock-warning-face))
 (package-status-held
  (:inherit 'font-lock-constant-face))
 (package-status-new
  (:inherit
   ('bold 'package-status-available)))
 (package-status-available
  (:inherit 'default))
 (package-status-external
  (:inherit 'package-status-built-in))
 (package-status-built-in
  (:inherit 'font-lock-builtin-face))
 (package-description
  (:inherit 'default))
 (package-name
  (:inherit 'link))
 (package-help-section-name
  (:inherit
   ('bold 'font-lock-function-name-face)))
 (browse-url-button
  (:inherit 'link))
 (magit-header-line-log-select
  (:inherit 'bold))
 (magit-log-date
  (:weight 'normal :slant 'normal :foreground fujiWhite))
 (magit-log-author
  (:weight 'normal :slant 'normal :foreground peachRed))
 (magit-log-graph
  (:foreground fujiWhite))
 (magit-diffstat-removed
  (:foreground autumnRed))
 (magit-diffstat-added
  (:foreground winterYellow))
 (magit-diff-whitespace-warning
  (:inherit 'trailing-whitespace))
 (magit-diff-context-highlight
  (:extend t :foreground springViolet2 :background winterGreen))
 (magit-diff-their-highlight
  (:inherit 'magit-diff-added-highlight))
 (magit-diff-base-highlight
  (:extend t :foreground fujiWhite :background winterYellow))
 (magit-diff-our-highlight
  (:inherit 'magit-diff-removed-highlight))
 (magit-diff-removed-highlight
  (:extend t :foreground fujiWhite :background winterYellow))
 (magit-diff-added-highlight
  (:extend t :foreground fujiWhite :background winterYellow))
 (magit-diff-context
  (:extend t :foreground springViolet2))
 (magit-diff-their
  (:inherit 'magit-diff-added))
 (magit-diff-base
  (:extend t :foreground fujiWhite :background winterYellow))
 (magit-diff-our
  (:inherit 'magit-diff-removed))
 (magit-diff-removed
  (:extend t :foreground fujiWhite :background winterYellow))
 (magit-diff-added
  (:extend t :foreground fujiWhite :background winterYellow))
 (magit-diff-conflict-heading
  (:inherit 'magit-diff-hunk-heading))
 (magit-diff-lines-boundary
  (:extend t :inherit 'magit-diff-lines-heading))
 (magit-diff-lines-heading
  (:extend t :foreground fujiWhite :background winterYellow :inherit 'magit-diff-hunk-heading-highlight))
 (magit-diff-revision-summary-highlight
  (:inherit 'magit-diff-hunk-heading-highlight))
 (magit-diff-revision-summary
  (:inherit 'magit-diff-hunk-heading))
 (magit-diff-hunk-region
  (:extend t :inherit 'bold))
 (magit-diff-hunk-heading-selection
  (:extend t :foreground autumnYellow :inherit 'magit-diff-hunk-heading-highlight))
 (magit-diff-hunk-heading-highlight
  (:extend t :foreground springViolet2 :background sumiInk-4))
 (magit-diff-hunk-heading
  (:extend t :foreground springViolet2 :background winterYellow))
 (magit-diff-file-heading-selection
  (:extend t :foreground autumnYellow :inherit 'magit-diff-file-heading-highlight))
 (magit-diff-file-heading-highlight
  (:extend t :inherit 'magit-section-highlight))
 (magit-diff-file-heading
  (:weight 'bold :extend t))
 (smerge-refined-added
  (:background winterGreen :inherit 'smerge-refined-change))
 (smerge-refined-removed
  (:background samuraiRed :inherit 'smerge-refined-change))
 (smerge-refined-changed nil)
 (smerge-markers
  (:extend t :background winterYellow))
 (smerge-base
  (:extend t :background boatYellow1))
 (smerge-lower
  (:extend t :background winterYellow))
 (smerge-upper
  (:extend t :background winterYellow))
 (diff-refine-added
  (:background winterGreen :inherit 'diff-refine-changed))
 (diff-refine-removed
  (:background samuraiRed :inherit 'diff-refine-changed))
 (diff-refine-changed
  (:background boatYellow2))
 (diff-nonexistent
  (:inherit 'diff-file-header))
 (diff-context
  (:extend t))
 (diff-function
  (:inherit 'diff-header))
 (diff-indicator-changed
  (:foreground boatYellow2 :inherit 'diff-changed))
 (diff-indicator-added
  (:foreground winterGreen :inherit 'diff-added))
 (diff-indicator-removed
  (:foreground samuraiRed :inherit 'diff-removed))
 (diff-changed nil)
 (diff-added
  (:extend t :background winterYellow :inherit 'diff-changed))
 (diff-removed
  (:extend t :background winterYellow :inherit 'diff-changed))
 (diff-hunk-header
  (:inherit 'diff-header))
 (diff-index
  (:inherit 'diff-file-header))
 (diff-file-header
  (:weight 'bold :extend t :background springViolet1))
 (diff-header
  (:extend t :background fujiGray))
 (git-commit-comment-action
  (:inherit 'bold))
 (git-commit-comment-file
  (:inherit 'git-commit-pseudo-header))
 (git-commit-comment-heading
  (:inherit 'git-commit-known-pseudo-header))
 (git-commit-comment-detached
  (:inherit 'git-commit-comment-branch-local))
 (git-commit-comment-branch-remote
  (:inherit 'font-lock-variable-name-face))
 (git-commit-comment-branch-local
  (:inherit 'font-lock-variable-name-face))
 (git-commit-known-pseudo-header
  (:inherit 'font-lock-keyword-face))
 (git-commit-pseudo-header
  (:inherit 'font-lock-string-face))
 (git-commit-keyword
  (:inherit 'font-lock-string-face))
 (git-commit-nonempty-second-line
  (:inherit 'font-lock-warning-face))
 (git-commit-overlong-summary
  (:inherit 'font-lock-warning-face))
 (git-commit-summary
  (:inherit 'font-lock-type-face))
 (log-edit-unknown-header
  (:inherit 'font-lock-comment-face))
 (log-edit-header
  (:inherit 'font-lock-keyword-face))
 (log-edit-summary
  (:inherit 'font-lock-function-name-face))
 (message-mml
  (:foreground waveAqua2))
 (message-cited-text-4
  (:foreground autumnRed))
 (message-cited-text-3
  (:foreground roninYellow))
 (message-cited-text-2
  (:foreground winterGreen))
 (message-cited-text-1
  (:foreground fujiWhite))
 (message-separator
  (:foreground lightBlue))
 (message-header-newsgroups
  (:weight 'bold :slant 'italic :foreground roninYellow))
 (dired-ignored
  (:inherit 'shadow))
 (dired-special
  (:inherit 'font-lock-variable-name-face))
 (dired-symlink
  (:inherit 'font-lock-keyword-face))
 (dired-directory
  (:inherit 'font-lock-function-name-face))
 (dired-set-id
  (:inherit 'font-lock-warning-face))
 (dired-perm-write
  (:inherit 'font-lock-comment-delimiter-face))
 (dired-warning
  (:inherit 'font-lock-warning-face))
 (dired-flagged
  (:inherit 'error))
 (dired-marked
  (:inherit 'warning))
 (dired-header
  (:inherit 'font-lock-type-face))
 (epa-field-body
  (:slant 'italic :foreground springBlue))
 (epa-field-name
  (:weight 'bold :foreground lightBlue))
 (epa-string
  (:foreground fujiWhite))
 (epa-validity-disabled
  (:slant 'italic :inverse-video t))
 (epa-validity-low
  (:slant 'italic))
 (epa-validity-medium
  (:slant 'italic :foreground lightBlue))
 (epa-validity-high
  (:weight 'bold :foreground lightBlue))
 (rmail-header-name
  (:inherit 'font-lock-function-name-face))
 (rmail-highlight
  (:inherit 'highlight))
 (mm-command-output
  (:foreground winterGreen))
 (change-log-acknowledgment
  (:inherit 'font-lock-comment-face))
 (change-log-function
  (:inherit 'font-lock-variable-name-face))
 (change-log-conditionals
  (:inherit 'font-lock-variable-name-face))
 (change-log-list
  (:inherit 'font-lock-keyword-face))
 (change-log-file
  (:inherit 'font-lock-function-name-face))
 (change-log-email
  (:inherit 'font-lock-variable-name-face))
 (change-log-name
  (:inherit 'font-lock-constant-face))
 (change-log-date
  (:inherit 'font-lock-string-face))
 (magit-mode-line-process-error
  (:inherit 'error))
 (magit-mode-line-process
  (:inherit 'mode-line-emphasis))
 (magit-process-ng
  (:foreground samuraiRed :inherit 'magit-section-heading))
 (magit-process-ok
  (:foreground sumiInk-0 :inherit 'magit-section-heading))
 (transient-teal
  (:foreground dragonBlue :inherit 'transient-key))
 (transient-pink
  (:foreground sakuraPink :inherit 'transient-key))
 (transient-amaranth
  (:foreground samuraiRed :inherit 'transient-key))
 (transient-blue
  (:foreground waveBlue-1 :inherit 'transient-key))
 (transient-red
  (:foreground samuraiRed :inherit 'transient-key))
 (transient-separator
  (:extend t :background winterYellow))
 (transient-higher-level
  (:underline t))
 (transient-disabled-suffix
  (:weight 'bold :foreground sumiInk-0 :background samuraiRed))
 (transient-enabled-suffix
  (:weight 'bold :foreground sumiInk-0 :background sumiInk-0))
 (transient-inapt-suffix
  (:slant 'italic :inherit 'shadow))
 (transient-mismatched-key
  (:underline t))
 (transient-nonstandard-key
  (:underline t))
 (transient-unreachable-key
  (:inherit 'shadow))
 (transient-active-infix
  (:inherit 'secondary-selection))
 (transient-unreachable
  (:inherit 'shadow))
 (transient-inactive-value
  (:inherit 'shadow))
 (transient-inactive-argument
  (:inherit 'shadow))
 (transient-value
  (:inherit 'font-lock-string-face))
 (transient-argument
  (:inherit 'font-lock-warning-face))
 (transient-key
  (:inherit 'font-lock-builtin-face))
 (transient-heading
  (:inherit 'font-lock-keyword-face))
 (magit-section-heading-selection
  (:extend t :foreground autumnYellow))
 (magit-section-secondary-heading
  (:weight 'bold :extend t))
 (magit-section-heading
  (:weight 'bold :extend t :foreground carpYellow))
 (magit-section-highlight
  (:extend t :background winterGreen))
 (+org-todo-cancel
  (:inherit
   ('bold 'error 'org-todo)))
 (+org-todo-onhold
  (:inherit
   ('bold 'warning 'org-todo)))
 (+org-todo-project
  (:inherit
   ('bold 'font-lock-doc-face 'org-todo)))
 (+org-todo-active
  (:inherit
   ('bold 'font-lock-constant-face 'org-todo)))
 (org-mode-line-clock-overrun
  (:background samuraiRed :inherit 'mode-line))
 (org-mode-line-clock
  (:inherit 'mode-line))
 (org-tag-group
  (:inherit 'org-tag))
 (org-macro
  (:inherit 'org-latex-and-related))
 (org-latex-and-related
  (:foreground carpYellow))
 (org-agenda-calendar-sexp
  (:inherit 'default))
 (org-agenda-calendar-event
  (:inherit 'default))
 (org-agenda-diary
  (:inherit 'default))
 (org-agenda-current-time
  (:inherit 'org-time-grid))
 (org-time-grid
  (:foreground carpYellow))
 (org-agenda-filter-regexp
  (:inherit 'mode-line))
 (org-agenda-filter-effort
  (:inherit 'mode-line))
 (org-agenda-filter-category
  (:inherit 'mode-line))
 (org-agenda-filter-tags
  (:inherit 'mode-line))
 (org-agenda-restriction-lock
  (:background sumiInk-1b))
 (org-upcoming-distant-deadline
  (:inherit 'org-default))
 (org-imminent-deadline
  (:inherit 'org-warning))
 (org-scheduled-previously
  (:foreground roninYellow))
 (org-agenda-dimmed-todo-face
  (:foreground katanaGray))
 (org-scheduled-today
  (:foreground springGreen))
 (org-scheduled
  (:foreground springGreen))
 (org-agenda-date-weekend
  (:weight 'bold :inherit 'org-agenda-date))
 (org-agenda-clocking
  (:inherit 'secondary-selection))
 (org-agenda-date-weekend-today
  (:inherit 'org-agenda-date-today))
 (org-agenda-date-today
  (:weight 'bold :slant 'italic :inherit 'org-agenda-date))
 (org-agenda-date
  (:inherit 'org-agenda-structure))
 (org-agenda-structure-filter
  (:inherit
   ('org-warning 'org-agenda-structure)))
 (org-agenda-structure-secondary
  (:inherit 'org-agenda-structure))
 (org-agenda-structure
  (:foreground lightBlue))
 (org-clock-overlay
  (:foreground fujiWhite :background dragonBlue))
 (org-verse
  (:inherit 'org-block))
 (org-quote
  (:inherit 'org-block))
 (org-verbatim
  (:inherit
   ('fixed-pitch 'shadow)))
 (org-document-info-keyword
  (:inherit 'shadow))
 (org-document-info
  (:foreground lightBlue))
 (org-document-title
  (:weight 'bold :foreground lightBlue))
 (org-formula
  (:foreground roninYellow :inherit 'fixed-pitch))
 (org-table-header
  (:foreground sumiInk-0 :background fujiWhite :inherit 'org-table))
 (org-table
  (:foreground lightBlue :inherit 'fixed-pitch))
 (org-checkbox-statistics-done
  (:inherit 'org-done))
 (org-checkbox-statistics-todo
  (:inherit 'org-todo))
 (org-checkbox
  (:inherit 'bold))
 (org-priority
  (:inherit 'font-lock-keyword-face))
 (org-agenda-done
  (:foreground springGreen))
 (org-list-dt
  (:weight 'bold))
 (org-tag
  (:weight 'bold))
 (org-sexp-date
  (:foreground lightBlue))
 (org-date-selected
  (:inverse-video t :foreground fujiWhite))
 (org-target
  (:underline t))
 (org-link
  (:inherit 'link))
 (org-cite-key
  (:inherit 'link))
 (org-cite
  (:inherit 'link))
 (org-archived
  (:inherit 'shadow))
 (org-warning
  (:inherit 'font-lock-warning-face))
 (org-agenda-column-dateline
  (:inherit 'org-column))
 (org-column-title
  (:weight 'bold :underline t :background winterYellow))
 (org-column
  (:weight 'normal :slant 'normal :underline nil :strike-through nil :background winterYellow))
 (org-property-value nil)
 (org-drawer
  (:foreground lightBlue))
 (org-special-keyword
  (:inherit 'font-lock-keyword-face))
 (org-dispatcher-highlight
  (:weight 'bold :foreground roninYellow :background winterGreen))
 (org-default
  (:inherit 'default))
 (outline-8
  (:inherit 'font-lock-string-face))
 (outline-7
  (:inherit 'font-lock-builtin-face))
 (outline-6
  (:inherit 'font-lock-constant-face))
 (outline-5
  (:inherit 'font-lock-type-face))
 (outline-4
  (:inherit 'font-lock-comment-face))
 (outline-3
  (:inherit 'font-lock-keyword-face))
 (outline-2
  (:inherit 'font-lock-variable-name-face))
 (outline-1
  (:inherit 'font-lock-function-name-face))
 (calendar-month-header
  (:inherit 'font-lock-function-name-face))
 (calendar-weekend-header
  (:inherit 'font-lock-comment-face))
 (calendar-weekday-header
  (:inherit 'font-lock-constant-face))
 (holiday
  (:background winterYellow))
 (diary
  (:foreground roninYellow))
 (calendar-today
  (:underline t))
 (custom-group-subtitle
  (:weight 'bold))
 (custom-group-tag
  (:height 1.2 :weight 'bold :foreground lightBlue :inherit 'variable-pitch))
 (custom-group-tag-1
  (:height 1.2 :weight 'bold :foreground fujiWhite :inherit 'variable-pitch))
 (custom-face-tag
  (:inherit 'custom-variable-tag))
 (custom-visibility
  (:height 0.8 :inherit 'link))
 (custom-variable-button
  (:weight 'bold :underline t))
 (custom-variable-tag
  (:weight 'bold :foreground lightBlue))
 (custom-variable-obsolete
  (:foreground lightBlue))
 (custom-comment-tag
  (:foreground fujiWhite))
 (custom-comment
  (:background fujiGray))
 (custom-state
  (:foreground winterYellow))
 (custom-documentation nil)
 (custom-button-pressed-unraised
  (:foreground sakuraPink :inherit 'custom-button-unraised))
 (custom-button-pressed
  (:box
   (:line-width 2 :style 'pressed-button)
   :foreground sumiInk-0 :background fujiWhite))
 (custom-button-unraised
  (:inherit 'underline))
 (custom-button-mouse
  (:box
   (:line-width 2 :style 'released-button)
   :foreground sumiInk-0 :background fujiWhite))
 (custom-button
  (:box
   (:line-width 2 :style 'released-button)
   :foreground sumiInk-0 :background fujiWhite))
 (custom-saved
  (:underline t))
 (custom-themed
  (:foreground fujiWhite :background waveBlue-1))
 (custom-changed
  (:foreground fujiWhite :background waveBlue-1))
 (custom-set
  (:foreground waveBlue-1 :background fujiWhite))
 (custom-modified
  (:foreground fujiWhite :background waveBlue-1))
 (custom-rogue
  (:foreground fujiWhite :background sumiInk-0))
 (custom-invalid
  (:foreground roninYellow :background samuraiRed))
 (widget-button-pressed
  (:foreground samuraiRed))
 (widget-inactive
  (:inherit 'shadow))
 (widget-single-line-field
  (:background fujiGray))
 (widget-field
  (:extend t :background fujiGray))
 (widget-button
  (:weight 'bold))
 (widget-documentation
  (:foreground winterYellow))
 (yas--field-debug-face nil)
 (yas-field-highlight-face
  (:inherit 'region))
 (flyspell-duplicate
  (:underline
   (:style 'wave :color roninYellow)))
 (flyspell-incorrect
  (:underline
   (:style 'wave :color samuraiRed)))
 (comint-highlight-input
  (:weight 'bold))
 (calc-selected-face
  (:weight 'bold))
 (calc-nonselected-face
  (:slant 'italic :inherit 'shadow))
 (rectangle-preview
  (:inherit 'region))
 (evil-ex-search
  (:inherit 'isearch))
 (evil-ex-info
  (:slant 'italic :foreground samuraiRed))
 (evil-ex-commands
  (:slant 'italic :underline t))
 (solaire-default-face
  (:inherit 'default))
 (+workspace-tab-face
  (:inherit 'default))
 (+workspace-tab-selected-face
  (:inherit 'highlight))
 (eldoc-highlight-function-argument
  (:inherit 'bold))
 (vc-edited-state
  (:inherit 'vc-state-base))
 (vc-missing-state
  (:inherit 'vc-state-base))
 (vc-removed-state
  (:inherit 'vc-state-base))
 (vc-conflict-state
  (:inherit 'vc-state-base))
 (vc-locally-added-state
  (:inherit 'vc-state-base))
 (vc-locked-state
  (:inherit 'vc-state-base))
 (vc-needs-update-state
  (:inherit 'vc-state-base))
 (vc-up-to-date-state
  (:inherit 'vc-state-base))
 (vc-state-base nil)
 (buffer-menu-buffer
  (:weight 'bold))
 (tabulated-list-fake-header
  (:weight 'bold :underline t :overline t))
 (query-replace
  (:inherit 'isearch))
 (tab-bar-tab-inactive
  (:background old-white :inherit 'tab-bar-tab))
 (tab-bar-tab
  (:box
   (:line-width 1 :style 'released-button)
   :inherit 'tab-bar))
 (file-name-shadow
  (:inherit 'shadow))
 (lazy-highlight
  (:background waveAqua1))
 (isearch-fail
  (:background winterRed))
 (isearch
  (:foreground winterRed :background sakuraPink))
 (mouse-drag-and-drop-region
  (:inherit 'region))
 (font-lock-regexp-grouping-construct
  (:inherit 'bold))
 (completions-common-part
  (:foreground lightBlue))
 (completions-first-difference
  (:inherit 'bold))
 (next-error
  (:inherit 'region))
 (tty-menu-selected-face
  (:background samuraiRed))
 (tty-menu-disabled-face
  (:foreground fujiWhite :background waveBlue-1))
 (tty-menu-enabled-face
  (:weight 'bold :foreground roninYellow :background waveBlue-1))
 (read-multiple-choice-face
  (:weight 'bold :inherit 'underline))
 (help-argument-name
  (:inherit 'italic))
 (tab-bar
  (:foreground sumiInk-0 :background fujiWhite :inherit 'variable-pitch))
 (tool-bar
  (:box
   (:line-width 1 :style 'released-button)
   :foreground sumiInk-0 :background old-white))
 (mouse nil)
 (scroll-bar nil)
 (window-divider-last-pixel
  (:foreground fujiGray))
 (window-divider-first-pixel
  (:foreground fujiWhite))
 (header-line-highlight
  (:inherit 'highlight))
 (mode-line-emphasis
  (:weight 'bold))
 (nobreak-hyphen
  (:foreground lightBlue))
 (nobreak-space
  (:underline t :inherit 'escape-glyph))
 (escape-glyph
  (:foreground lightBlue))
 (fill-column-indicator
  (:weight 'normal :slant 'normal :underline nil :overline nil :strike-through nil :box nil :inverse-video nil :stipple nil :inherit 'shadow))
 (line-number-minor-tick
  (:weight 'bold :background springViolet1))
 (line-number-major-tick
  (:weight 'bold :background old-white))
 (secondary-selection
  (:extend t :background dragonBlue))
 (link-visited
  (:foreground sakuraPink :inherit 'link))
 (variable-pitch
  (:family "Sans Serif"))
 (fixed-pitch-serif
  (:family "Monospace Serif"))
 (fixed-pitch
  (:family "Monospace"))
 (underline
  (:underline t))
 (bold-italic
  (:weight 'bold :slant 'italic))
 (italic
  (:slant 'italic))
 (bold
  (:weight 'bold)))
 )

;;;###autoload
(and load-file-name
     (boundp 'custom-theme-load-path)
     (add-to-list 'custom-theme-load-path
                  (file-name-as-directory
                   (file-name-directory load-file-name))))

(provide-theme 'kanagawa)
;;; kanagawa-theme.el ends here
