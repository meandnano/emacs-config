;; Disable window bars
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

;; Line numbers
(global-display-line-numbers-mode 1)
(global-visual-line-mode t)

;; Theme
(use-package catppuccin-theme)
(elpaca-wait)
(load-theme 'catppuccin :no-confirm)
(setq catppuccin-flavor 'mocha) ;; or 'latte, 'macchiato, or 'mocha
(catppuccin-reload)

;; Fonts
  (set-face-attribute 'default nil
    :font "Iosevka"
    :height 150
    :weight 'medium)
  (set-face-attribute 'variable-pitch nil
    :font "Arial"
    :height 160
    :weight 'medium)
  (set-face-attribute 'fixed-pitch nil
    :font "Iosevka"
    :height 150
    :weight 'medium)
  ;; Makes commented text and keywords italics.
  ;; This is working in emacsclient but not emacs.
  ;; Your font must have an italic face available.
  (set-face-attribute 'font-lock-comment-face nil
    :slant 'italic)
  (set-face-attribute 'font-lock-keyword-face nil
    :slant 'italic)

 ;; This sets the default font on all graphical frames created after restarting Emacs.
 ;; Does the same thing as 'set-face-attribute default' above, but emacsclient fonts
 ;; are not right unless I also add this method of setting the default font.
 (add-to-list 'default-frame-alist '(font . "JetBrains Mono-11"))

 ;; Uncomment the following line if line spacing needs adjusting.
 (setq-default line-spacing 0.12)


;; All the icons!
(use-package all-the-icons
  :ensure t
  :if (display-graphic-p))

(use-package all-the-icons-dired
  :hook (dired-mode . (lambda () (all-the-icons-dired-mode t))))
