(require 'cl)
(toggle-debug-on-error)
(package-initialize)
(require 'clj-refactor)

(setq cljr-project-project-clean-functions (list 'cljr-clean-ns))
;;(setq cljr-project-clean-prompt nil)
(cljr-project-clean)