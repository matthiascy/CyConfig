(require-package 'virtualenvwrapper)
(venv-initialize-interactive-shells)
(setq venv-location '("~/Documents/mimosa-project/env-mimosa"
                      "~/Documents/rumphii-project/env-rumphii"))
(provide 'init-virtualenv)
