(set-language-environment "Japanese")

(prefer-coding-system 'utf-8)
(set-file-name-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)

(setq buffer-file-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)

(cond
 ((require 'mozc nil 'noerror)
  (setq default-input-method "japanese-mozc"))
 ((require 'anthy nil 'noerror)
  (setq default-input-method "japanese-anthy")))
