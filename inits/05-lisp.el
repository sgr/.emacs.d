(setq show-paren-delay 0)
(setq show-paren-style 'single)
(show-paren-mode)

;; ElDoc
(add-hook 'emacs-lisp-mode-hook 'turn-on-eldoc-mode)
(add-hook 'lisp-interaction-mode-hook 'turn-on-eldoc-mode)
(add-hook 'ielm-mode-hook 'turn-on-eldoc-mode)

;; paredit
(el-get-bundle! paredit
  (add-hook 'emacs-lisp-mode-hook #'paredit-mode)
  (add-hook 'clojure-mode-hook #'paredit-mode)
  (add-hook 'cider-repl-mode-hook #'paredit-mode))

;; rainbow-delimiters
(el-get-bundle! rainbow-delimiters
  (add-hook 'emacs-lisp-mode-hook #'rainbow-delimiters-mode)
  (add-hook 'clojure-mode-hook #'rainbow-delimiters-mode)
  (add-hook 'cider-repl-mode-hook #'rainbow-delimiters-mode))

(when (and (<= 24 emacs-major-version) (<= 4 emacs-minor-version))
  ;; Clojure
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

  ;; Cider
  (el-get-bundle! cider
    (setq nrepl-log-messages t)
    (setq nrepl-hide-special-buffers t)
    (setq nrepl-buffer-name-separator "-")
    (setq nrepl-buffer-name-show-port t)
    (setq cider-repl-display-in-current-window t)
    (setq cider-repl-result-prefix ";; => ")
    (setq cider-interactive-eval-result-prefix ";; => ")
    (setq cider-repl-use-clojure-font-lock t)
    (add-hook 'cider-mode-hook 'cider-turn-on-eldoc-mode)
    (add-hook 'cider-mode-hook #'eldoc-mode)))
