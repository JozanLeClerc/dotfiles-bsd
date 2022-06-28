(require 'org)
(setenv "HOME" "/usr/home/jozan")
(org-babel-load-file
 (expand-file-name "org/config.org"
				   user-emacs-directory))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#292D3E" "#ff5370" "#c3e88d" "#ffcb6b" "#82aaff" "#c792ea" "#89DDFF" "#EEFFFF"])
 '(auth-source-save-behavior nil)
 '(ccls-sem-function-colors '("#e5b124"))
 '(ccls-sem-parameter-faces
   [ccls-sem-parameter-face-0 ccls-sem-parameter-face-1 ccls-sem-parameter-face-2 ccls-sem-parameter-face-3 ccls-sem-parameter-face-4 ccls-sem-parameter-face-5 ccls-sem-parameter-face-6 ccls-sem-parameter-face-7 ccls-sem-parameter-face-8 ccls-sem-parameter-face-9])
 '(custom-safe-themes
   '("6b5c518d1c250a8ce17463b7e435e9e20faa84f3f7defba8b579d4f5925f60c1" default))
 '(fci-rule-color "#676E95")
 '(hl-todo-keyword-faces
   '(("TODO" . "#dc752f")
	 ("NEXT" . "#dc752f")
	 ("THEM" . "#2aa198")
	 ("PROG" . "#268bd2")
	 ("OKAY" . "#268bd2")
	 ("DONT" . "#d70000")
	 ("FAIL" . "#d70000")
	 ("DONE" . "#86dc2f")
	 ("NOTE" . "#875f00")
	 ("KLUDGE" . "#875f00")
	 ("HACK" . "#875f00")
	 ("TEMP" . "#875f00")
	 ("FIXME" . "#dc752f")
	 ("XXX+" . "#dc752f")
	 ("\\?\\?\\?+" . "#dc752f")))
 '(inhibit-startup-screen t)
 '(jdee-db-active-breakpoint-face-colors (cons "#1c1f2b" "#c792ea"))
 '(jdee-db-requested-breakpoint-face-colors (cons "#1c1f2b" "#c3e88d"))
 '(jdee-db-spec-breakpoint-face-colors (cons "#1c1f2b" "#676E95"))
 '(objed-cursor-color "#ff5370")
 '(package-selected-packages
   '(treemacs edit-indirect yaml-mode lua-mode company-nginx company-fuzzy company-go company-shell helm-ag rainbow-identifiers nginx-mode evil-quickscope vc-fossil crontab-mode go-mode mutt-mode pacmacs gemini-mode org-evil glsl-mode vimrc-mode windresize evil evil-collection evil-leader evil-search-highlight-persist evil-mc evil-surround evil-ediff evil-visual-mark-mode evil-nerd-commenter evil-vimish-fold evil-numbers yasnippet yasnippet-classic-snippets yasnippet-snippets auto-yasnippet el-autoyas helm helm-xref helm-etags-plus helm-fuzzy helm-themes helm-make helm-projectile projectile company company-box which-key magit undo-tree shell-pop autopair paredit rainbow-delimiters color-identifiers-mode ibuffer-vc ibuffer-projectile eyebrowse diff-hl fzf font-utils restart-emacs string-utils dired-icon kaolin-themes doom-themes spacemacs-theme doom-modeline dashboard org-superstar toc-org pdf-tools dockerfile-mode web-mode ssh sudo-ext vimish-fold bind-key all-the-icons all-the-icons-dired all-the-icons-ibuffer))
 '(pdf-view-midnight-colors (cons "#EEFFFF" "#292D3E"))
 '(pos-tip-background-color "#2E2A29")
 '(pos-tip-foreground-color "#d4d4d6")
 '(rustic-ansi-faces
   ["#292D3E" "#ff5370" "#c3e88d" "#ffcb6b" "#82aaff" "#c792ea" "#89DDFF" "#EEFFFF"])
 '(send-mail-function 'smtpmail-send-it)
 '(tabbar-separator '(0.2))
 '(vc-annotate-background "#292D3E")
 '(vc-annotate-color-map
   (list
	(cons 20 "#c3e88d")
	(cons 40 "#d7de81")
	(cons 60 "#ebd476")
	(cons 80 "#ffcb6b")
	(cons 100 "#fcb66b")
	(cons 120 "#f9a16b")
	(cons 140 "#f78c6c")
	(cons 160 "#e78e96")
	(cons 180 "#d690c0")
	(cons 200 "#c792ea")
	(cons 220 "#d97dc1")
	(cons 240 "#ec6898")
	(cons 260 "#ff5370")
	(cons 280 "#d95979")
	(cons 300 "#b36082")
	(cons 320 "#8d678b")
	(cons 340 "#676E95")
	(cons 360 "#676E95")))
 '(vc-annotate-very-old-color nil))
