(require-package 'wb-line-number )
(add-hook 'ecb-activate
          '(lambda()
             (global-linum-mode)
             ));
(provide 'init-wb-line-number)
