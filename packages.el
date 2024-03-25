; Install and configure random packages that don't deserve
; to be put into separate files

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

;; Projectile
(use-package projectile
  :diminish
  :config
  (projectile-mode 1))
  
