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

(defvar my-term-shell "/bin/zsh")
(defadvice ansi-term (before force-bash)
  (interactive (list my-term-shell)))
(ad-activate 'ansi-term)

(global-set-key (kbd "M-RET") 'ansi-term)

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

;;(setq ido-enable-flex-matching nil)
;;(setq ido-create-new-buffer 'always)
;;(setq ido-everywhere t)
''(ido-mode 1)

(use-package ido-vertical-mode
  :ensure t
  :init
  (ido-vertical-mode 1))
(setq ido-vertical-define-keys 'C-n-and-C-p-only)

(use-package smex
  :ensure t
  :init (smex-initialize)
  :bind
  ("M-x" . smex))

(global-set-key (kbd "C-x C-b") 'ido-switch-buffer)

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

(use-package yasnippet
  :ensure t
  :config
  (use-package yasnippet-snippets
    :ensure t)
  (yas-reload-all))

(use-package flycheck
  :ensure t)

(use-package company
  :ensure t
  :config
  (setq company-idle-delay 0)
  (setq company-minimum-prefix-length 3))

(with-eval-after-load 'company
  (define-key company-active-map (kbd "M-n") nil)
  (define-key company-active-map (kbd "M-p") nil)
  (define-key company-active-map (kbd "C-n") #'company-select-next)
  (define-key company-active-map (kbd "C-p") #'company-select-previous)
  (define-key company-active-map (kbd "SPC") #'company-abort))

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

(use-package spaceline
  :ensure t
  :config
  (require 'spaceline-config)
  (setq powerline-default-separator (quote arrow))
  (spaceline-spacemacs-theme))

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
  (diminish 'helm-mode))

(use-package dmenu
  :ensure t
  :bind
  ("s-m" . 'dmenu))

(use-package symon
  :ensure t
  :bind
  ("s-y" . symon-mode))

(use-package swiper
  :ensure t
  :bind ("C-s" . 'swiper))

(show-paren-mode 1)

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
  :config
  (define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
  (define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
  (define-key projectile-mode-map [?\s-d] 'projectile-find-dir)
  (define-key projectile-mode-map [?\s-p] 'projectile-switch-project)
  (define-key projectile-mode-map [?\s-f] 'projectile-find-file)
  (define-key projectile-mode-map [?\s-g] 'projectile-grep)
  (setq projectile-project-search-path '("~/dev/"))
  (projectile-mode +1))

(use-package expand-region
  :ensure t
  :bind ("C-q" . er/expand-region))

(use-package popup-kill-ring
  :ensure t
  :bind ("M-y" . popup-kill-ring))

(use-package helm
  :ensure t
  :bind
  ("C-x C-f" . 'helm-find-files)
  ("C-x C-b" . 'helm-buffers-list)
  ("M-x" . 'helm-M-x)
  :config
  (defun fisthu/hide-minibuffer ()
    (when (with-helm-buffer helm-echo-input-in-header-line)
      (let ((ov (make-overlay (point-min) (point-max) nil nil t)))
	(overlay-put ov 'window (selected-window))
	(overlay-put ov 'face
		     (let ((bg-color (face-background 'default nil)))
		       `(:background ,bg-color :foreground ,bg-color)))
	(setq-local cursor-type nil))))
  (add-hook 'helm-minibuffer-set-up-hook 'fisthu/hide-minibuffer)
  (setq helm-autoresize-max-height 0
	helm-autoresize-min-height 40
	helm-M-x-fuzzy-match t
	helm-buffers-fuzzy-matching t
	helm-recentf-fuzzy-match t
	helm-semantic-fuzzy-match t
	helm-imenu-fuzzy-match t
	helm-split-window-in-side-p nil
	helm-move-to-line-cycle-in-source nil
	helm-ff-search-library-in-sexp t
	helm-scroll-amount 8
	helm-echo-input-in-header-line t)
  :init
  (helm-mode 1))

(require 'helm-config)
(helm-autoresize-mode 1)
(define-key helm-find-files-map (kbd "C-b") 'helm-find-files-up-one-level)
(define-key helm-find-files-map (kbd "C-f") 'helm-execute-persistent-action)
