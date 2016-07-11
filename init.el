;; Command cheatsheet
;;   C-M-x    evaluate current Lisp expression
;;   M-;      comment/uncomment line/region (comment-dwim)
;;   cmd-;    autocomplete




;; Packages
(require 'package)
;; Package-archives
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)
;;   M-x 'list-packages'
;;           'i' to mark
;;           'u' to unmark
;;           'x' to install
;;           'RET' to read
;; Paradox package
;;   (setq paradox-github-token TOKEN)
;;   M-x 'paradox-list-packages'
;;           'h' to see all keys
;; Initialize
(package-initialize)
;; Packages to install
;; Not all installed packages are in the function:
;; jedi, iedit
(defvar myPackages
  '(better-defaults
    elpy
    flycheck
    py-autopep8
    magit))
;; Install Packages
(mapc #'(lambda (package)
          (unless (package-installed-p package)
            (package-install package)))
            myPackages)
;; End Packages



;; IDE
;; Python
;;   set PYTHONPATH environment
(setenv "PYTHONPATH" "/Users/ericyeh/Library/Enthought/Canopy_64bit/User/bin/python")
;;   elpy
(elpy-enable)
;;   elpy key binding bug
(define-key yas-minor-mode-map (kbd "C-c k") 'yas-expand)
;;   iedit mode key binding bug
(define-key global-map (kbd "C-c o") 'iedit-mode)
;;   flycheck: syntex checking
;; disabled
;; (when (require 'flycheck nil t)
;;  (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
;;  (add-hook 'elpy-mode-hook 'flycheck-mode))
;;   PEP8: force pep8 format when saving file
;; (require 'py-autopep8)
;; (add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save)
;;   ipython: doesn't work...
;;(elpy-use-ipython)
;;   jedi: autocomplete
;; (global-auto-complete-mode -1) ;; disable elpy's autocomplete
;; (require 'jedi)
;; (setq elpy-rpc-backend "jedi")
;; (add-hook 'elpy-mode-hook 'jedi:setup)
;; (setq jedi:setup-keys t)
;; (setq jedi:complete-on-dot t)
;; End IDE




;; General
;; Theme
(load-theme 'solarized t)
(set-terminal-parameter nil 'background-mode 'dark)
;; Hide startup message
;; (setq inhibit-startup-message t)
;; Global line numebrs
(global-linum-mode t)
;; Git
;;   set magit-status command
(global-set-key (kbd "C-x g") 'magit-status)
;; Auto-Complete
;; (ac-config-default)
;; End Peferences



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(magit-commit-arguments (quote ("--all")))
 '(paradox-github-token t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
