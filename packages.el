; Install and configure random packages that don't deserve
; to be put into separate files

;; Sudo edit
(use-package sudo-edit
  :config
  (space-keys
    "f u" '(sudo-edit-find-file :wk "Sudo find file")
    "f U" '(sudo-edit :wk "Sudo edit file"))
 )