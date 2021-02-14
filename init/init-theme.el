;;; init-theme.el --- Install various themes, define a hydra for loading them

;;; Commentary:
;;

;;; Code:

(use-package leuven-theme)
(use-package nord-theme)
(use-package solarized-theme)

(defun my-disable-all-themes ()
  "Disable all themes."
  (dolist (theme custom-enabled-themes)
    (disable-theme theme)))

(defun my-load-theme (theme)
  "Disable all themes and load THEME."
  (progn
    (my-disable-all-themes)
    (load-theme theme t)))

(my-load-theme 'leuven)

(defhydra my-hydra-load-solarized-theme (:color blue)
  "Load Solarized theme"
  ("d" (my-load-theme 'solarized-dark) "Dark")
  ("l" (my-load-theme 'solarized-light) "Light"))

(defhydra my-hydra-load-theme (:color blue)
  "Load theme"
  ("l" (my-load-theme 'leuven) "Leuven")
  ("n" (my-load-theme 'nord) "Nord")
  ("s" my-hydra-load-solarized-theme/body "Solarized"))

(provide 'init-theme)

;;; init-theme.el ends here
