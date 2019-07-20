;; config for company-tabnine packages
;; @ https://github.com/TommyX12/company-tabnine

(require 'company-tabnine)
(add-to-list 'company-backends #'company-tabnine)

(setq company-idle-delay 0)

(setq company-show-numbers t)

(company-tng-configure-default)
(setq company-frontends
      '(company-tng-frontend
	company-pseudo-tooltip-frontend
	company-echo-metadata-frontend))

(provide 'init-company-tabnine)
