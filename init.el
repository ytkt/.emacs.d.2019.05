;;; cask
(require 'cask "~/.cask/cask.el")
(cask-initialize)

;;; init-loader.el
(require 'init-loader)
(init-loader-load "~/.emacs.d/conf")

;;auto-installの設定
(when(require 'auto-install nil t)
  ;;インストールディレクトリを設定する　初期値は~/.emacs.d/auto-install/
  (setq auto-install-directory "~/.emacs.d/elisp/")
  ;;EmacsWikiに登録されているelispの名前を取得する
  (auto-install-update-emacswiki-package-name t)
  ;;install-elispの関数を利用可能にする
  (auto-install-compatibility-setup))
