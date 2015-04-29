;; android-mode
(require 'android-mode)

;; sdk
(setq android-mode-sdk-dir "~/Library/Android/sdk")

;; コマンド用プレフィックス
(setq android-mode-key-prefix (kbd "C-c C-c"))

;; Auto-Complete
(require 'ajc-java-complete-config)
(set 'ajc-tag-file "~/.emacs.d/etc/ajc.tag")
(add-hook 'java-mode-hook 'ajc-java-complete-mode)
