;;; init-master-hydras.el --- Define and bind "master" hydras

;;; Commentary:
;;

;;; Code:

(defhydra my-hydra-settings (:color blue)
  "Settings"
  ("t" my-hydra-load-theme/body "Theme"))

(global-set-key (kbd "C-c s") 'my-hydra-settings/body)

(provide 'init-master-hydras)

;;; init-master-hydras.el ends here
