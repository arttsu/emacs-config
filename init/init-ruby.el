(use-package ruby-mode
  :custom
  (ruby-insert-encoding-magic-comment nil)
  :hook
  ;; Treat underscore as word character for easier evil movements.
  (ruby-mode . (lambda () (modify-syntax-entry ?_ "w"))))

(use-package chruby
  :config
  (chruby "ruby-2.6.6"))

(use-package inf-ruby
  :config
  (inf-ruby-switch-setup))

(use-package rspec-mode)

(use-package robe
  :after company
  :config
  (push 'company-robe company-backends)
  :bind
  (:map robe-mode-map
        ("C-c j" . robe-jump)
        ([M-down-mouse-1] . 'mouse-set-point)
        ([M-mouse-1] . 'robe-jump))
  :hook
  (ruby-mode . robe-mode))
