(require 'ensime)
(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)

;; Optional: yasnippets
; (add-hook 'scala-mode-hook #'yas-minor-mode)

;; company mode / yasnippet conflict. Disabling TAB in company mode:
; (define-key company-active-map [tab] nil)

