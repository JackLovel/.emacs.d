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

(define-advice show-paren-function (:around (fn) fix-show-paren-function)
  "Hightlight ecclosing parents"
  (cond ((looking-at-p "\\s(") (funcall fn))
	(t (save-excursion
	     (ignore-errors (backward-up-list))
	     (funcall fn)))))

;; match parentesis
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

;; 选中单词会 然后输入字母会进行替换
(delete-selection-mode t)

;; font-size: 16pt
(set-face-attribute 'default nil :height 160)

;; deal with "^M" in html page
(defun hidden-dos-eol ()
  "Do not show ^M in files containing mixed UNIX and EOS line endings."
  (interactive)
  (setq buffer-display-table (make-display-table))
  (aset buffer-display-table ?\^M []))

(defun remove-dos-col ()
  "Replace DOS eolns CR LF with Unix eolns CR"
  (interactive)
  (goto-char (point-min))
  (while (search-forward "\r" nil t) (replace-match "")))

(set-language-environment "UTF-8")

(provide 'init-better-defaults)
