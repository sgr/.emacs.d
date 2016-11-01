(el-get-bundle! js2-mode
  (add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
  (add-to-list 'auto-mode-alist '("\\.json\\'" . js2-mode)))

(setq inhibit-startup-message t)
(setq show-paren-delay 0)
(setq show-paren-style 'single)
(show-paren-mode)
;;(global-hl-line-mode 1)
(column-number-mode 1)

;; Clojure
;;(defvar clojure-minor-modes '(paredit-mode
;;                              rainbow-delimiters-mode))
(defvar clojure-minor-modes '(paredit-mode))
(dolist (mode clojure-minor-modes)
  (add-hook 'clojure-mode-hook mode)
  (add-hook 'cider-repl-mode-hook mode))

(el-get-bundle! clojure-mode
  (define-clojure-indent
    (defroutes 'defun)
    (GET 2)
    (POST 2)
    (PUT 2)
    (DELETE 2)
    (HEAD 2)
    (ANY 2)
    (context 2)))

;; Emacs lisp mode
(add-hook 'emacs-lisp-mode-hook #'paredit-mode)
;;(add-hook 'emacs-lisp-mode-hook #'rainbow-delimiters-mode)

