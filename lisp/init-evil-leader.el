;; use vim key leader for emacs

;; how to use?
;; press `\` and the key(s), E.g `\e`

(require 'evil-leader)

(global-evil-leader-mode)

;; set key binding
(evil-leader/set-key
  "f" 'find-file
  "t" 'multi-term)

(provide 'init-evil-leader)
