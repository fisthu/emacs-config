(defconst IS-MAC (eq system-type 'darwin))

(when IS-MAC
  (setq mac-command-modifier 'super)
  (setq mac-option-modifier 'meta))

(use-package zerodark-theme
  :ensure t
  :init
  (load-theme 'zerodark t))

(let ((class '((class color) (min-colors 89)))
      (default (if (true-color-p) "#abb2bf" "#afafaf"))
      (light (if (true-color-p) "#ccd4e3" "#d7d7d7"))
      (background (if (true-color-p) "#282c34" "#333333"))
      (background-dark (if (true-color-p) "#24282f" "#222222"))
      (background-darker (if (true-color-p) "#22252c" "#222222"))
      (mode-line-inactive (if "#1c2129" "#222222"))
      (mode-line-active (if (true-color-p) "#6f337e" "#875f87"))
      (background-lighter (if (true-color-p) "#3a3f4b" "#5f5f5f"))
      (background-red (if (true-color-p) "#4c3840" "#5f5f5f"))
      (bright-background-red (if (true-color-p) "#744a5b" "#744a5b"))
      (background-purple (if (true-color-p) "#48384c" "#5f5f5f"))
      (background-blue (if (true-color-p) "#38394c" "#444444"))
      (bright-background-blue (if (true-color-p) "#4e5079" "#4e5079"))
      (background-green (if (true-color-p) "#3d4a41" "#5f5f5f"))
      (bright-background-green (if (true-color-p) "#3f6d54" "#3f6d54"))
      (background-orange (if (true-color-p) "#4a473d" "#5f5f5f"))
      (hl-line (if (true-color-p) "#2c323b" "#333333"))
      (grey (if (true-color-p) "#cccccc" "#cccccc"))
      (grey-dark (if (true-color-p) "#666666" "#666666"))
      (highlight (if (true-color-p) "#3e4451" "#5f5f5f"))
      (comment (if (true-color-p) "#687080" "#707070"))
      (orange (if (true-color-p) "#da8548" "#d7875f"))
      (orange-light (if (true-color-p) "#ddbd78" "#d7af87"))
      (red (if (true-color-p) "#ff6c6b" "#ff5f5f"))
      (purple (if (true-color-p) "#c678dd" "#d787d7"))
      (purple-dark (if (true-color-p) "#64446d" "#5f5f5f"))
      (blue (if (true-color-p) "#61afef" "#5fafff"))
      (blue-dark (if (true-color-p) "#1f5582" "#005f87"))
      (green (if (true-color-p) "#98be65" "#87af5f"))
      (green-light (if (true-color-p) "#9eac8c" "#afaf87"))
      (peach "PeachPuff3")
      (diff-added-background (if (true-color-p) "#284437" "#284437"))
      (diff-added-refined-background (if (true-color-p) "#1e8967" "#1e8967"))
      (diff-removed-background (if (true-color-p) "#583333" "#580000"))
      (diff-removed-refined-background (if (true-color-p) "#b33c49" "#b33c49"))
      (diff-current-background (if (true-color-p) "#29457b" "#29457b"))
      (diff-current-refined-background (if (true-color-p) "#4174ae" "#4174ae")))

  (custom-theme-set-faces
   'zerodark

   `(fancy-battery-charging ((,class (:background ,background-blue :height 1.0 :bold t))))
   `(fancy-battery-discharging ((,class (:background ,background-blue :height 1.0))))
   `(fancy-battery-critical ((,class (:background ,background-blue :height 1.0))))

   ;; mode line stuff
   `(mode-line ((,class (:background ,background-blue :height 1.0 :foreground ,blue
				     :distant-foreground ,background-blue
				     :box ,(when zerodark-use-paddings-in-mode-line
					     (list :line-width 6 :color background-blue))))))

   `(mode-line-inactive ((,class (:background ,background-blue :height 1.0 :foreground ,default
					      :distant-foreground ,background-blue
					      :box ,(when zerodark-use-paddings-in-mode-line
						      (list :line-width 6 :color background-blue))))))

   `(header-line ((,class (:inherit mode-line-inactive))))

   `(powerline-active0 ((,class (:height 1.0 :foreground ,blue :background ,background-blue
					 :distant-foreground ,background-blue))))
   `(powerline-active1 ((,class (:height 1.0 :foreground ,blue :background ,background-blue
					 :distant-foreground ,background-blue))))
   `(powerline-active2 ((,class (:height 1.0 :foreground ,blue :background ,background-blue
					 :distant-foreground ,background-blue))))
   `(powerline-inactive0 ((,class (:height 1.0 :foreground ,blue :background ,background-blue
					   :distant-foreground ,background-blue))))
   `(powerline-inactive1 ((,class (:height 1.0 :foreground ,blue :background ,background-blue
					   distant-foreground ,background-blue))))
   `(powerline-inactive2 ((,class (:height 1.0 :foreground ,blue :background ,background-blue
					   :distant-foreground ,background-blue))))

   `(dashboard-heading-face ((,class (:background ,background :foreground ,blue
						  :bold t :height 1.2))))
   `(dashboard-banner-logo-title-face ((,class (:background ,background :foreground ,blue
							    :bold t :height 1.2))))
   `(widget-button ((,class (:background ,background :foreground ,default :bold nil
					 :underline t :height 0.9))))

   ;; erc stuff
   `(erc-nick-default-face ((,class :foreground ,blue :background ,background :weight bold)))

   ;; org stuff
   `(outline-1 ((,class (:foreground ,blue :weight bold :height 1.8 :bold nil))))
   `(outline-2 ((,class (:foreground ,purple :weight bold :height 1.7 :bold nil))))
   `(outline-3 ((,class (:foreground ,peach :weight bold :height 1.6 :bold nil))))
   `(outline-4 ((,class (:foreground ,green-light :weight bold :height 1.5 :bold nil))))
   `(outline-5 ((,class (:foreground ,blue :weight bold :height 1.4 :bold nil))))
   `(outline-6 ((,class (:foreground ,purple :weight bold :height 1.3 :bold nil))))
   `(outline-7 ((,class (:foreground ,peach :weight bold :height 1.2 :bold nil))))
   `(outline-8 ((,class (:foreground ,green-light :weight bold :height 1.1 :bold nil))))

   `(org-block-begin-line ((,class (:background ,background-blue :foreground ,blue
						:bold t :height 1.0))))
   `(org-block-end-line ((,class (:background ,background-blue :foreground ,blue
					      :bold t :height 1.0))))))

(add-to-list 'default-frame-alist '(ns-transparent-titlebar . t))
(add-to-list 'default-frame-alist '(ns-appearance . dark))

(defvar my-term-shell "/bin/zsh")
(defadvice ansi-term (before force-bash)
  (interactive (list my-term-shell)))
(ad-activate 'ansi-term)

(use-package which-key
  :ensure t
  :init
  (which-key-mode))

(use-package beacon
  :ensure t
  :init
  (beacon-mode 1))

(setq org-ellipsis " ")
(setq org-src-fontify-natively t)
(setq org-src-tab-acts-natively t)
(setq org-confirm-babel-evaluate nil)
(setq org-export-with-smart-quotes t)
(setq org-src-window-setup 'current-window)
(add-hook 'org-mode-hook 'org-indent-mode)

(use-package org-bullets
  :ensure t
  :config
  (add-hook 'org-mode-hook (lambda () (org-bullets-mode))))

(add-to-list 'org-structure-template-alist
		  '("el" "#+BEGIN_SRC emacs-lisp\n?\n#+END_SRC"))

(add-hook 'org-mode-hook
	  '(lambda ()
	     (visual-line-mode 1)))

(global-set-key (kbd "C-c '") 'org-edit-src-code)

;;(defun fisthu/minibuffer-setup-hook ()
;;  (setq gc-cons-threshold most-positive-fixnum))

;;(defun fisthu/minibuffer-exit-hook ()
;;  (setq gc-cons-threshold 800000))

;;(add-hook 'minibuffer-setup-hook #'fisthu/minibuffer-setup-hook)
;;(add-hook 'minibuffer-exit-hook #'fisthu/minibuffer-exit-hook)

(defalias 'yes-or-no-p 'y-or-n-p)

(when window-system (add-hook 'prog-mode-hook 'hl-line-mode))

(when window-system
  (use-package pretty-mode
    :ensure t
    :config
    (global-pretty-mode t)))

(tool-bar-mode -1)

(menu-bar-mode -1)

(scroll-bar-mode -1)

(setq inhibit-startup-message t)

(setq scroll-conservatively 100)

(setq ring-bell-function 'ignore)

(global-subword-mode 1)
(add-hook 'minibuffer-setup-hook 'subword-mode)

(setq make-backup-files nil)
(setq auto-save-default nil)

(setq electric-pair-pairs '(
          (?\( . ?\))
          (?\[ . ?\])
          (?\{ . ?\})
          ))
(electric-pair-mode t)

(line-number-mode 1)
(column-number-mode 1)

(setq display-time-24hr-format t)
(display-time-mode 1)

(setq locale-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

(setq tab-width 2)
;;(setq-default indent-tabs-mode nil)

;; ws-butler cleans up whitespace only on the lines you've edited,
 ;; keeping messy colleagues happy ;-) Important that it doesn't clean
 ;; the whitespace on currrent line, otherwise, eclim leaves messy
 ;; code behind.
 (use-package ws-butler
 :ensure t
 :init
 (setq ws-butler-keep-whitespace-before-point nil)
 :config
 (ws-butler-global-mode))

 (defun fisthu/indent-and-fix-whitespace()
   (interactive)
   (delete-trailing-whitespace)
   (untabify (point-min) (point-max))
   (indent-region (point-min) (point-max)))
(global-set-key (kbd "C-M-\\") 'fisthu/indent-and-fix-whitespace)

(global-set-key [ ( super backspace) ] 'backward-kill-word)

;; newline and indent (like other editors)
(global-set-key "\C-m" 'newline-and-indent)

;; wrap long lines visually, not actually.
(global-visual-line-mode 1)

;;(setq ido-enable-flex-matching nil)
;;(setq ido-create-new-buffer 'always)
;;(setq ido-everywhere t)
;;(ido-mode 1)

;;(use-package ido-vertical-mode
;;  :ensure t
;;  :init
;;  (ido-vertical-mode 1))
;;(setq ido-vertical-define-keys 'C-n-and-C-p-only)
(use-package ido-vertical-mode
  :ensure t
  :init
  (setq ido-vertical-indicator ">>")
  (setq ido-vertical-show-count nil)
  (setq ido-vertical-define-keys 'C-n-and-C-p-only)
  :config
  (ido-vertical-mode 1))

;;(use-package smex
;;  :ensure t
;;  :init (smex-initialize)
;;  :bind
;;  ("M-x" . smex))

;;(global-set-key (kbd "C-x C-b") 'ido-switch-buffer)

(global-set-key (kbd "C-x b") 'ibuffer)

(setq ibuffer-expert t)

(defun fisthu/kill-current-buffer ()
  "Kills the current buffer."
  (interactive)
  (kill-buffer (current-buffer)))
(global-set-key (kbd "C-x k") 'fisthu/kill-current-buffer)

(defun fisthu/kill-all-buffers ()
  "Kill all buffers!."
  (interactive)
  (mapc 'kill-buffer (buffer-list)))
(global-set-key (kbd "C-M-s-k") 'fisthu/kill-all-buffers)

(use-package avy
  :ensure t
  :bind
  ("M-s" . avy-goto-char))

(defun fisthu/open-cfg ()
  (interactive)
  (find-file "~/.emacs.d/config.org"))
(global-set-key (kbd "C-c e") 'fisthu/open-cfg)

(defun fisthu/reload-cfg ()
  (interactive)
  (org-babel-load-file (expand-file-name "~/.emacs.d/config.org")))
(global-set-key (kbd "C-c r") 'fisthu/reload-cfg)

(use-package rainbow-mode
  :ensure t
  :init
  (add-hook 'prog-mode-hook 'rainbow-mode))

(use-package rainbow-delimiters
  :ensure t
  :init
  (add-hook 'prog-mode-hook #'rainbow-delimiters-mode))

(use-package switch-window
  :ensure t
  :config
  (setq switch-window-input-style 'minibuffer)
  (setq switch-window-increase 4)
  (setq switch-window-threshold 2)
  (setq switch-window-shortcut-style 'qwerty)
  (setq switch-window-qwerty-shortcuts
  '("a" "s" "d" "f" "h" "j" "k" "l"))
  :bind
  ([remap other-window] . switch-window))

(defun fisthu/split-and-follow-horizontally ()
  (interactive)
  (split-window-below)
  (balance-windows)
  (other-window 1))
(global-set-key (kbd "C-x 2") 'fisthu/split-and-follow-horizontally)

(defun fisthu/split-and-follow-vertically ()
  (interactive)
  (split-window-right)
  (balance-windows)
  (other-window 1))
(global-set-key (kbd "C-x 3") 'fisthu/split-and-follow-vertically)

(defun fisthu/copy-whole-line ()
  (interactive)
  (save-excursion
    (kill-new
     (buffer-substring
(point-at-bol)
(point-at-eol)))))
(global-set-key (kbd "C-c l c") 'fisthu/copy-whole-line)

(defun fisthu/copy-word ()
  (interactive)
  (save-excursion
    (forward-char 1)
    (backward-word)
    (kill-word 1)
    (yank)))
(global-set-key (kbd "C-c w c") 'fisthu/copy-word)

(defun fisthu/kill-inner-word ()
  "Kills the entire word where the current cursor is in. Equivalent to 'ciw' in vim."
  (interactive)
  (forward-char 1)
  (backward-word)
  (kill-word 1))
(global-set-key (kbd "C-c w k") 'fisthu/kill-inner-word)

(use-package mark-multiple
  :ensure t
  :bind ("C-c q" . 'mark-next-like-this))

(global-set-key (kbd "C-c l k") 'kill-whole-line)

(use-package hungry-delete
  :ensure t
  :config (global-hungry-delete-mode))

(use-package dashboard
  :ensure t
  :config
  (dashboard-setup-startup-hook)
  (setq dashboard-startup-banner "~/.emacs.d/img/dashLogo.png")
  (setq dashboard-items '((recents . 5)
        (projects . 5)))
  (setq dashboard-banner-logo-title "Assalamualaikum!"))

(use-package exec-path-from-shell
  :ensure t
  :config
  (when IS-MAC
    (setq exec-path-from-shell-check-startup-files -1)
    (exec-path-from-shell-initialize)))

(use-package yasnippet
  :ensure t
  :init
  (setq yas/root-directory '("~/.emacs.d/snippets"))
  :config
  (use-package yasnippet-snippets
    :ensure t)
  (yas-reload-all)
  (yas-global-mode 1))

(use-package flycheck
  :ensure t
  :init
  (add-to-list 'display-buffer-alist
               `(,(rx bos "*Flycheck errors" eos)
                 (display-buffer-reuse-window
                  display-buffer-in-side-window)
                 (side . bottom)
                 (reusable-frames . visible)
                 (window-height . 0.15))))

;; (use-package lsp-mode
;;   :ensure t
;;   :commands lsp
;;   :config
;;   (setq lsp-auto-guess-root nil
;;         lsp-prefer-flymake nil)
;;   :bind (:map lsp-mode-map ("C-c C-f" . lsp-format-buffer))
;;   :hook ((ruby-mode) . lsp))

(use-package lsp-mode
  :ensure t
  :commands (lsp lsp-deferred)
  :bind
  (("ESC g i" . 'lsp-find-implementation)
   ("M-RET" . 'lsp-execute-code-action)
   (:map lsp-mode-map ("C-c C-f" . 'lsp-format-buffer)))
  :config
  (setq lsp-inhibit-message t
        lsp-eldoc-render-all nil
        lsp-enable-file-watchers nil
        lsp-highlight-symbol-at-point nil
        lsp-prefer-flymake nil
        lsp-auto-guess-root nil)
  :hook
  ((ruby-mode web-mode) . 'lsp))

(use-package lsp-ui
  :after lsp-mode
  :ensure t
  :commands lsp-ui-mode
  :custom-face
  (lsp-ui-doc-background ((t (:background nil))))
  (lsp-ui-doc-header (( t (:inherit (font-lock-string-face italic)))))
  :bind (:map lsp-ui-mode-map
              ([remap xref-find-definitions] . lsp-ui-peek-find-definitions)
              ([remap xref-find-references] . lsp-ui-peek-find-references)
              ("C-c u" . lsp-ui-imenu))
  :custom
  (lsp-ui-doc-enable nil) ;; set to t to activate documentation
  (lsp-ui-doc-header t)
  (lsp-ui-doc-include-signature t)
  (lsp-ui-doc-position 'top)
  (lsp-ui-doc-border (face-foreground 'default))
  (lsp-ui-sideline-enable t)
  (lsp-ui-sideline-ignore-duplicate t)
  (lsp-ui-sideline-show-code-actions nil)
  :config
  ;; use lsp-ui-doc-webkit only on GUI
  (setq lsp-ui-doc-use-webkit t)
  (defadvice lsp-ui-imenu (after hide-lsp-ui-imenu-mode-line activate)
    (setq mode-line-format nil)))

(use-package helm-lsp
  :after lsp-mode
  :ensure t
  :commands helm-lsp-workspace-symbol)

(use-package company
  :ensure t
  :config
  (setq company-idle-delay 0.1)
  (setq company-minimum-prefix-length 3))

(with-eval-after-load 'company
  (define-key company-active-map (kbd "M-n") nil)
  (define-key company-active-map (kbd "M-p") nil)
  (define-key company-active-map (kbd "C-n") #'company-select-next)
  (define-key company-active-map (kbd "C-p") #'company-select-previous)
  (define-key company-active-map (kbd "SPC") #'company-abort))

(use-package company-emoji
  :ensure t)
(add-to-list 'company-backends 'company-emoji)

(use-package company-lsp
  :ensure t
  :config
  (setq company-lsp-enable-snippet t)
  (push 'company-lsp company-backends))

(add-hook 'emacs-lisp-mode-hook 'eldoc-mode)
(add-hook 'emacs-lisp-mode-hook 'yas-minor-mode)
(add-hook 'emacs-lisp-mode-hook 'company-mode)

(use-package slime
  :ensure t
  :config
  (setq inferior-lisp-program "/usr/local/bin/sbcl")
  (setq slime-contribs '(slime-fancy)))

(use-package slime-company
  :ensure t
  :init
  (require 'company)
  (slime-setup '(slime-fancy slime-company)))

(defun fisthu/insert-serial-version-uuid()
  (interactive)
  (insert "private static final long serialVersionUID = 1L;"))

(defun fisthu/default-code-style-hook()
  (setq c-basic-offset 2
        c-label-offset 0
        tab-width 2
        indent-tabs-mode nil
        require-final-newline nil))
(add-hook 'java-mode-hook 'fisthu/default-code-style-hook)

(use-package idle-highlight  :ensure t)

(defun nyong-java-mode-hook()
  (auto-fill-mode)
  (flycheck-mode)
  (idle-highlight)
  (subword-mode)
  (yas-minor-mode)
  (set-fringe-style '(8 . 0))
  (define-key c-mode-base-map (kbd "C-M-j") 'fisthu/insert-serial-version-uuid)
  (define-key c-mode-base-map (kbd "C-m") 'c-context-line-break))

;; fix indent for anonymous classes
(c-set-offset 'substatement-open 0)
(if (assoc 'inexpr-class c-offsets-alist)
    (c-set-offset 'inexpr-class 0))

;; indent argument on the next lineas indented body
(c-set-offset 'arglist-intro '++)
(add-hook 'java-mode-hook 'nyong-java-mode-hook)

(use-package hydra :ensure t)

(use-package lsp-java
  :ensure t
  :after lsp
  :init
  (setq lsp-java-vmargs
        (list
         "-noverify"
         "-Xmx1G"
         "-XX:+UseG1GC"
         "-XX:+UseStringDeduplication")
        ;; dont organise imports on save
        lsp-java-save-actions-organize-imports nil
        lsp-java-java-path "/usr/bin/java")
  :config
  (add-hook 'java-mode-hook 'lsp))

(use-package dap-mode
  :ensure t
  :after lsp-mode
  :config
  (dap-mode t)
  (dap-ui-mode t)
  (dap-tooltip-mode 1)
  (tooltip-mode 1)
  (dap-register-debug-template
   "localhost:5005"
   (list :type "java"
         :request "attach"
         :hostName "localhost"
         :port 5005)))

(use-package dap-java
  :ensure nil
  :after (lsp-java)
  ;; The :bind here makes use-package fail to lead the dap-java block!
  ;; :bind
  ;; (("C-c R" . dap-java-run-test-class)
  ;;  ("C-c d" . dap-java-debug-test-method)
  ;;  ("C-c r" . dap-java-run-test-method)
  ;;  )
  :config
  (global-set-key (kbd "<f7>") 'dap-step-in)
  (global-set-key (kbd "<f8>") 'dap-next)
  (global-set-key (kbd "<f9>") 'dap-continue))

(add-hook 'sql-interactive-mode-hook
          (lambda ()
             (company-mode)))

(setq js2-basic-offset 2
      js2-indent-on-enter-key t
      js2-enter-indents-newline t
      js-indent-level 2)

(use-package tern
  :ensure t
  :init
  (setq tern-explicit-port 35129
        tern-command '("~/.nvm/versions/node/v12.13.0/bin/tern"))
  :config
  (use-package company-tern
    :ensure t
    :config
    (add-to-list 'company-backends 'company-tern)))

(use-package js2-mode
  :ensure t
  :init
  (add-hook 'js2-mode-hook 'tern-mode)
  (add-hook 'js2-mode-hook #'lsp)
  (add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode)))

(use-package rvm
  :ensure t
  :config
  (add-hook 'ruby-mode-hook 'rvm-activate-corresponding-ruby))

(use-package web-mode
  :ensure t
  :config
  (add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode)))

(defun my-web-mode-hook ()
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-code-indent-offset 2))
(add-hook 'web-mode-hook 'my-web-mode-hook)

(use-package vue-mode
  :ensure t
  :mode "\\.vue\\'"
  :config
  (add-to-list 'vue-mode-hook 'lsp)
  (add-to-list 'vue-mode-hook 'smartparens-mode)
  (add-to-list 'vue-mode-hook 'web-mode))

(use-package spaceline
  :ensure t
  :config
  (require 'spaceline-config)
  (setq powerline-default-separator (quote arrow))
  (spaceline-spacemacs-theme))

(use-package treemacs
  :ensure t
  :init
  (add-hook 'treemacs-mode-hook (lambda () (treemacs-resize-icons 15))))

(use-package symon
  :ensure t
  :bind
  ("s-y" . symon-mode))

(use-package swiper
  :ensure t
  :bind ("C-s" . 'swiper))

(show-paren-mode 1)
(setq show-paren-style 'expression)

(use-package paren :ensure t)
(set-face-background 'show-paren-match (face-background 'default))
(set-face-attribute 'show-paren-match nil :weight 'extra-bold)

(use-package smartparens
  :ensure t
  :init
  (require 'smartparens-config)
  :config
  (smartparens-global-mode t))
;;(add-hook 'js-mode-hook #'smartparens-mode)

(use-package linum-relative
  :ensure t
  :config
  (setq linum-relative-current-symbol "")
  (add-hook 'prog-mode-hook 'linum-relative-mode))

(use-package async
  :ensure t
  :init (dired-async-mode 1))

(use-package projectile
  :ensure t
  :bind
  (("C-c p f" . 'projectile-find-file))
  :init
  (setq projectile-enable-caching t
        projectile-globally-ignored-file-suffixes
        '(
          "blob"
          "class"
          "classpath"
          "gz"
          "iml"
          "ipr"
          "jar"
          "pyc"
          "tkj"
          "war"
          "xd"
          "zip")
        projectile-globally-ignored-files '("TAGS" "*~")
        projectile-tags-command "/usr/local/bin/ctags -Re -f \"%s\" %s"
        projectile-mode-line '(:eval (format " [%s]" (projectile-project-name))))
  :config
  (define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
  (define-key projectile-mode-map [?\s-d] 'projectile-find-dir)
  (define-key projectile-mode-map [?\s-p] 'projectile-switch-project)
  (define-key projectile-mode-map [?\s-f] 'projectile-find-file)
  (define-key projectile-mode-map [?\s-g] 'projectile-grep)
  (setq projectile-project-search-path '("~/dev/"))
  (projectile-global-mode)
  (setq projectile-globally-ignored-directories
        (append (list
                 ".pytest_cache"
                 "__pycache__"
                 "build"
                 "elpa"
                 "node_modules"
                 "output"
                 "reveal.js"
                 "semanticdb"
                 "target"
                 "venv")
                projectile-globally-ignored-directories))
  )

(use-package helm-projectile
  :ensure t
  :init
  (setq helm-ag-insert-at-point 'symbol)
  :bind
  ("C-'" . 'helm-projectile-ag))

(use-package expand-region
  :ensure t
  :bind ("C-q" . 'er/expand-region))

(use-package popup-kill-ring
  :ensure t
  :bind ("M-y" . popup-kill-ring))

(use-package helm
  :ensure t
  :init
  (defun fisthu/list-buffers()
    (interactive)
    (let ((helm-full-frame t))
      (helm-mini)))
  :bind
  ("C-x C-f" . 'helm-find-files)
  ("C-x C-b" . 'fisthu/list-buffers)
  ("M-x" . 'helm-M-x))

;; auto scroll the compilation window
(setq compilation-scroll-output t)

;; scroll up and down while keeping the cursor
(defun help/scroll-up-one-line ()
  (interactive)
  (scroll-down 1))
(defun help/scroll-down-one-line ()
  (interactive)
  (scroll-up 1))
(global-set-key (kbd "M-p") 'help/scroll-down-one-line)
(global-set-key (kbd "M-n") 'help/scroll-up-one-line)

(use-package helm-ag
  :ensure t)

(use-package xclip
  :ensure t
  :config
  (xclip-mode 1))

(use-package diminish
  :ensure t
  :init
  (diminish 'hungry-delete-mode)
  (diminish 'beacon-mode)
  (diminish 'subword-mode)
  (diminish 'rainbow-mode)
  (diminish 'which-key-mode)
  (diminish 'flycheck-mode)
  (diminish 'yas-minor-mode)
  (diminish 'org-indent-mode)
  (diminish 'linum-relative-mode)
  (diminish 'visual-line-mode)
  (diminish 'page-break-lines-mode)
  (diminish 'rainbow-delimiters-mode)
  (diminish 'eldoc-mode)
  (diminish 'abbrev-mode)
  (diminish 'auto-fill-mode)
  (diminish 'company-mode)
  (diminish 'eldoc-mode)
  (diminish 'flycheck-mode)
  (diminish 'git-gutter+-mode)
  (diminish 'gtags-mode)
  (diminish 'java-mode)
  (diminish 'projectile-mode)
  (diminish 'visual-line-mode)
  (diminish 'winner-mode)
  (diminish 'ws-butler-global-mode)
  (diminish 'ws-butler-mode)
  (diminish 'yas-minor-mode)
  (diminish 'org-indent-mode)
  (diminish 'smartparens-mode)
  (diminish 'helm-mode))
