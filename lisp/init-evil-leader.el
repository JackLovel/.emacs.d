;; use vim key leader for emacs
(require 'evil-leader)

(global-evil-leader-mode)

;; set key binding
(evil-leader/set-key
  "ff" 'find-file
  "fr" 'recentf-open-files
  "pf" 'counsel-git
  "t" 'multi-term
  ;;"ps" 'helm-do-ag-project-root # 查找文件
  "5" 'delete-window
  "bk" 'kill-buffer
  "1" 'select-window-1
  "bb" 'switch-to-buffer
  "x0" 'delete-window
  "2" 'select-window-2
  "3" 'select-window-3
  "4" 'select-window-4
  "x3" 'split-window-right
  "x2" 'split-window-below
  "x1" 'delete-other-windows
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
  ;; magit 
  "ggg" 'magit-status
  ;; neotree
  "ntt" 'neotree-toggle
  ;"ntf" 'neotree-find ; open file in current buffer in neotree
  "ntd" 'neotree-project-dir
  "nth" 'neotree-hide
  "nts" 'neotree-show
  "fr" 'recentf-open-files
  "br" 'inf-ruby ;; inside ruby shell 
  ;;"bv" 'rvm-activate-corresponding-ruby
  "ps" 'projectile-find-file
)

(provide 'init-evil-leader)
