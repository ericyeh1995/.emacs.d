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
(defvar myPackages
  '(better-defaults
    elpy
    flycheck
    py-autopep8))
;; Install Packages
(mapc #'(lambda (package)
          (unless (package-installed-p package)
            (package-install package)))
            myPackages)




;; IDE
;; Python
;;   elpy
(elpy-enable)
;;   flycheck: syntex checking
(when (require 'flycheck nil t)
  (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
  (add-hook 'elpy-mode-hook 'flycheck-mode))
;;   PEP8: force pep8 when saving file
(require 'py-autopep8)
(add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save)
;;   ipython
(elpy-use-ipython)





;; Peferences
;; Hide startup message
;; (setq inhibit-startup-message t)
;; Global line numebrs
(global-linum-mode t)



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(paradox-github-token t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
