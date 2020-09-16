;;; config for latex 

;; latex config: auctex
(load "auctex.el" nil t t)
(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil)

;; 使用 okular 来查看 pdf
(setq TeX-view-program-list '(("okular" "okular %o")))
(setq TeX-view-program-selection '((output-pdf "okular")))

;; xelatex编译配置
(add-hook 'LaTeX-mode-hook
  (lambda()
  (add-to-list 'TeX-command-list '("XeLaTeX" "%`xelatex%(mode)%' %t" TeX-run-TeX nil t))
  (setq TeX-command-default "XeLaTeX")
  (setq TeX-save-querynil )
  (setq TeX-show-compilation t)
))

(provide 'init-latex)