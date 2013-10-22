;;-----------------------------------------------------------------------------
;;配置外观
;;2013/10/21
;;-----------------------------------------------------------------------------
(require 'color-theme)
(require 'color-theme-sanityinc-tomorrow)
(eval-after-load "color-theme"
  '(progn
     (color-theme-initialize)
     ;(color-theme-blackboard)
     ;(color-theme-molokai)
     ;(color-theme-sanityinc-tomorrow)
     ;(color-theme-sanityinc-tomorrow-day)
     ;(color-theme-sanityinc-tomorrow-night)
     ;(color-theme-sanityinc-tomorrow-blue)
     ;(color-theme-sanityinc-tomorrow-bright)
     ;(color-theme-sanityinc-tomorrow-eighties)
     ))

;;-----------------------------------------------------------------------------
;;窗口半透明效果
;(global-set-key (kbd "<f10>") 'loop-alpha) 
;(setq alpha-list '((90 70) (100 100))) 
;(defun loop-alpha () 
;(interactive) 
;(let ((h (car alpha-list))) 
;((lambda (a ab) 
;(set-frame-parameter (selected-frame) 'alpha (list a ab)) 
;(add-to-list 'default-frame-alist (cons 'alpha (list a ab)))) 
;(car h) (car (cdr h))) 
;(setq alpha-list (cdr (append alpha-list (list h)))))) 
;(loop-alpha)
(provide 'xl-theme)