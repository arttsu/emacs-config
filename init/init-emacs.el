;;; init-emacs.el --- Customize Emacs

;;; Commentary:
;;

;;; Code:

(setq custom-file "~/.emacs.d/custom.el")
(unless (file-exists-p custom-file)
  (write-region "" nil custom-file))
(load custom-file)

(customize-set-variable 'create-lockfiles nil)
(customize-set-variable 'make-backup-files nil)

(customize-set-variable 'inhibit-startup-screen t)
(customize-set-variable 'initial-scratch-message nil)

(customize-set-variable 'indent-tabs-mode nil)

;; https://github.com/lewang/flx#gc-optimization
;;
;; GC time can contribute significantly to the runtime of computation
;; that allocates and frees a lot of memory. By default Emacs will
;; initiate GC every 0.76 MB allocated. This increases the GC
;; threshold to 20 MB, which will make GC run less frequently.
(customize-set-variable 'gc-cons-threshold 20000000)

;; Bind "Left Windows" key to "super" and disable all shortcuts based
;; on the "Windows" key.
;;
;; https://www.gnu.org/software/emacs/manual/html_node/emacs/Windows-Keyboard.html
(when (eq system-type 'windows-nt)
  (customize-set-variable 'w32-lwindow-modifier 'super)
  (w32-register-hot-key [s-]))

(defun my-save-all-buffers ()
  "Save all open buffers."
  (save-some-buffers t))

(add-hook 'auto-save-hook 'my-save-all-buffers)
(add-hook 'focus-out-hook 'my-save-all-buffers)

(global-auto-revert-mode 1)

(global-set-key (kbd "M-[") 'switch-to-prev-buffer)
(global-set-key (kbd "M-]") 'switch-to-next-buffer)

(global-set-key (kbd "C-c q") 'delete-window)

(global-set-key (kbd "S-C-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "S-C-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "S-C-<down>") 'shrink-window)
(global-set-key (kbd "S-C-<up>") 'enlarge-window)

(provide 'init-emacs)

;;; init-emacs.el ends here
