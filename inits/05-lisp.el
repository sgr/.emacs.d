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

(el-get-bundle! slime
  (setq inferior-lisp-program "sbcl")
  (setq slime-net-coding-system 'utf-8-unix)
  (slime-setup '(slime-repl slime-fancy slime-banner slime-indentation)))

(el-get-bundle! popwin
    ;; Apropos
  (push '("*slime-apropos*") popwin:special-display-config)
  ;; Macroexpand
  (push '("*slime-macroexpansion*") popwin:special-display-config)
  ;; Help
  (push '("*slime-description*") popwin:special-display-config)
  ;; Compilation
  (push '("*slime-compilation*" :noselect t) popwin:special-display-config)
  ;; Cross-reference
  (push '("*slime-xref*") popwin:special-display-config)
  ;; Debugger
  (push '(sldb-mode :stick t) popwin:special-display-config)
  ;; REPL
  (push '(slime-repl-mode) popwin:special-display-config)
  ;; Connections
  (push '(slime-connection-list-mode) popwin:special-display-config))

(el-get-bundle! ac-slime
  (add-hook 'slime-mode-hook 'set-up-slime-ac)
  (add-hook 'slime-repl-mode-hook 'set-up-slime-ac))

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
