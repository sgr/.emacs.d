;; Following packages are required:
;; go get github.com/rogpeppe/godef
;; go get github.com/mdempsky/gocode
;; go get golang.org/x/lint/golint
;; go get github.com/kisielk/errcheck
(el-get-bundle! flycheck)
(el-get-bundle! exec-path-from-shell)
(el-get-bundle! go-autocomplete)
(el-get-bundle! go-mode
  (require 'auto-complete)
  (require 'go-autocomplete)
  (require 'auto-complete-config)
  (ac-config-default)
  (add-hook 'go-mode-hook 'flycheck-mode))
