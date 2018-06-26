(el-get-bundle! cmake-mode
  (add-to-list 'auto-mode-alist '("\\CMakeLists.txt\\'" . cmake-mode)))
;; (el-get-bundle! google-c-style
;;   (add-hook 'c-mode-common-hook 'google-set-c-style)
;;   (add-hook 'c++-mode-common-hook 'google-set-c-style)
;;   (add-hook 'c-mode-common-hook 'google-make-newline-indent))
