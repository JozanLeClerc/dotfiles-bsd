(require 'org)
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
   ["#282828" "#fb4934" "#8ec07c" "#fabd2f" "#268bd2" "#fb2874" "#83a598" "#ebdbb2"])
 '(custom-safe-themes
   (quote
	("6a0d7f41968908e25b2f56fa7b4d188e3fc9a158c39ef680b349dccffc42d1c8" "3577ee091e1d318c49889574a31175970472f6f182a9789f1a3e9e4513641d86" "d71aabbbd692b54b6263bfe016607f93553ea214bc1435d17de98894a5c3a086" "a92e9da0fab90cbec4af4a2035602208cebf3d071ea547157b2bfc5d9bd4d48d" "79278310dd6cacf2d2f491063c4ab8b129fee2a498e4c25912ddaa6c3c5b621e" "c499bf4e774b34e784ef5a104347b81c56220416d56d5fd3fd85df8704260aad" "c0fef082e36bb01efb44c8becead9f1d56234d61d84a849370195ca26d09cfa0" "10845272b6fa47a6cdfc49816748bdb1dc1cb9be647801c25c054a8e6a27ef72" "1623aa627fecd5877246f48199b8e2856647c99c6acdab506173f9bb8b0a41ac" "76bfa9318742342233d8b0b42e824130b3a50dcc732866ff8e47366aed69de11" "3c2f28c6ba2ad7373ea4c43f28fcf2eed14818ec9f0659b1c97d4e89c99e091e" "7d708f0168f54b90fc91692811263c995bebb9f68b8b7525d0e2200da9bc903c" "54cf3f8314ce89c4d7e20ae52f7ff0739efb458f4326a2ca075bf34bc0b4f499" "c83c095dd01cde64b631fb0fe5980587deec3834dc55144a6e78ff91ebc80b19" "2a749c20af891c16571527d07976bbcf2bf31819fa7d322942b73386019f4d58" "9b272154fb77a926f52f2756ed5872877ad8d73d018a426d44c6083d1ed972b1" "bc836bf29eab22d7e5b4c142d201bcce351806b7c1f94955ccafab8ce5b20208" "fe94e2e42ccaa9714dd0f83a5aa1efeef819e22c5774115a9984293af609fce7" "9efb2d10bfb38fe7cd4586afb3e644d082cbcdb7435f3d1e8dd9413cbe5e61fc" "71e5acf6053215f553036482f3340a5445aee364fb2e292c70d9175fb0cc8af7" "d74c5485d42ca4b7f3092e50db687600d0e16006d8fa335c69cf4f379dbd0eee" "be9645aaa8c11f76a10bcf36aaf83f54f4587ced1b9b679b55639c87404e2499" "6c3b5f4391572c4176908bb30eddc1718344b8eaff50e162e36f271f6de015ca" "123a8dabd1a0eff6e0c48a03dc6fb2c5e03ebc7062ba531543dfbce587e86f2a" "e1d09f1b2afc2fed6feb1d672be5ec6ae61f84e058cb757689edb669be926896" "a06658a45f043cd95549d6845454ad1c1d6e24a99271676ae56157619952394a" "fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" "9f9450547564423166a7d2de976c9ca712293170415ec78ed98d198748b44a90" "bf387180109d222aee6bb089db48ed38403a1e330c9ec69fe1f52460a8936b66" "82360e5f96244ce8cc6e765eeebe7788c2c5f3aeb96c1a765629c5c7937c0b5b" "8e7728f26552444601c5caf8c1b5f1c4c4fd0ab4d6572b9979771576efa4077b" "3d3807f1070bb91a68d6638a708ee09e63c0825ad21809c87138e676a60bda5d" "34b3219ae11acd81b2bb7f3f360505019f17d7a486deb8bb9c1b6d13c6616d2e" "b89ae2d35d2e18e4286c8be8aaecb41022c1a306070f64a66fd114310ade88aa" "2cdc13ef8c76a22daa0f46370011f54e79bae00d5736340a5ddfe656a767fddf" "2f1518e906a8b60fac943d02ad415f1d8b3933a5a7f75e307e6e9a26ef5bf570" "9089d25e2a77e6044b4a97a2b9fe0c82351a19fdd3e68a885f40f86bbe3b3900" "7e5d400035eea68343be6830f3de7b8ce5e75f7ac7b8337b5df492d023ee8483" "bb28b083fe1c61848c10c049be076afc572ea9bee6e1f8dc2631c5ee4f7388c8" "c1c459af570241993823db87096bc775506c378aa02c9c6cd9ccaa8247056b96" "8ce796252a78d1a69e008c39d7b84a9545022b64609caac98dc7980d76ae34e3" "e2acbf379aa541e07373395b977a99c878c30f20c3761aac23e9223345526bcc" "939ea070fb0141cd035608b2baabc4bd50d8ecc86af8528df9d41f4d83664c6a" "4cf9ed30ea575fb0ca3cff6ef34b1b87192965245776afa9e9e20c17d115f3fb" "aded61687237d1dff6325edb492bde536f40b048eab7246c61d5c6643c696b7f" "15ba8081651869ec689c9004288bed79003de5b4ee9c51a9d4a208d9e3439706" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "k84d2f9eeb3f82d619ca4bfffe5f157282f4779732f48a5ac1484d94d5ff5b279" "c74e83f8aa4c78a121b52146eadb792c9facc5b1f02c917e3dbb454fca931223" "8d5f22f7dfd3b2e4fc2f2da46ee71065a9474d0ac726b98f647bc3c7e39f2819" "b6f06081b007b57be61b82fb53f27315e2cf38fa690be50d6d63d2b62a408636" "d8a7a7d2cffbc55ec5efbeb5d14a5477f588ee18c5cddd7560918f9674032727" "a11043406c7c4233bfd66498e83600f4109c83420714a2bd0cd131f81cbbacea" "67b11ee5d10f1b5f7638035d1a38f77bca5797b5f5b21d16a20b5f0452cbeb46" "4c8372c68b3eab14516b6ab8233de2f9e0ecac01aaa859e547f902d27310c0c3" "b8c5adfc0230bd8e8d73450c2cd4044ad7ba1d24458e37b6dec65607fc392980" "b5cff93c3c6ed12d09ce827231b0f5d4925cfda018c9dcf93a2517ce3739e7f1" "cdc2a7ba4ecf0910f13ba207cce7080b58d9ed2234032113b8846a4e44597e41" "72c530c9c8f3561b5ab3bf5cda948cd917de23f48d9825b7a781fe1c0d737f2f" "780c67d3b58b524aa485a146ad9e837051918b722fd32fd1b7e50ec36d413e70" "73a13a70fd111a6cd47f3d4be2260b1e4b717dbf635a9caee6442c949fad41cd" "da538070dddb68d64ef6743271a26efd47fbc17b52cc6526d932b9793f92b718" "9b1c580339183a8661a84f5864a6c363260c80136bd20ac9f00d7e1d662e936a" "1b27e3b3fce73b72725f3f7f040fd03081b576b1ce8bbdfcb0212920aec190ad" default)))
 '(fci-rule-color "#555556")
 '(hl-todo-keyword-faces
   (quote
	(("TODO" . "#dc752f")
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
	 ("\\?\\?\\?+" . "#dc752f"))))
 '(inhibit-startup-screen t)
 '(jdee-db-active-breakpoint-face-colors (cons "#1B2229" "#fabd2f"))
 '(jdee-db-requested-breakpoint-face-colors (cons "#1B2229" "#8ec07c"))
 '(jdee-db-spec-breakpoint-face-colors (cons "#1B2229" "#555556"))
 '(objed-cursor-color "#fb4934")
 '(package-selected-packages
   (quote
	(toc-org evil-org org-bullets yaml-mode twittering-mode helm-slime helm-w3m helm-mu htmlize babel org-pdftools shell-pop which-key golden-ratio elfeed-org elfeed dmenu mingus lua-mode dionysos helm-c-yasnippet helm-emms emms font-lock-cl restart-emacs w3m string-utils go-mode major-mode-icons dired-icon mode-icons evil-collection sed-mode zones kaolin-themes gruvbox-theme helm-themes yasnippet-classic-snippets yasnippet-snippets auto-yasnippet php-auto-yasnippets el-autoyas yasnippet cargo evil-ediff windresize helm-make spacemacs-theme centaur-tabs evil-mu4e evil-magit dashboard slime ssh sudo-ext dockerfile-mode docker frame-local ov dash-functional helm-addressbook org-mime flyspell-correct pdf-tools websocket request emojify-logos emojify oauth2 circe mu4e-alert web-mode doom-themes doom-modeline all-the-icons-dired all-the-icons-gnus all-the-icons html5-schema phps-mode org-babel-eval-in-repl rust-mode smart-mode-line-powerline-theme eshell-prompt-extras eshell-fixed-prompt pyenv-mode s realgud-lldb neotree ranger ## color-theme-modern auto-complete-c-headers command-log-mode auto-complete magit smart-tabs-mode airline-themes paredit autopair tabbar-ruler tabbar use-package-el-get color-theme-approximate diminish rainbow-delimiters color-identifiers-mode use-package helm evil-visual-mark-mode)))
 '(pdf-view-midnight-colors (cons "#282828" "#ebdbb2"))
 '(pos-tip-background-color "#2E2A29")
 '(pos-tip-foreground-color "#d4d4d6")
 '(rustic-ansi-faces
   ["#1c1e26" "#e95678" "#09f7a0" "#fab795" "#21bfc2" "#6c6f93" "#59e3e3" "#c7c9cb"])
 '(send-mail-function (quote smtpmail-send-it))
 '(tabbar-separator (quote (0.2)))
 '(vc-annotate-background "#282828")
 '(vc-annotate-color-map
   (list
	(cons 20 "#8ec07c")
	(cons 40 "#b2bf62")
	(cons 60 "#d5be48")
	(cons 80 "#fabd2f")
	(cons 100 "#fba827")
	(cons 120 "#fc9420")
	(cons 140 "#fe8019")
	(cons 160 "#fd6237")
	(cons 180 "#fb4555")
	(cons 200 "#fb2874")
	(cons 220 "#fb335e")
	(cons 240 "#fa3e49")
	(cons 260 "#fb4934")
	(cons 280 "#d14c3c")
	(cons 300 "#a84f45")
	(cons 320 "#7e514d")
	(cons 340 "#555556")
	(cons 360 "#555556")))
 '(vc-annotate-very-old-color nil))
(load-theme 'doom-palenight)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )