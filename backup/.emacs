;;----------------设置PATH--------------------
(add-to-list 'load-path "~/.emacs.d/site-lisp/color-theme-6.6.0")
(add-to-list 'load-path "~/.emacs.d/site-lisp/auctex/site-lisp/site-start.d")
(add-to-list 'load-path "~/.emacs.d/site-lisp")
;(add-to-list 'load-path "~/.emacs.d/mylisp")
(add-to-list 'load-path "~/.emacs.d")
 ;;------------Color Theme -------------------------
;(require 'color-theme) 
;(color-theme-initialize) 
;(color-theme-blackboard)
;(color-theme-tty-dark)
(require 'color-theme)
(eval-after-load "color-theme"
  '(progn
     (color-theme-initialize)
     (color-theme-blackboard)))
;;-------- 设置默认字体------------------------------
(set-default-font "YaHei Consolas Hybrid-11") 
;; 設置默認字體，我現在喜歡大一點的字體，養眼。
(set-fontset-font "fontset-default"
 'gb18030 '("YaHei Consolas Hybrid" . "unicode-bmp"))

;;-------- 设置中文字体------------------------------
;;(set-fontset-font "fontset-default"
                  ;;'unicode '("WenQuanYi Bitmap Song" . "unicode-bmp"))

;;-----------通用----------------------------------
;; (set-background-color xxx) ;; 手工选背景色，可以使用
(fset 'yes-or-no-p 'y-or-n-p) ; 将yes/no替换为y/n
(setq default-fill-column 80) ;默认显示 80列就换行
(setq x-select-enable-clipboard t) ;支持emacs和外部程序的粘贴
(display-time-mode 1) ; 显示时间
(setq display-time-24hr-format t) ; 24小时格式
(setq display-time-day-and-date t) ; 显示日期
(mouse-avoidance-mode 'animate) ; 光标移动到鼠标下时，鼠标自动弹开
(column-number-mode t) ; 显示列号

(global-linum-mode t) ; 显示列号
(show-paren-mode t) ;显示括号匹配
(tool-bar-mode 0) ;去掉那个大大的工具栏
(scroll-bar-mode 0) ;去掉滚动条
;;(menu-bar-mode 0) ;去掉菜单栏
(setq frame-title-format "March Liu@%b") ; 显示当前编辑的文档
(setq default-tab-width 8) ;将一个Tab键转成8个空格键
(desktop-save-mode 1) ;打开上次的文件记录
;(require 'ido)
  ;  (ido-mode t)
;;----------------END通用---------------------------

;;-------------配置Latex--------------------------------------
(load "auctex.el" nil t t)
(load "preview-latex.el" nil t t)
(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil)
(mapc (lambda (mode)
      (add-hook 'LaTeX-mode-hook mode))
      (list 'auto-fill-mode
            'LaTeX-math-mode
            'turn-on-reftex
            'linum-mode))
(add-hook 'LaTeX-mode-hook (lambda()   ;使用XeLaTeX编译
                              (add-to-list 'TeX-command-list '("XeLaTeX" "%`xelatex%(mode)%' %t" TeX-run-TeX nil t))
                              (setq TeX-command-default "XeLaTeX")
                              (setq TeX-save-query  nil )
                              (setq TeX-show-compilation t)

                                                               ))
(cond
 ((eq system-type 'windows-nt)
  (add-hook 'LaTeX-mode-hook
            (lambda ()
              (setq TeX-view-program-selection '((output-pdf "SumatraPDF")
                                                 (output-dvi "Yap"))))))
 ((eq system-type 'gnu/linux)
  (add-hook 'LaTeX-mode-hook
            (lambda ()
              (setq TeX-view-program-selection '((output-pdf "Okular")
                                                 (output-dvi "Okular")))))))
;;--------------标签页---------------------------------------
(require 'tabbar)
(tabbar-mode 1)
(define-prefix-command 'lwindow-map)
(global-set-key (kbd "<M-up>") 'tabbar-backward-group)
(global-set-key (kbd "<M-down>") 'tabbar-forward-group)
(global-set-key (kbd "<M-left>") 'tabbar-backward)
(global-set-key (kbd "<M-right>") 'tabbar-forward)
;;---------------END--------------------------------------------
