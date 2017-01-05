(prefer-coding-system 'utf-8)
(set-file-name-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)

(set-language-environment "Japanese")

(when (require 'mozc nil 'noerror)
  (setq default-input-method "japanese-mozc"))
