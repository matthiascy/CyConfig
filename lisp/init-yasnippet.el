;;; Code:
(require-package 'yasnippet)

(require 'yasnippet)
(yas-global-mode t)
(define-key yas-minor-mode-map (kbd "<tab>") nil)
(define-key yas-minor-mode-map (kbd "TAB") nil)
(define-key yas-minor-mode-map (kbd "C-c <tab>") 'yas-expand)
(setq yas/root-directory "~/Documents/snippets")
(yas/load-directory yas/root-directory)

(provide 'init-yasnippet)
