;; Enable "Which key"
  (use-package which-key
    :diminish
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
	  which-key-allow-imprecise-window-fit nil
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
      "SPC" '(counsel-M-x :wk "Run...")
      "." '(find-file :wk "Find file")
      "p" '(:keymap projectile-command-map :package projectile :wk "Projectile")
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
      "t w" '(visual-line-mode :wk "Toggle line wrapping")
      "t t" '(vterm-toggle :wk "Toggle vterm")
      "t r" '(rainbow-mode :wk "Toggle rainbow mode"))

    (space-keys
      "g" '(:ignore t :wk "Git")
	"g g"  '(magit-status :wk "Status")
	"g b"  '(magit-branch :wk "Branch")
	"g B"  '(magit-blame :wk "Blame")
	"g c"  '(magit-clone :wk "Clone")
	"g i"  '(magit-init :wk "Init")
	"g L"  '(magit-list-repositories :wk "List repos")
	"g m"  '(magit-dispatch :wk "Dispatch")
	"g S"  '(magit-stage-file :wk "Stage file")
	"g U"  '(magit-unstage-file :wk "Unstags file")

	"g f"  '(:ignore t :which-key "File")
	"g f f" '(magit-find-file  :wk "Find file")
	"g f h" '(magit-log-buffer-file :wk "Log buffer file"))

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

