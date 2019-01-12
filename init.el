(package-initialize)

(add-to-list 'load-path "~/.emacs.d/lisp/")
(require 'init-packages)

;; hungry_delete: delete blank space 
(require 'hungry-delete)

;; config for swiper

(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "C-h f") 'counsel-describe-function)
(global-set-key (kbd "C-h v") 'counsel-describe-variable)
 
;; config for nodejs-repl
(require 'nodejs-repl)

(global-auto-revert-mode t)
;;关闭工具栏
(tool-bar-mode -1)

;; 关闭文件滑动控件
(scroll-bar-mode -1)

;; 显示行号
(global-linum-mode 1)

;; 更改光标的样式（不能生效，解决方案见第二集）
(setq-default cursor-type 'bar)



;; disable backup file
(setq make-backup-files nil)

;; disable auto save file
(setq auto-save-default nil)

;; 文档语法高亮
(require 'org)
(setq org-src-fontify-natively t)

;; recent file mode
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 25)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)

;; when open emacs, then full windows display
(setq initial-frame-alist (quote ((fullscreen . maximized))))

;; 关闭启动帮助画面
(setq inhibit-splash-screen 1)

;; 自动缩进 (第二天中被去除)
(electric-indent-mode t)

;; alias auto company, then enter "alias" + spase key
(abbrev-mode t)
(define-abbrev-table 'global-abbrev-table '(
					    ;;signal
					    ("8wc" "wangcongcong")
					    ;; Macrosort
					    ("8ms" "Macrosort")
					    ))


;; 选中单词会 然后输入字母会进行替换
(delete-selection-mode t)

;; 4 spaces as tab width
;; if indent-tabs-mode is nil, indent only use spaces
;; else use spaces and tab mixed
(progn
  (setq-default indent-tabs-mode t))

(defun my-insert-tab-char ()
  "Insert a tab char. (ASCII 9, \t)"
  (interactive)
  (insert "\t"))

(global-set-key (kbd "TAB") 'my-insert-tab-char)
(setq-default tab-width 4)

;; match parentesis
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

;; display current line
(global-hl-line-mode t)

;;　config for agenda
(setq org-agenda-files '("~/org"))
(global-set-key (kbd "C-c a") 'org-agenda)

;; 更改显示字体大小 16pt
;; http://stackoverflow.com/questions/294664/how-to-set-the-font-size-in-emacs
(set-face-attribute 'default nil :height 160)

;; 关闭声音
(setq ring-bell-function 'ignore)
;; 快速打开配置文件
(defun open-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))

(global-set-key (kbd "C-h C-f") 'find-function)
(global-set-key (kbd "C-h C-v") 'find-variable)
(global-set-key (kbd "C-h C-k") 'find-function-on-key)

;; 这一行代码，将函数 open-init-file 绑定到 <f2> 键上
(global-set-key (kbd "<f2>") 'open-init-file)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("bd7b7c5df1174796deefce5debc2d976b264585d51852c962362be83932873d9" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
