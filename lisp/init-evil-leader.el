;; use vim key leader for emacs

;; how to use?
;; press `\` and the key(s), E.g `\e`

(require 'evil-leader)

(global-evil-leader-mode)

;; set key binding
(evil-leader/set-key
  "e" 'find-file
  "b" 'switch-to-buffer
  "k" 'kill-buffer)

(provide 'init-evil-leader)
