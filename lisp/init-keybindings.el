;; keybinding config store `init-keybindings.el` file
;; and `init-evil-leader.el` file. 

(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "C-h f") 'counsel-describe-function)
(global-set-key (kbd "C-h v") 'counsel-describe-variable)

;; 这一行代码，将函数 open-init-file 绑定到 <f2> 键上
(global-set-key (kbd "<f2>") 'open-init-file)

;; 将函数 open-package-file 绑定到　<f3> 键上
(global-set-key (kbd "<f3>") 'open-package-file)


(global-set-key "\C-x\ \C-r" 'recentf-open-files)

(global-set-key (kbd "C-h C-f") 'find-function)
(global-set-key (kbd "C-h C-v") 'find-variable)
(global-set-key (kbd "C-h C-k") 'find-function-on-key)

;; (global-set-key (kbd "C-c p f") 'counsel-git)

(global-set-key (kbd "C-c a") 'org-agenda)

(with-eval-after-load 'company
  (define-key company-active-map (kbd "M-p") nil)
  (define-key company-active-map (kbd "M-n") nil)
  (define-key company-active-map (kbd "C-n") #'company-select-next)
  (define-key company-active-map (kbd "C-p") #'company-select-previous))


;; config helm-ag--init-state
;; C-c e  // edit 
;; (global-set-key (kbd "C-c p s") 'helm-do-ag-project-root) 

;; config auto-yasnippet
;;(global-set-key (kbd "M-h w") #'aya-create)
;;(global-set-key (kbd "M-h y") #'aya-expand)

;; 向前删除一个字符
(global-set-key (kbd "C-w") 'backward-kill-word)



(provide 'init-keybindings)
