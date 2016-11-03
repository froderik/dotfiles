;; MELPA
(require 'package)
(add-to-list 'package-archives
         '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)

;; keyboard bindings
(global-set-key (kbd "M-p") 'projectile-find-file)
(global-set-key (kbd "M-P") 'projectile-find-dir)

;; flx for ido - fuzzier completion
(require 'flx-ido)
(ido-mode 1)
(ido-everywhere 1)
(flx-ido-mode 1)
;; disable ido faces to see flx highlights.
(setq ido-enable-flex-matching t)
(setq ido-use-faces nil)

;; enable projectile
(projectile-global-mode)

;; indentation
(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)
(defvaralias 'ruby-indent-level 'tab-width)
(defvaralias 'c-basic-offset 'tab-width)
(defvaralias 'cperl-indent-level 'tab-width)


;; web-mode
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(defvaralias 'web-mode-markup-indent-offset 'tab-width)

;; turn off toolbar
(tool-bar-mode -1)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
	 [default default default italic underline success warning error])
 '(column-number-mode t)
 '(custom-enabled-themes (quote (tango-dark))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(set-face-attribute 'default nil :font "Inconsolata Medium 11"))
(set-frame-font "Inconsolata Medium 11" nil t)
