;; config for python


;; when you save autopep8 will automatically format and corrent any PEP8 error


(require 'py-autopep8)

(add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save)

(provide 'init-py-autopep8)
