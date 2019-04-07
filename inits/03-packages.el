(el-get-bundle! auto-complete
  (ac-config-default))
(el-get-bundle less-css-mode)
(el-get-bundle ruby-mode)
(el-get-bundle markdown-mode)
(when (and (<= 24 emacs-major-version) (<= 4 emacs-minor-version))
  (el-get-bundle magit))
(el-get-bundle dockerfile-mode
  (add-to-list 'auto-mode-alist '("Dockerfile\\'" . dockerfile-mode)))
(el-get-bundle arduino-mode)
