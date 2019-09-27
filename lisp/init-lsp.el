;;; config for lsp-mode

(require 'lsp-mode)

(dolist (hook (list
	       'js-mode-hook
	       'ruby-mode-hook
	       'python-mode-hook
	       ))
  (add-hook hook '(lambda ()
		    (lsp))))

(provide 'init-lsp)

