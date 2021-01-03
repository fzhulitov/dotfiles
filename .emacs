;;; Package --- .emacs
;;; Commentary:
;;; GNU Emacs configuration file
;;; -*- lexical-binding: t; -*-
;;; -*- no-byte-compile: t; -*-

;;; Code:
(require 'ansi-color nil :noerror)
(require 'autoinsert nil :noerror)
(require 'bookmark   nil :noerror)
(require 'bs         nil :noerror)
(require 'cc-mode    nil :noerror)
(require 'cl-indent  nil :noerror)
(require 'cl-lib     nil :noerror)
(require 'dired      nil :noerror)
(require 'dired-x    nil :noerror)
(require 'dirtrack   nil :noerror)
(require 'eldoc      nil :noerror)
(require 'eshell     nil :noerror)
(require 'find-dired nil :noerror)
(require 'flyspell   nil :noerror)
(require 'font-lock  nil :noerror)
(require 'ibuffer    nil :noerror)
(require 'imenu      nil :noerror)
(require 'ispell     nil :noerror)
(require 'package    nil :noerror)
(require 'profiler   nil :noerror)
(require 'recentf    nil :noerror)
(require 'savehist   nil :noerror)
(require 'saveplace  nil :noerror)
(require 'subr-x     nil :noerror)
(require 'tramp      nil :noerror)
(require 'uniquify   nil :noerror)
(require 'whitespace nil :noerror)

(defalias 'list-buffers 'ibuffer    )
(defalias 'perl-mode    'cperl-mode )
(defalias 'yes-or-no-p  'y-or-n-p   )

(auto-fill-mode                   -1 )
(auto-insert-mode                 -1 )
(column-number-mode                1 )
(delete-selection-mode             1 )
(desktop-save-mode                -1 )
(display-time-mode                 1 )
(eldoc-mode                        1 )
(electric-indent-mode              1 )
(electric-pair-mode               -1 )
(file-name-shadow-mode             1 )
(flyspell-mode                    -1 )
(global-auto-revert-mode           1 )
(global-display-line-numbers-mode -1 )
(global-font-lock-mode             1 )
(global-hl-line-mode              -1 )
(global-prettify-symbols-mode      1 )
(global-subword-mode               1 )
(global-visual-line-mode          -1 )
(global-whitespace-mode            1 )
(icomplete-mode                    1 )
(line-number-mode                  1 )
(linum-mode                       -1 )
(menu-bar-mode                    -1 )
(minibuffer-depth-indicate-mode    1 )
(recentf-mode                      1 )
(save-place-mode                   1 )
(savehist-mode                     1 )
(scroll-bar-mode                  -1 )
(show-paren-mode                   1 )
(size-indication-mode              1 )
(tab-bar-mode                     -1 )
(tab-line-mode                    -1 )
(tool-bar-mode                    -1 )
(tooltip-mode                     -1 )
(transient-mark-mode               1 )
(which-function-mode              -1 )
(window-divider-mode              -1 )

(setq-default auto-revert-interval            1    )
(setq-default auto-save-timeout             500    )
(setq-default c-basic-offset                  2    )
(setq-default calendar-week-start-day         1    )
(setq-default display-time-interval           1    )
(setq-default echo-keystrokes                 0.1  )
(setq-default gc-cons-percentage              0.1  )
(setq-default history-length               1000    )
(setq-default kept-new-versions               2    )
(setq-default kept-old-versions               1    )
(setq-default lazy-highlight-initial-delay    0    )
(setq-default lazy-highlight-interval         0    )
(setq-default message-log-max              1000    )
(setq-default recentf-max-menu-items         10    )
(setq-default recentf-max-saved-items       100    )
(setq-default scroll-conservatively        1000    )
(setq-default scroll-down-aggressively        0.01 )
(setq-default scroll-margin                   1    )
(setq-default scroll-step                     1    )
(setq-default scroll-up-aggressively          0.01 )
(setq-default sh-basic-offset                 2    )
(setq-default show-paren-delay                0    )
(setq-default tab-width                       2    )
(setq-default whitespace-line-column        100    )

(setq-default abbrev-mode                           t   )
(setq-default apropos-do-all                        t   )
(setq-default auto-revert-check-vc-info             t   )
(setq-default auto-revert-remote-files              t   )
(setq-default auto-revert-verbose                   nil )
(setq-default auto-save-default                     t   )
(setq-default auto-window-vscroll                   t   )
(setq-default backup-by-copying                     t   )
(setq-default blink-matching-paren                  t   )
(setq-default bookmark-save-flag                    t   )
(setq-default case-fold-search                      t   )
(setq-default column-number-indicator-zero-based    nil )
(setq-default completion-ignore-case                t   )
(setq-default confirm-kill-processes                nil )
(setq-default cursor-in-non-selected-windows        nil )
(setq-default debug-on-error                        t   )
(setq-default debug-on-quit                         nil )
(setq-default delete-auto-save-files                t   )
(setq-default delete-by-moving-to-trash             t   )
(setq-default delete-old-versions                   t   )
(setq-default delete-trailing-lines                 t   )
(setq-default dired-dwim-target                     t   )
(setq-default dired-omit-verbose                    nil )
(setq-default display-time-24hr-format              t   )
(setq-default display-time-day-and-date             nil )
(setq-default display-time-default-load-average     nil )
(setq-default enable-recursive-minibuffers          t   )
(setq-default enable-remote-dir-locals              t   )
(setq-default eshell-kill-processes-on-exit         t   )
(setq-default file-name-handler-alist               nil )
(setq-default find-file-visit-truename              t   )
(setq-default font-lock-maximum-decoration          t   )
(setq-default frame-resize-pixelwise                t   )
(setq-default gdb-enable-debug                      t   )
(setq-default gdb-many-windows                      nil )
(setq-default gdb-show-changed-values               t   )
(setq-default gdb-show-main                         t   )
(setq-default gdb-show-threads-by-default           t   )
(setq-default gdb-speedbar-auto-raise               t   )
(setq-default global-visual-line-mode               nil )
(setq-default history-delete-duplicates             t   )
(setq-default ibuffer-expert                        t   )
(setq-default ibuffer-show-empty-filter-groups      nil )
(setq-default imenu-auto-rescan                     t   )
(setq-default imenu-use-popup-menu                  nil )
(setq-default indent-tabs-mode                      nil )
(setq-default inhibit-compacting-font-caches        t   )
(setq-default inhibit-splash-screen                 t   )
(setq-default inhibit-startup-buffer-menu           t   )
(setq-default inhibit-startup-message               t   )
(setq-default inhibit-startup-screen                t   )
(setq-default initial-buffer-choice                 nil )
(setq-default initial-scratch-message               nil )
(setq-default ispell-dictionary                     nil )
(setq-default ispell-really-aspell                  nil )
(setq-default ispell-really-hunspell                t   )
(setq-default kill-whole-line                       t   )
(setq-default large-file-warning-threshold          nil )
(setq-default lexical-binding                       t   )
(setq-default line-move-visual                      nil )
(setq-default load-prefer-newer                     t   )
(setq-default make-backup-files                     nil )
(setq-default make-pointer-invisible                t   )
(setq-default mouse-drag-copy-region                nil )
(setq-default mouse-wheel-follow-mouse              t   )
(setq-default mouse-wheel-progressive-speed         t   )
(setq-default mouse-yank-at-point                   t   )
(setq-default next-line-add-newlines                nil )
(setq-default package-check-signature               nil )
(setq-default package-enable-at-startup             nil )
(setq-default python-indent-guess-indent-offset     nil )
(setq-default query-replace-highlight               t   )
(setq-default read-buffer-completion-ignore-case    t   )
(setq-default read-file-name-completion-ignore-case t   )
(setq-default recenter-redisplay                    nil )
(setq-default redisplay-dont-pause                  t   )
(setq-default require-final-newline                 t   )
(setq-default resize-mini-windows                   nil )
(setq-default save-interprogram-paste-before-kill   t   )
(setq-default save-place                            t   )
(setq-default savehist-save-minibuffer-history      t   )
(setq-default scroll-error-top-bottom               t   )
(setq-default scroll-preserve-screen-position       t   )
(setq-default search-highlight                      t   )
(setq-default select-enable-clipboard               t   )
(setq-default select-enable-primary                 nil )
(setq-default sentence-end-double-space             nil )
(setq-default set-mark-command-repeat-pop           t   )
(setq-default shift-select-mode                     nil )
(setq-default show-trailing-whitespace              t   )
(setq-default split-height-threshold                nil )
(setq-default split-width-threshold                 nil )
(setq-default system-uses-terminfo                  nil )
(setq-default tags-revert-without-query             t   )
(setq-default track-eol                             t   )
(setq-default truncate-lines                        t   )
(setq-default truncate-partial-width-windows        nil )
(setq-default uniquify-after-kill-buffer-p          t   )
(setq-default use-dialog-box                        nil )
(setq-default use-file-dialog                       nil )
(setq-default vc-follow-symlinks                    t   )
(setq-default vc-make-backup-files                  t   )
(setq-default version-control                       t   )
(setq-default visible-bell                          t   )
(setq-default window-combination-resize             t   )
(setq-default window-divider-default-places         nil )
(setq-default x-select-enable-clipboard             t   )
(setq-default x-stretch-cursor                      t   )

(setq-default gc-cons-threshold            (* 10240 10240 ) )
(setq-default large-file-warning-threshold (* 10240 10240 ) )
(setq-default message-log-max              (*  1024  1024 ) )
(setq-default read-process-output-max      (*  1024  1024 ) )

(setq-default c-default-style          "stroustrup"           )
(setq-default custom-file              "~/.emacs.d/custom.el" )
(setq-default explicit-shell-file-name "/bin/bash"            )
(setq-default frame-title-format       "GNU Emacs"            )
(setq-default shell-file-name          "/bin/bash"            )
(setq-default tramp-default-method     "ssh"                  )
(setq-default uniquify-separator       "::"                   )

(setq-default ad-redefinition-action               'accept                        )
(setq-default backup-directory-alist               '(("." . "~/.emacs.d/backup")) )
(setq-default backward-delete-char-untabify-method 'hungry                        )
(setq-default calendar-date-style                  'european                      )
(setq-default dired-recursive-copies               'always                        )
(setq-default dired-recursive-deletes              'top                           )
(setq-default initial-major-mode                   'lisp-interaction-mode         )
(setq-default lisp-indent-function                 'lisp-indent-function          )
(setq-default major-mode                           'text-mode                     )
(setq-default mouse-wheel-scroll-amount            '(1 ((shift) . 1))             )
(setq-default prettify-symbols-unprettify-at-point 'right-edge                    )
(setq-default recenter-positions                   '(middle top bottom)           )
(setq-default ring-bell-function                   'ignore                        )
(setq-default save-abbrevs                         'silently                      )
(setq-default select-active-regions                'only                          )
(setq-default show-paren-style                     'mixed                         )
(setq-default tab-always-indent                    'complete                      )
(setq-default uniquify-buffer-name-style           'forward                       )
(setq-default vc-handled-backends                  '(git svn)                     )
(setq-default whitespace-style                     '(face lines trailing)         )

(when (display-graphic-p)
  (blink-cursor-mode )
  (display-time      )
  (fringe-mode       )
  (setq-default cursor-type 'box)
  (cond ((member "Hermit" (font-family-list))
         (set-frame-font "Hermit 14" t t))
        ((member "Fantasque Sans Mono" (font-family-list))
         (set-frame-font "Fantasque Sans Mono 18" t t))
        ((member "JetBrains Mono" (font-family-list))
         (set-frame-font "Jetbrains Mono 14" t t))
        ((member "DejaVu Sans Mono" (font-family-list))
         (set-frame-font "DejaVu Sans Mono 14" t t)))
  (add-to-list 'default-frame-alist '(height .  30) )
  (add-to-list 'default-frame-alist '(width  . 120) )
  (setq-default indicate-buffer-boundaries '(( bottom . left )
                                             ( down   . left )
                                             ( top    . left )
                                             ( up     . left )
                                             ( t      . left )) ))

(defun c-common-mode ()
  "C/C++ common customization."
  (interactive)
  (c-toggle-auto-hungry-state      1 )
  (c-toggle-auto-newline           1 )
  (c-toggle-comment-style         -1 )
  (c-toggle-electric-state         1 )
  (c-toggle-syntactic-indentation  1 ) )

(defun splitting-window-for-run ()
  "Split window and balances windows."
  (split-window-sensibly   )
  (other-window          1 )
  (balance-windows         ) )

(defun run-ibuffer ()
  "Run iBuffer in other window."
  (interactive)
  (splitting-window-for-run)
  (ibuffer))

(defun run-shell ()
  "Start a terminal emulator in a new window."
  (interactive)
  (splitting-window-for-run)
  (cond
   ((string-equal system-type "gnu/linux")
    (ansi-term (executable-find "bash"))
    (defadvice term-handle-exit
        (after term-kill-buffer-on-exit activate)
      (if (>= (length (window-list)) 2)
          (progn (kill-buffer) (delete-window))
        (kill-buffer)) ))
   ((string-equal system-type "windows-nt")
    (eshell)
    (add-hook 'eshell-exit-hook
              '(lambda ()
                 (if (>= (length (window-list)) 2)
                     (delete-window)) )) )) )

(defun spell-checker ()
  "Spell checker (on/off) with selectable dictionary."
  (interactive)
  (if (bound-and-true-p flyspell-mode)
      (flyspell-mode-off)
    (progn
      (if (derived-mode-p 'prog-mode)
          (flyspell-prog-mode)
        (flyspell-mode))
      (ispell-change-dictionary
       (completing-read
        "Use new dictionary (RET for *default*): "
        (and (fboundp 'ispell-valid-dictionary-list)
             (mapcar 'list
                     (ispell-valid-dictionary-list)))
        nil t)) )) )

(defun install-package (package-name)
  "Try to install an external package: 'PACKAGE-NAME'."
  (interactive)
  (condition-case
      err
      (unless (package-installed-p package-name)
        (package-install package-name) nil)
    (error
     (princ (format "THE ERROR WAS: %s" err))) ))

(defun format-save-buffer ()
  "Format buffer before saving."
  (interactive)
  (save-excursion
    (recenter)
    (delete-trailing-whitespace)
    (if (equal major-mode 'makefile-gmake-mode)
        (tabify   (point-min) (point-max) )
      (untabify (point-min) (point-max) ))
    (unless (or (equal major-mode 'text-mode           )
                (equal major-mode 'python-mode         )
                (equal major-mode 'makefile-gmake-mode ))
      (indent-region (point-min) (point-max)) ))
  (save-buffer) nil)

(defun fr ()
  "Format region: delete duplicate lines and sort lines."
  (interactive)
  (delete-duplicate-lines     (region-beginning) (region-end))
  (sort-lines             nil (region-beginning) (region-end)) )

(defun use-cedet-semantic ()
  "GNU Emacs CEDET & Semantic customization."
  (interactive)
  (require       'cedet               nil :noerror )
  (when (require 'semantic            nil :noerror )
    (require     'semantic/bovine/gcc nil :noerror )
    (require     'semantic/ia         nil :noerror )
    (require     'semantic/wisent     nil :noerror )
    (defvar *semantic-submodes*
      (list 'global-cedet-m3-minor-mode
            'global-semantic-decoration-mode
            'global-semantic-highlight-edits-mode
            'global-semantic-highlight-func-mode
            'global-semantic-idle-completions-mode
            'global-semantic-idle-local-symbol-highlight-mode
            'global-semantic-idle-scheduler-mode
            'global-semantic-idle-summary-mode
            'global-semantic-mru-bookmark-mode
            'global-semantic-show-parser-state-mode
            'global-semantic-stickyfunc-mode
            'global-semanticdb-minor-mode))
    (dolist (submode *semantic-submodes*)
      (add-to-list 'semantic-default-submodes submode))
    (semantic-mode) ))

(defun kill-other-buffers ()
  "Kill all invispble buffers."
  (interactive)
  (delete-other-windows)
  (mapc 'kill-buffer (delq (current-buffer) (buffer-list) ))
  (message "All invisible buffers was killed!"))

(prefer-coding-system 'utf-8)
(when (not indicate-empty-lines)
  (toggle-indicate-empty-lines)
  (setq-default indicate-empty-lines t))

(if (file-exists-p bookmark-default-file)
    (bookmark-load bookmark-default-file t))

(add-hook 'c-mode-common-hook 'c-common-mode)
(add-hook 'makefile-mode-hook
          '(lambda () (setq-default indent-tabs-mode t)) )

(cond
 ((executable-find "hunspell")
  (setq-default ispell-program-name "/usr/bin/hunspell" ))
 ((executable-find "aspell")
  (setq-default ispell-program-name "/usr/bin/aspell"   )) )

(when (executable-find "scheme")
  (setq-default scheme-program-name "scheme")
  (autoload 'run-scheme  "cmuscheme" "Run an inferior Scheme" t )
  (autoload 'scheme-mode "cmuscheme" "Major mode for Scheme"  t ))

(cond
 ((executable-find "ipython")
  (setq-default python-shell-interpreter      "ipython"            )
  (setq-default python-shell-interpreter-args "--simple-prompt -i" ))
 ((executable-find "python")
  (setq-default python-shell-interpreter      "python"             )
  (setq-default python-shell-interpreter-args "-i"                 )) )

(global-unset-key             [down              ]                              )
(global-unset-key             [left              ]                              )
(global-unset-key             [right             ]                              )
(global-unset-key             [up                ]                              )
(global-set-key               (kbd "<f1>"        ) 'run-shell                   )
(global-set-key               (kbd "<f2>"        ) 'run-ibuffer                 )
(global-set-key               (kbd "<f3>"        ) 'comment-line                )
(global-set-key               (kbd "<f4>"        ) 'spell-checker               )
(global-set-key               (kbd "<f5>"        ) 'bookmark-set                )
(global-set-key               (kbd "<f6>"        ) 'bookmark-jump               )
(global-set-key               (kbd "<f7>"        ) 'bookmark-bmenu-list         )
(global-set-key               (kbd "<f8>"        ) 'kmacro-start-macro          )
(global-set-key               (kbd "<f9>"        ) 'kmacro-end-macro            )
(global-set-key               (kbd "<f10>"       ) 'kmacro-call-macro           )
(global-set-key               (kbd "<f11>"       ) 'toggle-frame-fullscreen     )
(global-set-key               (kbd "<f12>"       ) 'kill-other-buffers          )
(global-set-key               (kbd "C-c C-f"     ) 'recentf-open-files          )
(global-set-key               (kbd "C-x C-s"     ) 'format-save-buffer          )
(global-set-key               (kbd "S-C-<down>"  ) 'shrink-window               )
(global-set-key               (kbd "S-C-<left>"  ) 'shrink-window-horizontally  )
(global-set-key               (kbd "S-C-<right>" ) 'enlarge-window-horizontally )
(global-set-key               (kbd "S-C-<up>"    ) 'enlarge-window              )
(windmove-default-keybindings                      'shift                       )

(add-to-list 'package-archives '("gnu"   . "https://elpa.gnu.org/packages/" ) t )
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"    ) t )
(add-to-list 'package-archives '("org"   . "https://orgmode.org/elpa/"      ) t )
(package-initialize)
(unless package-archive-contents
  (ignore-errors (package-refresh-contents)))

(install-package 'alect-themes)
(if (package-installed-p 'alect-themes)
    (load-theme 'alect-light t nil))

(install-package 'spaceline)
(if (require 'spaceline-config)
    (spaceline-emacs-theme))

(install-package 'markdown-mode )
(install-package 'org           )
(install-package 'org-bullets   )
(when (and (require 'ob        nil :noerror )
           (require 'org       nil :noerror )
           (require 'org-tempo nil :noerror ) )
  (org-babel-do-load-languages 'org-babel-load-languages
                               '(( awk        . t )
                                 ( emacs-lisp . t )
                                 ( gnuplot    . t )
                                 ( lisp       . t )
                                 ( makefile   . t )
                                 ( org        . t )
                                 ( perl       . t )
                                 ( python     . t )
                                 ( scheme     . t )
                                 ( sed        . t )
                                 ( shell      . t )) )
  (setq-default org-checkbox-hierarchical-statistics nil )
  (setq-default org-confirm-babel-evaluate           nil )
  (setq-default org-fontify-done-headline            t   )
  (setq-default org-fontify-quote-and-verse-blocks   t   )
  (setq-default org-fontify-whole-heading-line       t   )
  (setq-default org-hide-emphasis-markers            t   )
  (setq-default org-return-follows-link              t   )
  (setq-default org-src-preserve-indentation         t   )
  (setq-default org-src-tab-acts-natively            t   )
  (setq-default org-startup-folded                   nil )
  (setq-default org-startup-indented                 t   ) )
(if (require 'org-bullets nil :noerror)
    (add-hook 'org-mode-hook (lambda () (org-bullets-mode)) ))

(install-package 'yasnippet          )
(install-package 'yasnippet-snippets )
(if (require 'yasnippet nil :noerror)
    (yas-global-mode))

(install-package 'expand-region)
(if (require 'expand-region nil :noerror)
    (global-set-key (kbd "C-=") 'er/expand-region))

(install-package 'avy)
(when (package-installed-p 'avy)
  (avy-setup-default)
  (setq-default avy-background  t   )
  (setq-default avy-all-windows nil )
  (global-set-key (kbd "M-g c") 'avy-goto-char   )
  (global-set-key (kbd "M-g l") 'avy-goto-line   )
  (global-set-key (kbd "M-g w") 'avy-goto-word-1 ) )

(when (executable-find "cmake")
  (install-package 'cmake-font-lock )
  (install-package 'cmake-mode      ) )
(require 'cmake-mode nil :noerror)
(when (package-installed-p 'cmake-font-lock)
  (add-hook 'cmake-mode-hook 'cmake-font-lock-activate)
  (autoload 'cmake-font-lock-activate "cmake-font-lock" nil t))

(install-package 'hl-todo)
(if (package-installed-p 'hl-todo)
    (global-hl-todo-mode))

(when (executable-find "git")
  (install-package 'magit)
  (global-set-key (kbd "C-x g") 'magit-status))

(install-package 'modern-cpp-font-lock)
(if (require 'modern-cpp-font-lock nil :noerror)
    (modern-c++-font-lock-global-mode))

(install-package 'flycheck)
(if (require 'flycheck nil :noerror)
    (global-flycheck-mode))

(if (executable-find "sbcl")
    (install-package 'slime))
(when (and (require 'slime           nil :noerror )
           (require 'slime-autoloads nil :noerror ))
  (setq-default common-lisp-style-default "sbcl" )
  (setq-default inferior-lisp-program     "sbcl" )
  (slime-setup '(slime-asdf slime-fancy slime-tramp slime-indentation)))

(if (executable-find "racket")
    (install-package 'racket-mode))
(when (require 'racket-mode nil :noerror)
  (add-hook 'racket-mode-hook      'racket-unicode-input-method-enable )
  (add-hook 'racket-repl-mode-hook 'racket-unicode-input-method-enable ) )

(install-package 'counsel )
(install-package 'ivy     )
(install-package 'swiper  )
(if (and (package-installed-p 'counsel )
         (package-installed-p 'ivy     )
         (package-installed-p 'swiper  ) )
    (progn
      (ivy-mode     )
      (counsel-mode )
      (setq-default ivy-initial-inputs-alist  nil )
      (setq-default ivy-use-selectable-prompt t   )
      (setq-default ivy-use-virtual-buffers   t   )
      (global-set-key (kbd "C-s"     ) 'swiper            )
      (global-set-key (kbd "C-x C-f" ) 'counsel-find-file )
      (global-set-key (kbd "M-x"     ) 'counsel-M-x       ) )
  (when (require 'ido nil :noerror)
    (ido-mode 1)
    (setq-default ido-enable-flex-matching t )
    (setq-default ido-everywhere           t )
    (setq-default ido-use-virtual-buffers  t ) ))

(install-package 'projectile)
(when (require 'projectile nil :noerror)
  (projectile-mode)
  (setq-default projectile-completion-system 'ivy             )
  (setq-default projectile-indexing-method   'native          )
  (setq-default projectile-sort-order        'recently-active )
  (define-key projectile-mode-map (kbd "C-c p" ) 'projectile-command-map ))

(install-package 'company)
(when (require 'company nil :noerror)
  (add-hook 'prog-mode-hook 'company-mode)
  (setq-default company-idle-delay            0 )
  (setq-default company-selection-wrap-around t )
  (setq-default company-tooltip-limit         5 )
  (define-key company-active-map (kbd "<tab>" ) 'company-complete        )
  (define-key company-active-map (kbd "C-d"   ) 'company-show-doc-buffer )
  (define-key company-active-map (kbd "C-n"   ) 'company-select-next     )
  (define-key company-active-map (kbd "C-p"   ) 'company-select-previous ) )

(when (executable-find "clangd")
  (install-package 'lsp-ivy  )
  (install-package 'lsp-mode )
  (when (require 'lsp-mode nil :noerror)
    (add-hook 'c-mode-hook      'lsp )
    (add-hook 'c++-mode-hook    'lsp )
    (add-hook 'python-mode-hook 'lsp )
    (setq-default lsp-auto-guess-root              t   )
    (setq-default lsp-eldoc-render-all             t   )
    (setq-default lsp-enable-file-watchers         nil )
    (setq-default lsp-enable-symbol-highlighting   nil )
    (setq-default lsp-headerline-breadcrumb-enable nil )
    (setq-default lsp-modeline-code-actions-enable nil )
    (setq-default lsp-modeline-diagnostics-enable  nil )
    (setq-default lsp-progress-via-spinner         nil )
    (setq-default lsp-semantic-highlighting        t   )
    (setq-default lsp-semantic-tokens-enable       t   )
    (define-key lsp-mode-map (kbd "M-<return>") 'lsp-rename) ))
(unless (package-installed-p 'lsp-mode) (use-cedet-semantic))

(if (executable-find "python")
    (install-package 'elpy))
(when (require 'elpy nil :noerror)
  (elpy-enable)
  (add-hook 'elpy-mode-hook
            (lambda () (add-hook 'before-save-hook 'elpy-format-code    nil t )) )
  (add-hook 'elpy-mode-hook
            (lambda () (add-hook 'before-save-hook 'elpy-black-fix-code nil t )) ))

(provide '.emacs)
;;; .emacs ends here
