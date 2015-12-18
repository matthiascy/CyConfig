(require-package 'auto-complete-c-headers)
(require 'auto-complete-c-headers)
(add-to-list 'ac-sources 'ac-source-c-headers)

(require-package 'cmake-ide)
(require 'cmake-ide)

(require-package 'cmake-font-lock)
(require 'cmake-font-lock)
(autoload 'cmake-font-lock-activate "cmake-font-lock" nil t)

(require-package 'flymake-cppcheck)
(require 'flymake-cppcheck)

(require-package 'cmake-project)
(require 'cmake-project)

(require-package 'yasnippet)
(require 'yasnippet)
(yas-global-mode t)
(define-key yas-minor-mode-map (kbd "<tab>") nil)
(define-key yas-minor-mode-map (kbd "TAB") nil)
(define-key yas-minor-mode-map (kbd "C-c <tab>") 'yas-expand)

(require-package 'ecb)
(require 'ecb)
(global-set-key (kbd "C-x C-;") 'ecb-activate)
(global-set-key (kbd "C-x C-'") 'ecb-deactivate)
(global-set-key (kbd "C-c C-;") 'ecb-show-ecb-windows)
(global-set-key (kbd "C-c C-'") 'ecb-hide-ecb-windows)

;;;(require-package 'ac-clang)
;;;(require 'ac-clang)
;;;(define-key c++-mode-map (kbd "C-S-<return>") 'ac-clang)

(require-package 'auto-complete-clang)
(require 'auto-complete-clang)
;;;(setq ac-auto-start nil)
(setq ac-quick-help-delay 0.5)
(define-key ac-mode-map [(control tab)] 'auto-complete)

(defun my-ac-config ()
  (setq-default ac-sources '(ac-source-abbrev ac-source-dictionary ac-source-words-in-same-mode-buffers))
  (add-hook 'emacs-lisp-mode-hook 'ac-emacs-lisp-mode-setup)
  ;; (add-hook 'c-mode-common-hook 'ac-cc-mode-setup)
  (add-hook 'ruby-mode-hook 'ac-ruby-mode-setup)
  (add-hook 'css-mode-hook 'ac-css-mode-setup)
  (add-hook 'auto-complete-mode-hook 'ac-common-setup)
  (global-auto-complete-mode t))
(defun my-ac-cc-mode-setup ()
  (setq ac-sources (append '(ac-source-clang ac-source-yasnippet) ac-sources)))
(add-hook 'c-mode-common-hook 'my-ac-cc-mode-setup)
;; ac-source-gtags
(my-ac-config)

(setq ac-clang-flags
      (mapcar (lambda (item) (concat "-I" item))
              (split-string
               "
/usr/include/c++/5.1.1
/usr/include/c++/5.1.1/x86_64-redhat-linux/.
/usr/include/c++/5.1.1/backward
/usr/lib/gcc/x86_64-redhat-linux/5.1.1/include
/usr/lib/gcc/x86_64-redhat-linux/5.1.1/include-fixed
/usr/include/x86_64-redhat-linux
/usr/local/include
/usr/include
")))

;;;(setq ecb-layout-name 'left-dir-plus-speedbar)
(require-package 'ggtags)


(provide 'init-cpp.el)
