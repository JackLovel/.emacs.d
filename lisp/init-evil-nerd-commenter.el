;; 一行或者多行注释
;; 作者：https://github.com/redguardtoo/evil-nerd-commenter
(evilnc-default-hotkeys)
(define-key evil-normal-state-map (kbd "M-;") 'evilnc-comment-or-uncomment-lines)
(define-key evil-visual-state-map (kbd "M-;") 'evilnc-comment-or-uncomment-lines)
(global-set-key (kbd "C-c l") 'evilnc-quick-comment-or-uncomment-to-the-line)
(global-set-key (kbd "C-c c") 'evilnc-copy-and-comment-lines)
(global-set-key (kbd "C-c p") 'evilnc-comment-or-uncomment-paragraphs)

(provide 'init-evil-nerd-commenter)
