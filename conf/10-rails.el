(require 'rinari)

(require 'rhtml-mode)
(require 'slim-mode)

(add-hook 'rhtml-mode-hook
          (lambda () (rinari-launch)))

(add-hook 'rhtml-mode-hook
            (lambda ()
              (set-face-background 'erb-face "black")
              (set-face-background 'erb-exec-face "black")))

;; yasnippets-rails
(yas/load-directory "~/.emacs.d/snippets/yasnippets-rails")


(defun ruby-mode-hook ()
  (autoload 'ruby-mode "ruby-mode" nil t)
  (add-to-list 'auto-mode-alist '("Capfile" . ruby-mode))
  (add-to-list 'auto-mode-alist '("Gemfile" . ruby-mode))
  (add-to-list 'auto-mode-alist '("Rakefile" . ruby-mode))
  (add-to-list 'auto-mode-alist '("Guardfile" . ruby-mode))
  (add-to-list 'auto-mode-alist '("Bowerfile" . ruby-mode))
  (add-to-list 'auto-mode-alist '("\\.rake\\'" . ruby-mode))
  (add-to-list 'auto-mode-alist '("\\.rb\\'" . ruby-mode))
  (add-to-list 'auto-mode-alist '("\\.ru\\'" . ruby-mode))
  (add-to-list 'auto-mode-alist '("\\.gemspec\\'" . ruby-mode))
  (add-to-list 'auto-mode-alist '("\\.jbuilder\\'" . ruby-mode))
  (add-hook 'ruby-mode-hook '(lambda ()
                               (setq ruby-deep-arglist t)
                               (setq ruby-deep-indent-paren nil)
                               (setq c-tab-always-indent nil)
                               (require 'inf-ruby)
                               (require 'ruby-compilation))))

(require 'rspec-mode)
(custom-set-variables '(rspec-use-rake-flag nil))