(load-theme 'gruvbox-dark-hard)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ccls-sem-function-face-0 ((t (:foreground "#fabd2f"))))
 '(ccls-sem-function-face-1 ((t (:foreground "#fabd2f"))))
 '(ccls-sem-function-face-2 ((t (:foreground "#fabd2f"))))
 '(ccls-sem-function-face-3 ((t (:foreground "#fabd2f"))))
 '(ccls-sem-function-face-4 ((t (:foreground "#fabd2f"))))
 '(ccls-sem-function-face-5 ((t (:foreground "#fabd2f"))))
 '(ccls-sem-function-face-6 ((t (:foreground "#fabd2f"))))
 '(ccls-sem-function-face-7 ((t (:foreground "#fabd2f"))))
 '(ccls-sem-function-face-8 ((t (:foreground "#fabd2f"))))
 '(ccls-sem-function-face-9 ((t (:foreground "#fabd2f"))))
 '(ccls-sem-macro-face-0 ((t (:foreground "#e27a33"))))
 '(ccls-sem-macro-face-1 ((t (:foreground "#e27a33"))))
 '(ccls-sem-macro-face-2 ((t (:foreground "#e27a33"))))
 '(ccls-sem-macro-face-3 ((t (:foreground "#e27a33"))))
 '(ccls-sem-macro-face-4 ((t (:foreground "#e27a33"))))
 '(ccls-sem-macro-face-6 ((t (:foreground "#e27a33"))))
 '(ccls-sem-macro-face-7 ((t (:foreground "#e27a33"))))
 '(ccls-sem-macro-face-8 ((t (:foreground "#e27a33"))))
 '(ccls-sem-macro-face-9 ((t (:foreground "#e27a33"))))
 '(ccls-sem-parameter-face-0 ((t (:foreground "#58c1a4"))))
 '(ccls-sem-parameter-face-2 ((t (:foreground "#58c1a4"))))
 '(ccls-sem-parameter-face-3 ((t (:foreground "#58c1a4"))))
 '(ccls-sem-parameter-face-4 ((t (:foreground "#58c1a4"))))
 '(ccls-sem-parameter-face-5 ((t (:foreground "#58c1a4"))))
 '(ccls-sem-parameter-face-6 ((t (:foreground "#58c1a4"))))
 '(ccls-sem-parameter-face-7 ((t (:foreground "#58c1a4"))))
 '(ccls-sem-parameter-face-8 ((t (:foreground "#58c1a4"))))
 '(ccls-sem-parameter-face-9 ((t (:foreground "#58c1a4"))))
 '(ccls-sem-static-face ((t (:weight bold))))
 '(ccls-sem-type-face-0 ((t (:foreground "#d3869b"))))
 '(ccls-sem-type-face-1 ((t (:foreground "#d3869b"))))
 '(ccls-sem-type-face-2 ((t (:foreground "#d3869b"))))
 '(ccls-sem-type-face-3 ((t (:foreground "#d3869b"))))
 '(ccls-sem-type-face-4 ((t (:foreground "#d3869b"))))
 '(ccls-sem-type-face-5 ((t (:foreground "#d3869b"))))
 '(ccls-sem-type-face-6 ((t (:foreground "#d3869b"))))
 '(ccls-sem-type-face-7 ((t (:foreground "#d3869b"))))
 '(ccls-sem-type-face-8 ((t (:foreground "#d3869b"))))
 '(ccls-sem-type-face-9 ((t (:foreground "#d3869b"))))
 '(ccls-sem-variable-face-0 ((t (:foreground "#83a598"))))
 '(ccls-sem-variable-face-1 ((t (:foreground "#83a598"))))
 '(ccls-sem-variable-face-2 ((t (:foreground "#83a598"))))
 '(ccls-sem-variable-face-3 ((t (:foreground "#83a598"))))
 '(ccls-sem-variable-face-4 ((t (:foreground "#83a598"))))
 '(ccls-sem-variable-face-5 ((t (:foreground "#83a598"))))
 '(ccls-sem-variable-face-6 ((t (:foreground "#83a598"))))
 '(ccls-sem-variable-face-7 ((t (:foreground "#83a598"))))
 '(ccls-sem-variable-face-8 ((t (:foreground "#83a598"))))
 '(ccls-sem-variable-face-9 ((t (:foreground "#83a598")))))

