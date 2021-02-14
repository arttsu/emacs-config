(use-package projectile
  :demand
  :after magit
  :custom
  (projectile-switch-project-action 'projectile-dired)
  :config
  (projectile-mode 1)
  :bind
  (:map projectile-mode-map
   ("s-p" . projectile-command-map)))
