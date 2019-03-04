;; great terminal in emacs

;; how to run it ?
;; M+x <below command>
;; multi-term                    Create a new term buffer.
;; multi-term-next               Switch to next term buffer.
;; multi-term-prev               Switch to previous term buffer.
;; multi-term-dedicated-open     Open dedicated term window.
;; multi-term-dedicated-close    Close dedicated term window.
;; multi-term-dedicated-toggle   Toggle dedicated term window.
;; multi-term-dedicated-select   Select dedicated term window.

(require 'multi-term)

;; set default terminal is zsh 
(setq multi-term-program "/bin/zsh")

(provide 'init-multi-term)
