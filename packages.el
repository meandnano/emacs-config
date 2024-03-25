; Install and configure random packages that don't deserve
; to be put into separate files

;; Magit
(use-package seq :defer t)
(use-package transient :defer t)
(use-package magit
  :defer t
  :after (general)
  :custom
  (magit-repository-directories (list (cons elpaca-repos-directory 1)))
  (magit-diff-refine-hunk 'all)
  :config
  (transient-bind-q-to-quit))

;; Projectile
(use-package projectile
  :diminish
  :config
  (projectile-mode 1))
  
;; Sudo edit
(use-package sudo-edit
  :config
  (space-keys
    "f u" '(sudo-edit-find-file :wk "Sudo find file")
    "f U" '(sudo-edit :wk "Sudo edit file"))
 )

;; Rainbow mode (shows actual colors behind hex codes)
(use-package rainbow-mode
  :diminish
  :hook org-mode prog-mode)
