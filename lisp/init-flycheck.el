;;; config for python
;;; realtime check to python syntax

;;;(add-hook 'after-init-hook #'global-flycheck-mode)

(when (require 'flycheck nil t)
  (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
  (add-hook 'elpy-mode-hook 'flycheck-mode))

(provide 'init-flycheck)

