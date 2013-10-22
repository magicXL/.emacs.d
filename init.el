;; -*- coding: utf-8 -*-
;;+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;;添加路径
(add-to-list 'load-path "~/.emacs.d")
(add-to-list 'load-path "~/.emacs.d/mylisp")
(add-to-list 'load-path "~/.emacs.d/site-lisp")
(add-to-list 'load-path "~/.emacs.d/themes/")
(add-to-list 'load-path "~/.emacs.d/site-lisp/auctex/site-lisp/site-start.d")
(add-to-list 'load-path "~/.emacs.d/site-lisp/color-theme-6.6.0")
(add-to-list 'load-path "~/.emacs.d/site-lisp/yasnippet-0.6.1c" t)
;;+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

;;+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;; Which functionality to enable (use t or nil for true and false)
;;https://github.com/redguardtoo/emacs.d
;;从网上下载的，以后使用别人的代码时有用。
(setq *spell-check-support-enabled* t)
(setq *macbook-pro-support-enabled* t)
(setq *is-a-mac* (eq system-type 'darwin))
(setq *is-carbon-emacs* (and *is-a-mac* (eq window-system 'mac)))
(setq *is-cocoa-emacs* (and *is-a-mac* (eq window-system 'ns)))
(setq *win32* (eq system-type 'windows-nt) )
(setq *cygwin* (eq system-type 'cygwin) )
(setq *linux* (or (eq system-type 'gnu/linux) (eq system-type 'linux)) )
(setq *unix* (or *linux* (eq system-type 'usg-unix-v) (eq system-type 'berkeley-unix)) )
(setq *linux-x* (and window-system *linux*) )
(setq *xemacs* (featurep 'xemacs) )
(setq *emacs23* (and (not *xemacs*) (or (>= emacs-major-version 23))) )
(setq *emacs24* (and (not *xemacs*) (or (>= emacs-major-version 24))) )
;;+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

;;+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
(require 'package)
(package-initialize)
;;-----------------------------------------------------------------------------
;;基本配置，行号，工具栏，路径名称...
(require 'xl-general)
;;-----------------------------------------------------------------------------
;;配置字体
(require 'xl-fonts)
;;-----------------------------------------------------------------------------
;;配置LaTeX，编译器，自动补全，等等
(require 'xl-LaTeX)
;;-----------------------------------------------------------------------------
;;主题;透明效果。
(require 'xl-theme)
;;-----------------------------------------------------------------------------
;;tabbar
(require 'xl-tabbar)
;;-----------------------------------------------------------------------------
;;(require 'auto-complete-settings)
;;(require 'yasnippet-settings)
;;-----------------------------------------------------------------------------
;;https://github.com/redguardtoo/emacs.d
;;使用binchen的配置
; (require 'init-dired)
; (require 'init-ibuffer)
; (require 'init-flycheck)
; (require 'init-recentf)
; (require 'init-ido)
;(require 'init-auto-complete)
(require 'init-sessions)
; (require 'init-markdown)
; (require 'init-org)
; (require 'init-lisp)
; (require 'init-python-mode)
;;+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

;;+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;;安装主题时自动生成的。
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector (vector "#ffffff" "#ff9da4" "#d1f1a9" "#ffeead" "#bbdaff" "#ebbbff" "#99ffff" "#002451"))
 '(custom-enabled-themes (quote (sanityinc-tomorrow-night)))
 '(custom-safe-themes (quote ("c299a760ca970bb34e66772a0140edc48bab9deeb497129f22d5ca69bd29747f" "c74b16b10c966f61c3e79f277316a1b068cf41a89a90f23e88da9accfabd3d92" default)))
 '(fci-rule-color "#00346e")
 '(vc-annotate-background nil)
 '(vc-annotate-color-map (quote ((20 . "#ff9da4") (40 . "#ffc58f") (60 . "#ffeead") (80 . "#d1f1a9") (100 . "#99ffff") (120 . "#bbdaff") (140 . "#ebbbff") (160 . "#ff9da4") (180 . "#ffc58f") (200 . "#ffeead") (220 . "#d1f1a9") (240 . "#99ffff") (260 . "#bbdaff") (280 . "#ebbbff") (300 . "#ff9da4") (320 . "#ffc58f") (340 . "#ffeead") (360 . "#d1f1a9"))))
 '(vc-annotate-very-old-color nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
;;+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++