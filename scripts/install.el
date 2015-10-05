;; adapted from http://hacks-galore.org/aleix/files/scripts/emacs-pkg-install.el

;;
;; Install package from command line. Example:
;;
;;   $ emacs --batch --expr "(define pkg-to-install 'smex)" -l emacs-pkg-install.el
;;

(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(package-refresh-contents)

(package-install 'clj-refactor)