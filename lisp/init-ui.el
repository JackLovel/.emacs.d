;; close tool bar
(tool-bar-mode -1)

;; close scroll
(scroll-bar-mode -1)

;; 关闭启动帮助画面
(setq inhibit-splash-screen 1)

;; 更改光标的样式为竖线
(setq-default cursor-type 'bar)

;; full windows display
(setq initial-frame-alist (quote ((fullscreen . maximized))))

;; display current line
(global-hl-line-mode t)

(provide 'init-ui)
