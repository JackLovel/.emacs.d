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
  "s" 'helm-do-ag-project-root
  "5" 'delete-window
  "bk" 'kill-buffer
  "1" 'select-window-1
  "bb" 'switch-to-buffer
  "2" 'select-window-2
  "3" 'select-window-3
  "4" 'select-window-4
  "r" 'split-window-right
  "d" 'split-window-below
  "wm" 'delete-other-windows
  "oo" 'org-todo
  "ci" 'evilnc-comment-or-uncomment-lines  ;; 注释一行
  "cl" 'evilnc-quick-comment-or-uncomment-to-the-line
  "ll" 'evilnc-quick-comment-or-uncomment-to-the-line
  "cc" 'evilnc-copy-and-comment-lines
  "cp" 'evilnc-comment-or-uncomment-paragraphs
  "cr" 'comment-or-uncomment-region
  "cv" 'evilnc-toggle-invert-comment-line-by-line
  "."  'evilnc-copy-and-comment-operator
  "\\" 'evilnc-comment-operator ; if you prefer backslash key
  "ip" 'dired-mode
  "jd" 'dired-jump ;; open the dired from current file
  )

(provide 'init-evil-leader)
