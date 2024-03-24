(org-babel-load-file
 (expand-file-name
  "config.org"
  user-emacs-directory))

(load (concat user-emacs-directory "elpaca"))
(load (concat user-emacs-directory "evil"))
(load (concat user-emacs-directory "keys"))
(load (concat user-emacs-directory "ui"))
(load (concat user-emacs-directory "org"))
