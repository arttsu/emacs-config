(use-package dired
  :demand
  :straight nil
  :bind
  (:map dired-mode-map
   ("-" . dired-up-directory)))
