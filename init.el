;;; init.el --- Master initialization file


;;; Commentary:
;;

;;; Code:

(add-to-list 'load-path "~/emacs_config/init")

(define-derived-mode my-init-mode emacs-lisp-mode "Init"
  "A mode for my init files.")

(add-to-list 'auto-mode-alist '("\\.init\\'" . my-init-mode))

(load "init-emacs.el")
(load "init-straight.el")
(load "init-use-package.el")
(load "init-exec-path-from-shell.el")
(load "init-dired.el")
(load "init-hydra.el")
(load "init-theme.el")
(load "init-flycheck.el")
(load "init-master-hydras.el")
(load "init-evil.el")
(load "init-magit.el")
(load "init-flx-ido.el")
(load "init-projectile.el")
(load "org.init")
(load "init-ace-window.el")
(load "init-ag.el")
(load "init-vterm.el")
(load "init-company.el")
(load "init-markdown.el")
(load "init-ruby.el")
(load "init-restclient.el")
(load "init-elixir.el")
(load "init-fish.el")

(use-package yaml-mode)

(use-package ledger-mode
  :after org
  :custom
  (ledger-default-date-format "%Y-%m-%d"))

(when (file-directory-p "~/notdeft")
  (add-to-list 'load-path "~/notdeft")
  (require 'notdeft-autoloads)
  (customize-set-variable 'notdeft-directories '("~/zettelkasten"))
  (global-set-key (kbd "C-c n d") 'notdeft))

(use-package ox-jira)

(provide 'init)

;;; init.el ends here
