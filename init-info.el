;; my favourite configuration;;
;; personal info
(define-auto-insert 'cc-mode "template/c.tpl")
(add-hook 'find-file-hooks 'auto-insert)
(setq user-full-name "Zhiyong Ma")
(setq user-mail-address "ccdevote@gmail.com")
(setq mail-replay-to "ccdevote@gmail.com");
(provide 'init-info)
