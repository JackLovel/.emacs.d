;; 关闭工具栏，tool-bar-mode 即为一个 Minor Mode

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.

;; when emacs version > 24, then add this melpa emacs source 
;; source: 清华源
(when (>= emacs-major-version 24)
    (require 'package)
    (package-initialize)
    (add-to-list 'package-archives '("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/") t)
    )

(require 'cl)

;;add what　ever packages you want here
(defvar zilongshanren/packages '(
				 company
				 monokai-theme
				 hungry-delete
				 swiper
				 counsel
				 smartparens
				 js2-mode
				 nodejs-repl
				 exec-path-from-shell
				 popwin
	)  "Default packages")

;; package-selected-packages = zilongshanren/packages
(setq package-selected-packages zilongshanren/packages)

(defun zilongshanren/packages-installed-p ()
    (loop for pkg in zilongshanren/packages
          when (not (package-installed-p pkg)) do (return nil)
	  finally (return t)))

(unless (zilongshanren/packages-installed-p)
    (message "%s" "Refreshing package database...")
    (package-refresh-contents)
    (dolist (pkg zilongshanren/packages)
      (when (not (package-installed-p pkg))
        (package-install pkg))))

;; hungry_delete: delete blank space 
(require 'hungry-delete)
(global-hungry-delete-mode)

;;
(global-auto-revert-mode t)

;; config for smartparens
(require 'smartparens-config)
;;(add-hook 'emacs-lisp-mode-hook 'smartparens-mode)
(smartparens-global-mode t)
;; config for swiper
(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "C-h f") 'counsel-describe-function)
(global-set-key (kbd "C-h v") 'counsel-describe-variable)

;; config for js2-mode
(setq auto-mode-alist
      (append
       '(("\\.js\\'" . js2-mode))
       auto-mode-alist))
 
;; config for nodejs-repl
(require 'nodejs-repl)

;; let emacs could find the execuable
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

;;关闭工具栏
(tool-bar-mode -1)

;; 关闭文件滑动控件
(scroll-bar-mode -1)

;; 显示行号
(global-linum-mode 1)

;; 更改光标的样式（不能生效，解决方案见第二集）
(setq-default cursor-type 'bar)

;; 开启全局Company补全
(global-company-mode 1)

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

;; match parentesis
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

;; display current line
(global-hl-line-mode t)

;; load theme
(load-theme 'monokai t) ;; monokai

;;　config for agenda
(setq org-agenda-files '("~/org"))
(global-set-key (kbd "C-c a") 'org-agenda)

;; 更改显示字体大小 16pt
;; http://stackoverflow.com/questions/294664/how-to-set-the-font-size-in-emacs
(set-face-attribute 'default nil :height 160)

;; 快速打开配置文件
(defun open-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))

(global-set-key (kbd "C-h C-f") 'find-function)
(global-set-key (kbd "C-h C-v") 'find-variable)
(global-set-key (kbd "C-h C-k") 'find-function-on-key)

;; 这一行代码，将函数 open-init-file 绑定到 <f2> 键上
(global-set-key (kbd "<f2>") 'open-init-file)

;; config for popwin
(require 'popwin)
(popwin-mode t)

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
