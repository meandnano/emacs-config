; emacs and in-buffer text completion

;; General-purpose completion framework (Ivy)
(use-package ivy
  :diminish
  :bind
  ;; ivy-resume resumes the last Ivy-based completion.
  (("C-c C-r" . ivy-resume)
   ("C-x B" . ivy-switch-buffer-other-window))
  :custom
  (setq ivy-use-virtual-buffers t)
  (setq ivy-count-format "(%d/%d) ")
  (setq enable-recursive-minibuffers t)
  :config
  (ivy-mode))

(use-package all-the-icons-ivy-rich
  :ensure t
  :init (all-the-icons-ivy-rich-mode 1))

(use-package ivy-rich
  :after ivy
  :ensure t
  ;; :custom
  :config
    (setq ivy-rich-path-style 'abbrev)
    (ivy-rich-mode 1));; this gets us descriptions in M-x.
   
;; better M-x (Ivy-based)
(use-package counsel
  :after ivy
  :diminish
  :config (counsel-mode))

;; Flycheck
(use-package flycheck
  :ensure t
  :defer t
  :diminish
  :init (global-flycheck-mode))

;; In-buffer completions
(use-package company
  :defer 2
  :diminish
  :custom
  (company-begin-commands '(self-insert-command))
  (company-idle-delay .1)
  (company-minimum-prefix-length 2)
  (company-show-numbers t)
  (company-tooltip-align-annotations 't)
  (global-company-mode t))

(use-package company-box
  :after company
  :diminish
  :hook (company-mode . company-box-mode))

;; Sort completion items
(use-package prescient)
(use-package company-prescient
  :after (company prescient))
(use-package ivy-prescient
  :after (ivy prescient))
