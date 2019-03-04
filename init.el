(package-initialize)

(add-to-list 'load-path "~/.emacs.d/lisp/")

(require 'init-func)
(require 'init-packages)
(require 'init-ui)
(require 'init-better-defaults)
(require 'init-org)
(require 'init-keybindings)
(require 'init-python)
(require 'init-evil)
(require 'init-yasnippet)
(require 'init-elpy)
(require 'init-flycheck)
(require 'init-py-autopep8)
(require 'init-evil-leader)


(setq custom-file (expand-file-name "lisp/custom.el" user-emacs-directory))

(load-file custom-file)
