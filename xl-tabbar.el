;;-----------------------------------------------------------------------------
;;配置标签页
;;2013/10/21
;;-----------------------------------------------------------------------------
(require 'tabbar)
(tabbar-mode 1)
(define-prefix-command 'lwindow-map)
(global-set-key (kbd "<M-up>") 'tabbar-backward-group)
(global-set-key (kbd "<M-down>") 'tabbar-forward-group)
(global-set-key (kbd "<M-left>") 'tabbar-backward)
(global-set-key (kbd "<M-right>") 'tabbar-forward)

(provide 'xl-tabbar)