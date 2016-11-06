(el-get-bundle! js2-mode
  (add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode)))

(el-get-bundle! json-mode
  (add-to-list 'auto-mode-alist '("\\.json\\'" . json-mode))
  (add-hook 'json-mode-hook
            (lambda ()
              (make-local-variable 'js-indent-level)
              (setq js-indent-level 2))))
