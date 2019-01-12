;; close ring bell
(setq ring-bell-function 'ignore)

(global-auto-revert-mode t)

;; global line number
(global-linum-mode t)

;; alias auto company, then enter "alias" + spase key
(abbrev-mode t)
(define-abbrev-table 'global-abbrev-table '(
					    ;;signal
					    ("8wc" "wangcc")
					    ;; Macrosort
					    ("8ms" "Macrosort")
					    ))

;; disable backup file
(setq make-backup-files nil)

;; disable auto save file
(setq auto-save-default nil)

;; recent file mode
(require 'recentf)
(recentf-mode t)
(setq recentf-max-menu-items 25)

;; match parentesis
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

;; 选中单词会 然后输入字母会进行替换
(delete-selection-mode t)

;; font-size: 16pt
(set-face-attribute 'default nil :height 160)

(provide 'init-better-defaults)
