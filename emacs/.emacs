
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
;;(add-to-list 'package-archives
;;           '("melpa-stable" . "https://stable.melpa.org/packages/"))
;;(add-to-list 'package-pinned-packages '(telega . "melpa-stable"))
(package-initialize)

(add-to-list 'custom-theme-load-path "/home/lungpu/.emacs.d/themes")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("1cae4424345f7fe5225724301ef1a793e610ae5a4e23c023076dc334a9eb940a" "58c996beb973f7e988ee4fd21c367b7a5bbdb0622ddfbbd112672a7b4e3d3b81" "c865644bfc16c7a43e847828139b74d1117a6077a845d16e71da38c8413a5aaa" "7a424478cb77a96af2c0f50cfb4e2a88647b3ccca225f8c650ed45b7f50d9525" "021321ae56a45794f43b41de09fb2bfca184e196666b7d7ff59ea97ec2114559" "5d82f1ce0401d4fdf25e86f0d163a3db65026a38e1449bfb8f6c3f583dc2f8d9" "2dc03dfb67fbcb7d9c487522c29b7582da20766c9998aaad5e5b63b5c27eec3f" "b99e334a4019a2caa71e1d6445fc346c6f074a05fcbb989800ecbe54474ae1b0" "56044c5a9cc45b6ec45c0eb28df100d3f0a576f18eef33ff8ff5d32bac2d9700" "2721b06afaf1769ef63f942bf3e977f208f517b187f2526f0e57c1bd4a000350" "49acd691c89118c0768c4fb9a333af33e3d2dca48e6f79787478757071d64e68" "e3daa8f18440301f3e54f2093fe15f4fe951986a8628e98dcd781efbec7a46f2" "9d29a302302cce971d988eb51bd17c1d2be6cd68305710446f658958c0640f68" "8d3ef5ff6273f2a552152c7febc40eabca26bae05bd12bc85062e2dc224cde9a" "944d52450c57b7cbba08f9b3d08095eb7a5541b0ecfb3a0a9ecd4a18f3c28948" "47d5324dac28a85c1bb84b4c1dc3a8dc407cc7369db6e30d3244b16232b1eec4" "57e3f215bef8784157991c4957965aa31bac935aca011b29d7d8e113a652b693" "e01d36b3ca7991d21fba7f2708f0bfb587b61654898bf3dd92fb11c9fbf5a649" "1f35dedbeacbfe9ed72810478836105b5617da67ca27f717a29bbb8087e8a1ba" "eb122e1df607ee9364c2dfb118ae4715a49f1a9e070b9d2eb033f1cefd50a908" "fa49766f2acb82e0097e7512ae4a1d6f4af4d6f4655a48170d0a00bcb7183970" "3e374bb5eb46eb59dbd92578cae54b16de138bc2e8a31a2451bf6fdb0f3fd81b" "19a2c0b92a6aa1580f1be2deb7b8a8e3a4857b6c6ccf522d00547878837267e7" "2ff9ac386eac4dffd77a33e93b0c8236bb376c5a5df62e36d4bfa821d56e4e20" "72ed8b6bffe0bfa8d097810649fd57d2b598deef47c992920aef8b5d9599eefe" "d80952c58cf1b06d936b1392c38230b74ae1a2a6729594770762dc0779ac66b7" "b1a691bb67bd8bd85b76998caf2386c9a7b2ac98a116534071364ed6489b695d" "afeb7b07dbc1a4cfadb24f3ef6c8cf5e63051bf76411779f03a0fe3aadc07768" "82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" "bb08c73af94ee74453c90422485b29e5643b73b05e8de029a6909af6a3fb3f58" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" "1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e" "0ed3d96a506b89c1029a1ed904b11b5adcebeb2e0c16098c99c0ad95cb124729" "b6c43bb2aea78890cf6bd4a970e6e0277d2daf0075272817ea8bb53f9c6a7f0a" "91c008faf603a28d026957120a5a924a3c8fff0e12331abf5e04c0e9dd310c65" "c8b83e7692e77f3e2e46c08177b673da6e41b307805cd1982da9e2ea2e90e6d7" "e3a1b1fb50e3908e80514de38acbac74be2eb2777fc896e44b54ce44308e5330" "24168c7e083ca0bbc87c68d3139ef39f072488703dcdd82343b8cab71c0f62a7" "b6269b0356ed8d9ed55b0dcea10b4e13227b89fd2af4452eee19ac88297b0f99" "46b2d7d5ab1ee639f81bde99fcd69eb6b53c09f7e54051a591288650c29135b0" "fb83a50c80de36f23aea5919e50e1bccd565ca5bb646af95729dc8c5f926cbf3" "b02eae4d22362a941751f690032ea30c7c78d8ca8a1212fdae9eecad28a3587f" "9abe2b502db3ed511fea7ab84b62096ba15a3a71cdb106fd989afa179ff8ab8d" "b3775ba758e7d31f3bb849e7c9e48ff60929a792961a2d536edec8f68c671ca5" "3263bd17a7299449e6ffe118f0a14b92373763c4ccb140f4a30c182a85516d7f" "3d4df186126c347e002c8366d32016948068d2e9198c496093a96775cc3b3eaa" "e0d42a58c84161a0744ceab595370cbe290949968ab62273aed6212df0ea94b4" "3cd28471e80be3bd2657ca3f03fbb2884ab669662271794360866ab60b6cb6e6" "3d5ef3d7ed58c9ad321f05360ad8a6b24585b9c49abcee67bdcbb0fe583a6950" "96998f6f11ef9f551b427b8853d947a7857ea5a578c75aa9c4e7c73fe04d10b4" "e2c926ced58e48afc87f4415af9b7f7b58e62ec792659fcb626e8cba674d2065" "987b709680284a5858d5fe7e4e428463a20dfabe0a6f2a6146b3b8c7c529f08b" "9375315e4786e5cc84b739537102802c18650f3168cf7c29f7fbb00a54f9b8e0" "e9776d12e4ccb722a2a732c6e80423331bcb93f02e089ba2a4b02e85de1cf00e" "72a81c54c97b9e5efcc3ea214382615649ebb539cb4f2fe3a46cd12af72c7607" "9b59e147dbbde5e638ea1cde5ec0a358d5f269d27bd2b893a0947c4a867e14c1" "3cc2385c39257fed66238921602d8104d8fd6266ad88a006d0a4325336f5ee02" "58c6711a3b568437bab07a30385d34aacf64156cc5137ea20e799984f4227265" "c48551a5fb7b9fc019bf3f61ebf14cf7c9cdca79bcb2a4219195371c02268f11" "d6844d1e698d76ef048a53cefe713dbbe3af43a1362de81cdd3aefa3711eae0d" "7f4e41ee5ed365abdbb922a86d4cec9dc35f166c407c377095a894c28f636933" "35c096aa0975d104688a9e59e28860f5af6bb4459fd692ed47557727848e6dfe" "8e79884e89740cf6b7e0210f52e4ac995dc1f1a9a17151bfcfb4d660757a011b" "9b54ba84f245a59af31f90bc78ed1240fca2f5a93f667ed54bbf6c6d71f664ac" "846b3dc12d774794861d81d7d2dcdb9645f82423565bfb4dad01204fa322dbd5" "47db50ff66e35d3a440485357fb6acb767c100e135ccdf459060407f8baea7b2" "da53441eb1a2a6c50217ee685a850c259e9974a8fa60e899d393040b4b8cc922" "f7fed1aadf1967523c120c4c82ea48442a51ac65074ba544a5aefc5af490893b" "a7b20039f50e839626f8d6aa96df62afebb56a5bbd1192f557cb2efb5fcfb662" "246a9596178bb806c5f41e5b571546bb6e0f4bd41a9da0df5dfbca7ec6e2250c" "850bb46cc41d8a28669f78b98db04a46053eca663db71a001b40288a9b36796c" "e6f3a4a582ffb5de0471c9b640a5f0212ccf258a987ba421ae2659f1eaa39b09" "1704976a1797342a1b4ea7a75bdbb3be1569f4619134341bd5a4c1cfb16abad4" "4b6b6b0a44a40f3586f0f641c25340718c7c626cbf163a78b5a399fbe0226659" "b5803dfb0e4b6b71f309606587dd88651efe0972a5be16ece6a958b197caeed8" "d47f868fd34613bd1fc11721fe055f26fd163426a299d45ce69bef1f109e1e71" "266ecb1511fa3513ed7992e6cd461756a895dcc5fef2d378f165fed1c894a78c" "8621edcbfcf57e760b44950bb1787a444e03992cb5a32d0d9aec212ea1cd5234" "b186688fbec5e00ee8683b9f2588523abdf2db40562839b2c5458fcfb322c8a4" "8d7b028e7b7843ae00498f68fad28f3c6258eda0650fe7e17bfb017d51d0e2a2" "6c531d6c3dbc344045af7829a3a20a09929e6c41d7a7278963f7d3215139f6a7" "7eea50883f10e5c6ad6f81e153c640b3a288cd8dc1d26e4696f7d40f754cc703" "5784d048e5a985627520beb8a101561b502a191b52fa401139f4dd20acb07607" "3d54650e34fa27561eb81fc3ceed504970cc553cfd37f46e8a80ec32254a3ec3" "1f1b545575c81b967879a5dddc878783e6ebcca764e4916a270f9474215289e5" "1d5e33500bc9548f800f9e248b57d1b2a9ecde79cb40c0b1398dec51ee820daf" "cbdf8c2e1b2b5c15b34ddb5063f1b21514c7169ff20e081d39cf57ffee89bc1e" "f91395598d4cb3e2ae6a2db8527ceb83fed79dbaf007f435de3e91e5bda485fb" "a6d39b3e27d45aea4bf0c20a9f6ccbff858eae1728ac0cf72d6a86bd873202d2" "78e9a3e1c519656654044aeb25acb8bec02579508c145b6db158d2cfad87c44e" "28a104f642d09d3e5c62ce3464ea2c143b9130167282ea97ddcc3607b381823f" "2d035eb93f92384d11f18ed00930e5cc9964281915689fa035719cab71766a15" "835868dcd17131ba8b9619d14c67c127aa18b90a82438c8613586331129dda63" "c2aeb1bd4aa80f1e4f95746bda040aafb78b1808de07d340007ba898efa484f5" "e8df30cd7fb42e56a4efc585540a2e63b0c6eeb9f4dc053373e05d774332fc13" "0466adb5554ea3055d0353d363832446cd8be7b799c39839f387abb631ea0995" "a82ab9f1308b4e10684815b08c9cac6b07d5ccb12491f44a942d845b406b0296" "22a514f7051c7eac7f07112a217772f704531b136f00e2ccfaa2e2a456558d39" "0b3aee906629ac7c3bd994914bf252cf92f7a8b0baa6d94cb4dfacbd4068391d" "a9a67b318b7417adbedaab02f05fa679973e9718d9d26075c6235b1f0db703c8" "7a7b1d475b42c1a0b61f3b1d1225dd249ffa1abb1b7f726aec59ac7ca3bf4dae" "6c98bc9f39e8f8fd6da5b9c74a624cbb3782b4be8abae8fd84cbc43053d7c175" "1212c23e55a3a4a2234257ede376af7a4a4006264a0216a2fd7a64b7a9834b5d" "8e0afb9cb12b4a60c3b423b4bf101065178364698b5abdf7f786698599b4a2f5" "81d0efcea97486f780ca7dc7ced5fedc7343b0bf377981d7d7e68d760960b804" "f16c26e482a3ed028e07dfbd7042f9c6326a548ae73a5caa2c5a68774991d423" "2d029d5dbc60b725e1e07ee774762627fc544e39e81425aa65ffa72598a0046c" "77368dca7f568909711273091913582e31ab083b2ab83af8b350feefdbd67272" "66640c77dfa2a88cb734f930636e729d37376876c8f47c13d1eb3a38f38814e3" "6bef9385949dddfa20f4c7ca977b478af4793245ac6d74f29aef9b14c25b62fd" "3c8a306f4aeda86c59bf95ee4d6f0208b55e86a7c832308cc49bb72374c09cd3" "4b0751cee609e40f846f0b48118d613749afa89855182f3c7917ce0ae6588f0e" "5438a51840855b56380ef387c3d1acbb48d99945e95a89eb3667de44fb5aa221" "7757adfb0175e02446bf6404356fb5cd36f2c1d5f98ff5aeb1840ba362c2a738" "91919b410191c158f1b7e7871dcfb590cdc69fd9ba0c8dfcc6bff9d270604c3c" "30de955491cb3b897a9bfc59be2a74d1ca460619aeabc20d757416aef92d0abc" "5ec175074181c2f286e4f475cb462e4a920242c79abb4652db7c02ecb829aba1" "314d30559c0bde047144bad8cd115b1c682e7e7cc0a503cc42ae0c2ef1d1607f" "234dbb732ef054b109a9e5ee5b499632c63cc24f7c2383a849815dacc1727cb6" "f6665ce2f7f56c5ed5d91ed5e7f6acb66ce44d0ef4acfaa3a42c7cfe9e9a9013" "1d44ec8ec6ec6e6be32f2f73edf398620bb721afeed50f75df6b12ccff0fbb15" "a6e620c9decbea9cac46ea47541b31b3e20804a4646ca6da4cce105ee03e8d0e" "94a94c957cf4a3f8db5f12a7b7e8f3e68f686d76ae8ed6b82bd09f6e6430a32c" "8146edab0de2007a99a2361041015331af706e7907de9d6a330a3493a541e5a6" "454c1c9ce70f7d807c51c890910365fd3c64a9e63f596511e9ff57dd97bbeea8" "bcd0237b2a5b7897e482458cc62c4f3fa3d9d7f9a9667338e67d4c7a8e009819" "716f0a8a9370912d9e6659948c2cb139c164b57ef5fda0f337f0f77d47fe9073" "4641f2added941818ca5a618aa38206d6dd6c2fa553137e2d0e1c82073b8674a" "3433a30aa4ecd3ba38314cec0b473b8a55ec00d43c1b700a0caeef1b5ac3bc19" "5111a41453244802afd93eed1a434e612a8afbdf19c52384dffab129258bab6e" "d268b67e0935b9ebc427cad88ded41e875abfcc27abd409726a92e55459e0d01" "745d03d647c4b118f671c49214420639cb3af7152e81f132478ed1c649d4597d" "4133d2d6553fe5af2ce3f24b7267af475b5e839069ba0e5c80416aa28913e89a" "1278c5f263cdb064b5c86ab7aa0a76552082cf0189acf6df17269219ba496053" "b0e446b48d03c5053af28908168262c3e5335dcad3317215d9fdeb8bac5bacf9" "6f4421bf31387397f6710b6f6381c448d1a71944d9e9da4e0057b3fe5d6f2fad" "4a5aa2ccb3fa837f322276c060ea8a3d10181fecbd1b74cb97df8e191b214313" "e19ac4ef0f028f503b1ccafa7c337021834ce0d1a2bca03fcebc1ef635776bea" "333958c446e920f5c350c4b4016908c130c3b46d590af91e1e7e2a0611f1e8c5" "0d01e1e300fcafa34ba35d5cf0a21b3b23bc4053d388e352ae6a901994597ab1" "4b0e826f58b39e2ce2829fab8ca999bcdc076dec35187bf4e9a4b938cb5771dc" "fe2539ccf78f28c519541e37dc77115c6c7c2efcec18b970b16e4a4d2cd9891d" "a0be7a38e2de974d1598cf247f607d5c1841dbcef1ccd97cded8bea95a7c7639" "da186cce19b5aed3f6a2316845583dbee76aea9255ea0da857d1c058ff003546" "97db542a8a1731ef44b60bc97406c1eb7ed4528b0d7296997cbb53969df852d6" "93a0885d5f46d2aeac12bf6be1754faa7d5e28b27926b8aa812840fe7d0b7983" "ecba61c2239fbef776a72b65295b88e5534e458dfe3e6d7d9f9cb353448a569e" "151bde695af0b0e69c3846500f58d9a0ca8cb2d447da68d7fbf4154dcf818ebc" "d1b4990bd599f5e2186c3f75769a2c5334063e9e541e37514942c27975700370" "cd736a63aa586be066d5a1f0e51179239fe70e16a9f18991f6f5d99732cabb32" "d2e9c7e31e574bf38f4b0fb927aaff20c1e5f92f72001102758005e53d77b8c9" "6b289bab28a7e511f9c54496be647dc60f5bd8f9917c9495978762b99d8c96a0" "fe666e5ac37c2dfcf80074e88b9252c71a22b6f5d2f566df9a7aa4f9bea55ef8" "b35a14c7d94c1f411890d45edfb9dc1bd61c5becd5c326790b51df6ebf60f402" "4697a2d4afca3f5ed4fdf5f715e36a6cac5c6154e105f3596b44a4874ae52c45" "6b2636879127bf6124ce541b1b2824800afc49c6ccd65439d6eb987dbf200c36" "b54826e5d9978d59f9e0a169bbd4739dd927eead3ef65f56786621b53c031a7c" "356e5cbe0874b444263f3e1f9fffd4ae4c82c1b07fe085ba26e2a6d332db34dd" "fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" "a3fa4abaf08cc169b61dea8f6df1bbe4123ec1d2afeb01c17e11fdc31fc66379" "f0dc4ddca147f3c7b1c7397141b888562a48d9888f1595d69572db73be99a024" "3a3de615f80a0e8706208f0a71bbcc7cc3816988f971b6d237223b6731f91605" "1c082c9b84449e54af757bcae23617d11f563fc9f33a832a8a2813c4d7dfb652" "a37d20710ab581792b7c9f8a075fcbb775d4ffa6c8bce9137c84951b1b453016" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "e6df46d5085fde0ad56a46ef69ebb388193080cc9819e2d6024c9c6e27388ba9" default))
 '(display-time-mode t)
 '(hl-todo-keyword-faces
   '(("TODO" . "#dc752f")
     ("NEXT" . "#dc752f")
     ("THEM" . "#2d9574")
     ("PROG" . "#4f97d7")
     ("OKAY" . "#4f97d7")
     ("DONT" . "#f2241f")
     ("FAIL" . "#f2241f")
     ("DONE" . "#86dc2f")
     ("NOTE" . "#b1951d")
     ("KLUDGE" . "#b1951d")
     ("HACK" . "#b1951d")
     ("TEMP" . "#b1951d")
     ("FIXME" . "#dc752f")
     ("XXX+" . "#dc752f")
     ("\\?\\?\\?+" . "#dc752f")))
 '(jdee-db-active-breakpoint-face-colors (cons "#100e23" "#906cff"))
 '(jdee-db-requested-breakpoint-face-colors (cons "#100e23" "#95ffa4"))
 '(jdee-db-spec-breakpoint-face-colors (cons "#100e23" "#565575"))
 '(line-spacing 0.2)
 '(objed-cursor-color "#CC9393")
 '(org-agenda-files '("~/notes/mygtd.org"))
 '(org-drill-done-count-color "#663311")
 '(org-drill-failed-count-color "#880000")
 '(org-drill-mature-count-color "#005500")
 '(org-drill-new-count-color "#004488")
 '(package-selected-packages
   '(ssh-agency mines mindre-theme afternoon-theme ample-theme clues-theme color-theme-sanityinc-tomorrow flatland-black-theme flatland-theme gruvbox-theme moe-theme monokai-alt-theme monokai-pro-theme monokai-theme org-superstar soothe-theme org-bullets md-readme exotica-theme overcast-theme abyss-theme yafolding fira-code-mode firecode-theme eink-theme go-mode nov dream-theme dockerfile-mode doom-modeline docker-compose-mode fish-completion terraform-mode kubernetes magit fish-mode lua-mode js-react-redux-yasnippets js2-mode js3-mode slime auto-complete cyberpunk-2019-theme doom-themes hc-zenburn-theme spacemacs-theme zenburn-theme visual-regexp telega quelpa))
 '(pdf-view-midnight-colors '("#b2b2b2" . "#292b2e"))
 '(rustic-ansi-faces
   ["#3F3F3F" "#CC9393" "#7F9F7F" "#F0DFAF" "#8CD0D3" "#DC8CC3" "#93E0E3" "#DCDCDC"])
 '(show-paren-mode t)
 '(vc-annotate-background "#1b182c")
 '(vc-annotate-color-map
   (list
    (cons 20 "#95ffa4")
    (cons 40 "#b8f7a6")
    (cons 60 "#dbf0a8")
    (cons 80 "#ffe9aa")
    (cons 100 "#ffd799")
    (cons 120 "#ffc488")
    (cons 140 "#ffb378")
    (cons 160 "#eda79b")
    (cons 180 "#db9cbd")
    (cons 200 "#c991e1")
    (cons 220 "#db8bc0")
    (cons 240 "#ed85a0")
    (cons 260 "#ff8080")
    (cons 280 "#d4757d")
    (cons 300 "#aa6a7a")
    (cons 320 "#805f77")
    (cons 340 "#858FA5")
    (cons 360 "#858FA5")))
 '(vc-annotate-very-old-color nil)
 '(warning-suppress-log-types '((lsp-mode) (lsp-mode) (lsp-mode) (lsp-mode)))
 '(warning-suppress-types '((lsp-mode) (lsp-mode) (lsp-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Fira Code" :foundry "CTDB" :slant normal :weight normal :height 120 :width normal)))))
(show-paren-mode)

;(defun add-quotes()
;  "Adds single quotes to current word"
;  (interactive)
;  (backward-word)
;  (replace-regex '(<w+>) '\\1')
;)
;(global-set-key (kbd "C-M-/") 'add-quotes)

(defun duplicate-line()
  "Duplicate current line"
  (interactive)
  (move-beginning-of-line 1)
  (kill-line)
  (yank)
  (open-line 1)
  (next-line 1)
  (yank)
  (move-end-of-line 1)
)
(global-set-key (kbd "C-d") 'duplicate-line)
(global-set-key (kbd "<delete>") 'delete-char)

(global-set-key (kbd "<C-tab>") 'other-window)

(defun kill-and-movetoother()
  (interactive)
  (other-window)
  (kbd "<C-x-1>")
)
(global-set-key (kbd "<C-escape>") 'kill-and-movetoother)

(defun toggle-window-split ()
  "Swaps a two-window panel layout position"
  (interactive)
  (if (= (count-windows) 2)
      (let* ((this-win-buffer (window-buffer))
             (next-win-buffer (window-buffer (next-window)))
             (this-win-edges (window-edges (selected-window)))
             (next-win-edges (window-edges (next-window)))
             (this-win-2nd (not (and (<= (car this-win-edges)
                                         (car next-win-edges))
                                     (<= (cadr this-win-edges)
                                         (cadr next-win-edges)))))
             (splitter
              (if (= (car this-win-edges)
                     (car (window-edges (next-window))))
                  'split-window-horizontally
                'split-window-vertically)))
        (delete-other-windows)
        (let ((first-win (selected-window)))
          (funcall splitter)
          (if this-win-2nd (other-window 1))
          (set-window-buffer (selected-window) this-win-buffer)
          (set-window-buffer (next-window) next-win-buffer)
          (select-window first-win)
          (if this-win-2nd (other-window 1))))))
(global-set-key (kbd "C-M-u") 'toggle-window-split)

(defun copy-line()
  "Copies the whole current line"
  (interactive)
  (save-excursion
    (move-beginning-of-line 1)
    (kill-line)
    (yank)
    (move-end-of-line 1))
)
(global-set-key (kbd "C-M-y") 'copy-line)

(require 'visual-regexp)
(define-key global-map (kbd "C-c r") 'vr/replace)
(define-key global-map (kbd "C-c q") 'vr/query-replace)
;; if you use multiple-cursors, this is for you:
(define-key global-map (kbd "C-c m") 'vr/mc-mark)

(global-set-key [C-tab] 'other-window)

(global-set-key (kbd "C-#") 'comment-or-uncomment-region)

;; nov.el (epub reading mode)
(add-to-list 'auto-mode-alist '("\\.epub\\'" . nov-mode))

;; set a custom font if desired
(defun my-nov-font-setup ()
  (face-remap-add-relative 'variable-pitch :family "Noto Sans" :height 1.2))
(add-hook 'nov-mode-hook 'my-nov-font-setup)

;; Org-mode settings
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-font-lock-mode 1)

(defun gtd ()
  "Opens the gtd file in the default location"
  (interactive)
  (find-file "~/notes/mygtd.org")
)

(defun reload-init-file()
  "Reloads the user's .emacs init file"
  (interactive)
  (load-file "~/.emacs")
)
(global-set-key "\C-xr" 'reload-init-file)

(defun visit-init-readonly()
  "Opens the init file readonly for reference"
  (interactive)
  (find-file-other-frame "~/.emacs")
  (read-only-mode 1)
  )
(global-set-key "\C-ci" 'visit-init-readonly)


(global-set-key "\M-gt" 'gtd)

(setq org-todo-keyword-faces
      '(
	("TODO" . (:foreground "red" :weight bold))
	("UPNEXT" . ("#E35DBF"))
	("DOING" . (:foreground "white" :background "darkgreen" :weight bold))
	("ONHOLD" . "orange")
	("DONE" . "green")
	)
)

; enable auto-complete
;(auto-complete-mode)

;(defun find-file-other-window-reverse()
;  "Same as find-file-other-window but swaps the panels using the toggle-window-split function"
;  (interactive)
;  (find-file-other-window (read-file-name "Open file: "))
;  (toggle-window-split)
;  )

(setq inferior-lisp-program "clisp")

; avoid the annoying welcome screen
(setq inhibit-startup-screen t)


(setq package-selected-packages '(lsp-mode yasnippet lsp-treemacs helm-lsp projectile hydra flycheck company avy which-key helm-xref dap-mode zenburn-theme json-mode))
(when (cl-find-if-not #'package-installed-p package-selected-packages)
  (package-refresh-contents)
  (mapc #'package-install package-selected-packages))
(load-theme 'spolsky t)
(which-key-mode)
(add-hook 'prog-mode-hook #'lsp)
(setq gc-cons-threshold (* 100 1024 1024)
      read-process-output-max (* 1024 1024)
      company-idle-delay 0.0
      company-minimum-prefix-length 1
      create-lockfiles nil) ;; lock files will kill `npm start'
(with-eval-after-load 'lsp-mode
  (require 'dap-chrome)
  (add-hook 'lsp-mode-hook #'lsp-enable-which-key-integration)
  (yas-global-mode 1))

					; removing toolbars and extra stuff in gui mode emacs

; disable toolbar, menubar and scroll bars
(tool-bar-mode -1)
(menu-bar-mode -1)
(toggle-scroll-bar -1)

; show clock in mode line
(display-time-mode 1)
(setq display-time-string-forms
       '((propertize (concat " " 24-hours ":" minutes " ")
 		    'face 'Egoge-display-time)))

; type y/n instead of yes/no
(fset 'yes-or-no-p 'y-or-n-p)

; windows moving around with simplified keystrokes
(windmove-default-keybindings)

;; Make windmove work in Org mode:
(add-hook 'org-shiftup-final-hook 'windmove-up)
(add-hook 'org-shiftleft-final-hook 'windmove-left)
(add-hook 'org-shiftdown-final-hook 'windmove-down)
(add-hook 'org-shiftright-final-hook 'windmove-right)

; resize windows rebinding
(global-set-key (kbd "S-C-M-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "S-C-M-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "S-C-M-<down>") 'shrink-window)
(global-set-key (kbd "S-C-M-<up>") 'enlarge-window)


;; Toggle between split windows and a single window
(defun toggle-windows-split()
  "Switch back and forth between one window and whatever split of windows we might have in the frame. The idea is to maximize the current buffer, while being able to go back to the previous split of windows in the frame simply by calling this command again."
  (interactive)
  (if (not (window-minibuffer-p (selected-window)))
      (progn
        (if (< 1 (count-windows))
            (progn
              (window-configuration-to-register ?u)
              (delete-other-windows))
          (jump-to-register ?u))))
  (my-iswitchb-close))
(define-key global-map (kbd "C-|") 'toggle-windows-split)

;; Note: you may also need to define the my-iswitchb-close function 
;; created by Ignacio as well: http://emacswiki.org/emacs/IgnacioPazPosse
(defun my-iswitchb-close()
 "Open iswitchb or, if in minibuffer go to next match. Handy way to cycle through the ring."
 (interactive)
 (if (window-minibuffer-p (selected-window))
     (keyboard-escape-quit)))


(defun only-current-buffer () 
  (interactive)                                                                 
    (mapc 'kill-buffer (cdr (buffer-list (current-buffer)))))


(global-set-key (kbd "C-M-g") 'goto-line)

(global-set-key (kbd "C-$") 'load-theme)

(defun swap-buffers ()
  (interactive)
  (setq buf1 (current-buffer))
  (other-window 1)
  (setq buf2 (current-buffer))
  (switch-to-buffer buf1)
  (other-window 1)
  (switch-to-buffer buf2)
  )
(global-set-key (kbd "C-S-s") 'swap-buffers)

; spell checking
(with-eval-after-load "ispell"
  ;; Configure `LANG`, otherwise ispell.el cannot find a 'default
  ;; dictionary' even though multiple dictionaries will be configured
  ;; in next line.
  (setenv "LANG" "en_US.UTF-8")
  (setq ispell-program-name "hunspell")
  (setq ispell-dictionary "es_AR,en_US")
  ;; ispell-set-spellchecker-params has to be called
  ;; before ispell-hunspell-add-multi-dic will work
  (ispell-set-spellchecker-params)
  (ispell-hunspell-add-multi-dic "es_AR,en_US")
  ;; For saving words to the personal dictionary, don't infer it from
  ;; the locale, otherwise it would save to ~/.hunspell_de_DE.
  (setq ispell-personal-dictionary "~/.hunspell_personal"))

;; The personal dictionary file has to exist, otherwise hunspell will
;; silently not use it.
(unless (file-exists-p ispell-personal-dictionary)
  (write-region "" nil ispell-personal-dictionary nil 0))
