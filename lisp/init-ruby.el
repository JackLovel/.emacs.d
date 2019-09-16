(require 'robe)

;; robe  completion
(eval-after-load 'company
  '(push 'company-robe company-backends))


(add-hook 'ruby-mode-hook 'robe-mode)

(provide 'init-ruby)
