;; quick open emacs's configure file(init.el)
(defun open-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))


;; quick open emacs's package file(init-packages.el)
(defun open-package-file()
  (interactive)
  (find-file "~/.emacs.d/lisp/init-packages.el"))

(provide 'init-func)
