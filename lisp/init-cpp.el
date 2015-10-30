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
(yas-global-mode 1)

(provide 'init-cpp.el)
