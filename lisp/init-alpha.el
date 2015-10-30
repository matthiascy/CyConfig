;;; package --- init-alpha.el
;;; Commentary:
;;;     change frame's alpha value
;;; Code:
(global-set-key [(f12)] 'change-alpha)
(setq alpha-list '((100 100) (86 75) (75 55) (65 35)))
(defun change-alpha ()
  (interactive)
  (let ((h (car alpha-list)))
    ((lambda (a ab)
       (set-frame-parameter (selected-frame) 'alpha (list a ab))
       (add-to-list 'default-frame-alist (cons 'alpha (list a ab))))
     (car h) (car (cdr h)))
    (setq alpha-list (cdr (append alpha-list (list h))))))

(provide 'init-alpha)

;;; init-alpha.el ends here
