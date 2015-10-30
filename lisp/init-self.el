(global-set-key (kbd "C-c z") 'shell)
(global-linum-mode 1)

(require-package 'color-theme)
(require-package 'lush-theme)
(require-package 'multiple-cursors)
(require-package 'yafolding)
(require-package 'impatient-mode)

(require 'yafolding)
(define-key yafolding-mode-map (kbd "<C-S-return>") nil)
(define-key yafolding-mode-map (kbd "<C-M-return>") nil)
(define-key yafolding-mode-map (kbd "<C-return>") nil)
(define-key yafolding-mode-map (kbd "C-c <C-M-return>") 'yafolding-toggle-all)
(define-key yafolding-mode-map (kbd "C-c <C-S-return>") 'yafolding-hide-parent-element)
(define-key yafolding-mode-map (kbd "C-c <C-return>") 'yafolding-toggle-element)

;;(require-package 'virtualenvwrapper)
;;(venv-initialize-interactive-shells)
;;(setq venv-location '())

(require-package 'glsl-mode)
(require 'glsl-mode)
(autoload 'glsl-mode "glsl-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.glsl\\'" . glsl-mode))
(add-to-list 'auto-mode-alist '("\\.vert\\'" . glsl-mode))
(add-to-list 'auto-mode-alist '("\\.frag\\'" . glsl-mode))
(add-to-list 'auto-mode-alist '("\\.geom\\'" . glsl-mode))

;; markdown
(require-package 'gh-md)
(require 'gh-md)


(require 'google-c-style)
(require 'impatient-mode)
(require 'init-alpha)
(require 'init-neotree)
(require 'init-cpp.el)

(provide 'init-self)
