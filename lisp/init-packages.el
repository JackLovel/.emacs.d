(require 'cl)

(when (>= emacs-major-version 24)
  (add-to-list 'package-archives
	       '("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
	        t)
    )

;;add what　ever packages you want here
(defvar JackLovel/packages '(
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
				 evil
				 yasnippet
				 elpy
				 flycheck
				 py-autopep8
				 evil-leader
				 multi-term
                                 org-pomodoro
				 helm-ag
				 auto-yasnippet
                                 window-numbering
				 powerline
				 evil-surround
				 web-mode
				 evil-nerd-commenter
				 ;;company-tabnine
				 neotree
				 auctex
				 magit
				 robe
				 flymake-ruby
				 inf-ruby
				 projectile
				 flx-ido
	)  "Default packages")

;; package-selected-packages = JackLovel/packages
(setq package-selected-packages JackLovel/packages)


(defun JackLovel/packages-installed-p ()
    (loop for pkg in JackLovel/packages
          when (not (package-installed-p pkg)) do (return nil)
	  finally (return t)))

(unless (JackLovel/packages-installed-p)
    (message "%s" "Refreshing package database...")
    (package-refresh-contents)
    (dolist (pkg JackLovel/packages)
      (when (not (package-installed-p pkg))
        (package-install pkg))))

;; let emacs could find the execuable
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))


(global-hungry-delete-mode)

;; config for smartparens
;;(add-hook 'emacs-lisp-mode-hook 'smartparens-mode)
(smartparens-global-mode t)
(sp-local-pair 'emacs-lisp-mode "'" nil :actions nil)
(sp-local-pair 'lisp-interaction-mode "'" nil :actions nil)

(ivy-mode 1)
(setq ivy-use-virtual-buffers t)

;; config for js2-mode
(setq auto-mode-alist
      (append
       '(("\\.js\\'" . js2-mode))
       auto-mode-alist))

;; open global Company complete
(global-company-mode t)

;; load theme monokai
(load-theme 'monokai t)

;; config for popwin
(require 'popwin)
(popwin-mode t)



;; config js2-mode for js files
(setq auto-mode-alist
      (append '(("\\.js\\'" . js2-mode)
	        ("\\.html\\'" . web-mode))
	      auto-mode-alist))

;; config for web mode
(defun my-web-mode-indent-setup()
  (setq web-mode-markup-indent-offset 2)  ;; web-mode, html tag in html file
  (setq web-mode-css-indent-offset 2)     ;; web-mode, css in html file
  (setq web-mode-code-indent-offset 2)    ;; web-mode, js code in html fille
  )

(add-hook 'web-mode-hook 'my-web-mode-indent-setup)

(defun my-toggle-web-indent ()
  (interactive)
  ;; web development
  (if (or (eq major-mode 'js-mode) (eq major-mode 'js2-mode))
      (progn
        (setq js-indent-level (if (= js-indent-level 2) 4 2))
        (setq js2-basic-offset (if (= js2-basic-offset 2) 4 2))))

  (if (eq major-mode 'web-mode)
      (progn (setq web-mode-markup-indent-offset (if (= web-mode-markup-indent-offset 2) 4 2))
             (setq web-mode-css-indent-offset (if (= web-mode-css-indent-offset 2) 4 2))
             (setq web-mode-code-indent-offset (if (= web-mode-code-indent-offset 2) 4 2))))
  (if (eq major-mode 'css-mode)
      (setq css-indent-offset (if (= css-indent-offset 2) 4 2)))

  (setq indent-tabs-mode nil))

(provide 'init-packages)
