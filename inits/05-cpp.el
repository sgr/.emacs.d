(el-get-bundle! cmake-mode
  (add-to-list 'auto-mode-alist '("\\CMakeLists.txt\\'" . cmake-mode)))
;; (el-get-bundle! google-c-style
;;   (add-hook 'c-mode-common-hook 'google-set-c-style)
;;   (add-hook 'c++-mode-common-hook 'google-set-c-style)
;;   (add-hook 'c-mode-common-hook 'google-make-newline-indent))
(add-hook 'c++-mode-hook
          '(lambda ()
             ;;(c-set-style "stroustrup")
             (setq indent-tabs-mode nil)     ; インデントは空白文字で行う（TABコードを空白に変換）
             (c-set-offset 'innamespace 0)   ; namespace {}の中はインデントしない
             (c-set-offset 'arglist-close 0) ; 関数の引数リストの閉じ括弧はインデントしない
             ))
