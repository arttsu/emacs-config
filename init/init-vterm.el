(setq vterm-module-cmake-args "-DUSE_SYSTEM_LIBVTERM=no")

(defun my-switch-to-vterm ()
  "Switch to an existing vterm buffer or create a new one."
  (interactive)
  (let ((vterm-buffer (get-buffer "vterm")))
    (if vterm-buffer
        (switch-to-buffer vterm-buffer)
      (vterm))))

(use-package vterm
  :bind
  ("C-c v" . my-switch-to-vterm))
