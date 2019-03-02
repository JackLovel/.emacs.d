(require 'cl)

(when (>= emacs-major-version 24)
    (add-to-list 'package-archives '("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/") t)
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

(provide 'init-packages)
