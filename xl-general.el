;;-----------------------------------------------------------------------------
;;通用选项配置
;;2013/10/21
;;-----------------------------------------------------------------------------

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
(setq frame-title-format "emacs23@%f");在标题栏显示完整路径
(require 'ido)
    (ido-mode t)
(setq default-tab-width 4)
(setq-default indent-tabs-mode nil)
(provide 'xl-general)