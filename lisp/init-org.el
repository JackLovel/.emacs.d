;; document syntax highlighting
(require 'org)
(setq org-src-fontify-natively t)

;;　config for agenda
(setq org-agenda-files '("~/org"))
(global-set-key (kbd "C-c a") 'org-agenda)

(provide 'init-org)