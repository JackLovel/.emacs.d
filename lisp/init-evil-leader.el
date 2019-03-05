;; use vim key leader for emacs

;; how to use?
;; press `\` and the key(s), E.g `\e`

(require 'evil-leader)

(global-evil-leader-mode)

;; set key binding
(evil-leader/set-key
  ;;"f" 'find-file-in-project
  "ff" 'find-file
  "fr" 'recentf-open-files
  "pf" 'counsel-git
  "t" 'multi-term
  "ps" 'helm-do-ag-project-root
  "5" 'delete-window
  "bk" 'kill-buffer
  "1" 'select-window-1
  "bb" 'switch-to-buffer
  "2" 'select-window-2 
  "3" 'select-window-3
  "4" 'select-window-4
  "r" 'split-window-right
  "d" 'split-window-below
  "wm" 'delete-other-windows)


(provide 'init-evil-leader)
