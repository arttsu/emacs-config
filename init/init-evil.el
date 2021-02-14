;;; init-evil.el --- Install Evil

;;; Commentary:
;; 

;;; Code:

(use-package evil
  :demand
  :after dired
  :config
  (evil-mode 1)
  (add-to-list 'evil-emacs-state-modes 'vterm-mode)
  :bind
  (:map evil-normal-state-map
   ("-" . dired-jump)))

(use-package undo-tree
  :demand
  :after evil
  :config
  (global-undo-tree-mode)
  :custom
  (evil-undo-system 'undo-tree))

(use-package evil-org
  :demand
  :after (evil org)
  :config
  (add-hook 'org-mode-hook 'evil-org-mode)
  (add-hook 'evil-org-mode-hook (lambda () (evil-org-set-key-theme)))
  (require 'evil-org-agenda)
  (evil-org-agenda-set-keys)
  (evil-define-key 'motion org-agenda-mode-map (kbd "s") 'org-agenda-schedule))

(provide 'init-evil)

;;; init-evil.el ends here
