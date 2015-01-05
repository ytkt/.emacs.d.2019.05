(require 'rinari)

(require 'rhtml-mode)
(add-hook 'rhtml-mode-hook
          (lambda () (rinari-launch)))

(add-hook 'rhtml-mode-hook
            (lambda ()
              (set-face-background 'erb-face "black")
              (set-face-background 'erb-exec-face "black")))

;; yasnippets-rails
(yas/load-directory "~/.emacs.d/snippets/yasnippets-rails")
