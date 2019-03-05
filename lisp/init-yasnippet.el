;; code snippet

;; define some snippet list
;; shB: shebang
;; pyH: python head format

;; how to add new code snippet?
;; run `M+x yas-new-snippet` command
;; File names suffixed with `yasnippet`, exmaple: python3-head-format.yasnippet

(require 'yasnippet)

(yas-global-mode t)

;; use yasnippet only write code 
(yas-reload-all)
(add-hook 'prog-mode-hook #'yas-minor-mode)

(provide 'init-yasnippet)
