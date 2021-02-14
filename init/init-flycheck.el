;;; init-flycheck.el --- Install Flycheck

;;; Commentary:
;;
;; Flycheck adds on-the-fly syntax checking.
;;
;; https://www.flycheck.org/en/latest/

;;; Code:

(use-package flycheck
  :config
  (global-flycheck-mode)
  :custom
  ;; Avoid key conflicts in Org mode
  ;; https://emacs.stackexchange.com/questions/24633/turn-off-global-flycheck-mode-for-org-mode/38267#38267
  (flycheck-global-modes '(not org-mode)))

(provide 'init-flycheck)

(provide 'init-flycheck)

;;; init-flycheck.el ends here
