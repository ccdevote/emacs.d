;;; init-plantuml.el --- plantuml for org-mode

;; Copyright (C) 2014  Zhiyong Ma

;; Author: Zhiyong Ma <ccdevote@gmail.com>
;; Keywords: lisp, plantuml,org-mode
(org-babel-do-load-languages
  'org-babel-load-languages
  '(;; other Babel languages
    (ditaa . t)
    (plantuml . t)
    (dot . t)
    ))
(setq org-plantuml-jar-path
      (expand-file-name "~/.emacs.d/jar/plantuml.jar"))
(add-hook 'org-babel-after-execute-hook 'bh/display-inline-images 'append)

; Make babel results blocks lowercase
(setq org-babel-results-keyword "results")
(defun bh/display-inline-images ()
  (condition-case nil
      (org-display-inline-images)
    (error nil)))
(provide 'init-plantuml)
