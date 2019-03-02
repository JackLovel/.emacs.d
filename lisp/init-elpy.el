;; config for python
;; type C-c C-c run python file

;; Check whether `ipython` is installed?

(elpy-enable)

;; call ipython
(setq python-shell-interpreter "ipython"
      python-shell-interpreter-args "-i --simple-prompt")

(provide 'init-elpy)
