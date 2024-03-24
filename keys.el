;; Enable "Which key"
  (use-package which-key
    :init
      (which-key-mode 1)
    :config
    (setq which-key-side-window-location 'bottom
	  which-key-sort-order #'which-key-key-order-alpha
	  which-key-sort-uppercase-first nil
	  which-key-add-column-padding 1
	  which-key-max-display-columns nil
	  which-key-min-display-lines 6
	  which-key-side-window-slot -10
	  which-key-side-window-max-height 0.25
	  which-key-idle-delay 0.8
	  which-key-max-description-length 25
	  which-key-allow-imprecise-window-fit t
	  which-key-separator " → " ))

;; KEYBINDINGS!
  (use-package general
    :config
    (general-evil-setup)

    (general-define-key
     ;; Zoom
     "C-=" 'text-scale-increase
     "C--" 'text-scale-decrease

     "M-v" 'yank ;; Paste from clipboard

     "M-/" 'comment-line ;; Comment line
     )

    ;; set up 'SPC' as the global leader key
    (general-create-definer space-keys
      :states '(normal insert visual emacs)
      :keymaps 'override
      :prefix "SPC" ;; set leader
      :global-prefix "M-SPC") ;; access leader in insert mode

    (space-keys
      "." '(find-file :wk "Find file")
      "f c" '((lambda () (interactive) (find-file "~/.config/emacs")) :wk "Edit emacs config")
      "f r" '(counsel-recentf :wk "Show recent files")
      "f i" '((lambda () (interactive) (find-file user-init-file)) :wk "Edit emacs config")
      "f k" '((lambda () (interactive) (find-file "~/.config/emacs/keys.el")) :wk "Edit keybinding config"))
  
    (space-keys
      "b" '(:ignore t :wk "buffer")
      "b b" '(switch-to-buffer :wk "Switch buffer")
      "b i" '(ibuffer :wk "Show ibuffer")
      "b k" '(kill-this-buffer :wk "Kill this buffer")
      "b n" '(next-buffer :wk "Next buffer")
      "b p" '(previous-buffer :wk "Previous buffer")
      "b r" '(revert-buffer :wk "Reload buffer"))

    (space-keys
     "e" '(:ignore t :wk "eval")
     "e b" '(eval-buffer :wk "Evaluate buffer")
     "e d" '(eval-deful :wk "Evaluate defun at the point")
     "e e" '(eval-expression :wk "Evaluate expression at the point")
     "e l" '(eval-last-sexp :wk "Evaluate elisp expression at the point")
     "e r" '(eval-region :wk "Evaluate region"))

    (space-keys
     "h" '(:ignore t :wk "help")
     "h f" '(describe-function :wk "Describe function")
     "h v" '(describe-variable :wk "Describe variable")
     "h r r" '((lambda () (interactive) (load-file user-init-file)) :wk "Edit keybinding config"))

    (space-keys
      "t" '(:ignore t wk: "Toggles")
      "t l" '(display-line-numbers-mode :wk "Line numbers mode")
      "t b" '(visual-line-mode :wk "Toggle line breaks")
      "t t" '(vterm-toggle :wk "Toggle vterm"))

    (space-keys
     "w" '(:ignore t :wk "Windows")
     ;; Window splits
     "w c" '(evil-window-delete :wk "Close window")
     "w n" '(evil-window-new :wk "New window")
     "w s" '(evil-window-split :wk "Horizontal split window")
     "w v" '(evil-window-vsplit :wk "Vertical split window")
     ;; Window motions
     "w h" '(evil-window-left :wk "Window left")
     "w j" '(evil-window-down :wk "Window down")
     "w k" '(evil-window-up :wk "Window up")
     "w l" '(evil-window-right :wk "Window right")
     "w w" '(evil-window-next :wk "Goto next window")
     ;; Move Windows
     ;; (these function are defined in buffer-move.el)
     "w H" '(buf-move-left :wk "Buffer move left")
     "w J" '(buf-move-down :wk "Buffer move down")
     "w K" '(buf-move-up :wk "Buffer move up")
     "w L" '(buf-move-right :wk "Buffer move right"))
  )
