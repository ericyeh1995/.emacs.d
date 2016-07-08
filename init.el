;; Command cheatsheet
;; C-M-x    evaluate current Lisp expression
;; M-;      comment/uncomment line/region (comment-dwim)
;; cmd-;    autocomplete


;; Packages
(require 'package)
;; Package-archives
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)
(add-to-list 'package-archives
             '("elpy" . "https://jorgenschaefer.github.io/packages/") t)
;; M-x 'list-packages'
;;           'i' to mark
;;           'u' to unmark
;;           'x' to install
;;           'RET' to read
;; Paradox package
;; (setq paradox-github-token TOKEN)
;; M-x 'paradox-list-packages'
;;           'h' to see all keys
(package-initialize)


;; Python IDE
(elpy-enable)


;; Peferences
;; Hide startup message
;; (setq inhibit-startup-message t)
;; Global line numebrs
(global-linum-mode t)



