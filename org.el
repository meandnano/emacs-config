;; Enable table of contents
  (use-package toc-org
      :commands toc-org-enable
      :init (add-hook 'org-mode-hook 'toc-org-enable))

;; Enable org-bullets
(add-hook 'org-mode-hook 'org-indent-mode)
(use-package org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))
