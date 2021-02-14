(use-package magit
  :demand
  :bind
  ("C-x g" . magit-status))

(use-package evil-magit
  :demand
  :after (evil magit))
