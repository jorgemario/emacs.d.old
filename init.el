;; packages repositories
(require 'package)
;(add-to-list 'package-archives
;             '("marmalade" . "http://marmalade-repo.org/packages/") t)
;(add-to-list 'package-archives
;             '("tromey" . "http://tromey.com/elpa/") t)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
;(add-to-list 'package-archives
;             '("melpa stable" . "http://stable.melpa.org/packages/") t)
(add-to-list 'package-archives
             '("org" . "http://orgmode.org/elpa/") t)

;; Load and activate emacs packages.
;; This also sets the load path.
(package-initialize)

;; Makes latest version of all packaes available for downloas.
(when (not package-archive-contents)
  (package-refresh-contents))

;; Personal packages setup.
(defvar my-packages
  '(;; lisp expressions handling
    paredit

    ;; keybindings and code colorization for clojure
    clojure-mode

    ;; extra syntax-highlight
    clojure-mode-extra-font-locking

    ;; Clojure REPL
    cider

    ;; Enhances M-x
    smex

    ;; Project navigation
    projectile


    ;; Parenthesis matching
    rainbow-delimiters

    ;; Edit html tags like sexps
    tagedit

    ;; git
    magit

    ;; ido in more contexts
    ido-ubiquitous

    git-gutter
    company

    ;; scala mode
    ensime
    ))

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

;; Downloaded elisp files in ~/.emacs.d/vendor
(add-to-list 'load-path "~/.emacs.d/vendor")

;; Customizations
(add-to-list 'load-path "~/.emacs.d/config")

(load "my-themes.el")
(load "my-editing.el")
(load "my-clojure.el")
(load "my-elisp-editing.el")
(load "my-navigation.el")
(load "my-org.el")
(load "my-ui.el")
(load "my-js.el")
(load "my-misc.el")
(load "my-scala.el")
 
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (ensime tagedit smex rainbow-delimiters projectile paredit magit ido-ubiquitous git-gutter company clojure-mode-extra-font-locking cider auto-complete))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
