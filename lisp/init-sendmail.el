(require 'smtpmail )
;; set email reader 
 (setq gnus-secondary-select-methods '((nnml ""))) 

 ;; set pop server 
 (setq mail-sources 
      '((pop :server "pop.gmail.com"   ;; 在这里设置 pop3 服务器
             :user "ccdevote@gmail.com"     ;; 用户名
             :port "995"
             :password "mzyaimama")))        ;; 密码

 ;; set smtp 
 (setq smtpmail-auth-credentials 
    '(("smtp.gmail.com"                ;; SMTP 服务器
       587                                   ;; 端口号
       "ccdevote@gmail.com"                 ;; 用户名
       "mzyaimama")))                    ;; 密码

(provide 'init-sendmail)
