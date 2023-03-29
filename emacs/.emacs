;;; Gustavo's Emacs init file
;;;

;; Personal info and computer related
;; Define home and work computer names
(setq home@system '"one"
      work@system '"manjaro")

;; files and path based on which system I am on
;; home GTD
(when (string= system-name home@system)
  (setq mygtdfile "~/notes/basb/msb.org"
	gtdpushscript "pushmsb.sh"
	gtdpullscript "pullmsb.sh"
	)
  )

;; work GTD
(when (string= system-name work@system)
  (setq mygtdfile "~/notes/mygtd.org")
  )

;; other filenames I'll use later
(setq myscratchfile "~/scratch.org")        ; scratch file in org format
(setq mygitclonedir "~/Downloads")          ; where to run git clone on clipboard

;; for Outlook -> Org sync
(when (string= system-name work@system)
  (setq ORGANISED_EXCHANGE_ORIGIN "~/notes/outlook/calendar.ics")
  (setq ORGANISED_EXCHANGE_DESTINATION "~/notes/outlook/outlook.org")
  )

;; packages block
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
;;(add-to-list 'package-archives
;;           '("melpa-stable" . "https://stable.melpa.org/packages/"))
;;(add-to-list 'package-pinned-packages '(telega . "melpa-stable"))
(setq load-prefer-newer t)
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(require 'use-package)
(setq use-package-always-ensure t)
(package-initialize)

;; ensure use-package is loaded
(eval-when-compile
   (require 'use-package))

;; user installed packages, request installation if they are not
;; (setq package-selected-packages '(lsp-mode yasnippet lsp-treemacs helm-lsp projectile hydra flycheck company avy which-key helm-xref dap-mode zenburn-theme json-mode))
;; (when (cl-find-if-not #'package-installed-p package-selected-packages)
;;   (package-refresh-contents)
;;   (mapc #'package-install package-selected-packages))

;; load path
(add-to-list 'load-path "~/.local/share/icons-in-terminal/")
(add-to-list 'load-path "~/.emacs.d/lisp/")
(add-to-list 'load-path "~/.emacs.d/lisp/sidebar.el/")


;; calendar improvement
;(require 'calfw-cal)
;(require 'calfw-org)

; for ansible files
(use-package ansible
  :commands 'ansible)

; show keybindings after partial keypress
(use-package which-key)


; for face customization

; for org-gcal
;; (use-package org-gcal
;;   :config
;;   (use-package alert)
;;   (use-package request)
;;   (use-package aio))


;; sidebar
(use-package sidebar
  :ensure nil
  :init
  ;; required packages
  (use-package dash :ensure t)
  (use-package dash-functional :after dash :ensure t)
  (use-package ov :ensure t)
  (use-package s :ensure t)
  (use-package projectile :ensure t)
  (use-package frame-local :ensure t)

  :bind ("C-x C-f" ("Sidebar open file" . sidebar-open)
	 "C-x C-b" ("Sidebar open buffers" . sidebar-buffers-open))
  )

;; prettify symbols
;; (add-hook 'org-mode-hook (lambda ()
;;    "Beautify Org Checkbox Symbol"
;;    (push '("[ ]" .  "☐") prettify-symbols-alist)
;;    (push '("[X]" . "☑" ) prettify-symbols-alist)
;;    (push '("[-]" . "❍" ) prettify-symbols-alist)
;;    (prettify-symbols-mode)))
;; (global-prettify-symbols-mode +1)

;; themes block
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/" )

(load-theme 'moe-dark t)
; display or not the theme name in the modeline
(display-theme-mode 1)

; Advise load-theme, so that it first disables all custom themes before loading (enabling) another one
(defadvice load-theme (before theme-dont-propagate activate)
 (mapc #'disable-theme custom-enabled-themes))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("30dc9873c16a0efb187bb3f8687c16aae46b86ddc34881b7cae5273e56b97580" "896e4305e7c10f3217c5c0a0ef9d99240c3342414ec5bfca4ec4bff27abe2d2d" "250007c5ae19bcbaa80e1bf8184720efb6262adafa9746868e6b9ecd9d5fbf84" "a68624bd5c4bec879ee59cd3039531b6229766a8b8ed0e79eef2642f14dbda32" "a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" "290a356b165599b9f9a26316e860e5589ee7faac8a645ec016a5c4b6f7a9fae9" "90a6f96a4665a6a56e36dec873a15cbedf761c51ec08dd993d6604e32dd45940" "49b62a0986cc2420c5a0bb0e229fbf49bd31b4022d1be05b1c9fcb990876a4e0" "f458b92de1f6cf0bdda6bce23433877e94816c3364b821eb4ea9852112f5d7dc" "3fe1ebb870cc8a28e69763dde7b08c0f6b7e71cc310ffc3394622e5df6e4f0da" "8d8207a39e18e2cc95ebddf62f841442d36fcba01a2a9451773d4ed30b632443" "f053f92735d6d238461da8512b9c071a5ce3b9d972501f7a5e6682a90bf29725" "ff24d14f5f7d355f47d53fd016565ed128bf3af30eb7ce8cae307ee4fe7f3fd0" "570263442ce6735821600ec74a9b032bc5512ed4539faf61168f2fdf747e0668" "016f665c0dd5f76f8404124482a0b13a573d17e92ff4eb36a66b409f4d1da410" "991ca4dbb23cab4f45c1463c187ac80de9e6a718edc8640003892a2523cb6259" "adaf421037f4ae6725aa9f5654a2ed49e2cd2765f71e19a7d26a454491b486eb" "636b135e4b7c86ac41375da39ade929e2bd6439de8901f53f88fde7dd5ac3561" "0c83e0b50946e39e237769ad368a08f2cd1c854ccbcd1a01d39fdce4d6f86478" "ddffe74bc4bf2c332c2c3f67f1b8141ee1de8fd6b7be103ade50abb97fe70f0c" "631c52620e2953e744f2b56d102eae503017047fb43d65ce028e88ef5846ea3b" "7e377879cbd60c66b88e51fad480b3ab18d60847f31c435f15f5df18bdb18184" "545ab1a535c913c9214fe5b883046f02982c508815612234140240c129682a68" "02f57ef0a20b7f61adce51445b68b2a7e832648ce2e7efb19d217b6454c1b644" "89d9dc6f4e9a024737fb8840259c5dd0a140fd440f5ed17b596be43a05d62e67" "b54376ec363568656d54578d28b95382854f62b74c32077821fdfd604268616a" "683b3fe1689da78a4e64d3ddfce90f2c19eb2d8ab1bab1738a63d8263119c3f4" "512ce140ea9c1521ccaceaa0e73e2487e2d3826cc9d287275550b47c04072bc4" "a9abd706a4183711ffcca0d6da3808ec0f59be0e8336868669dc3b10381afb6f" "dc8285f7f4d86c0aebf1ea4b448842a6868553eded6f71d1de52f3dcbc960039" "60ada0ff6b91687f1a04cc17ad04119e59a7542644c7c59fc135909499400ab8" "ce4234c32262924c1d2f43e6b61312634938777071f1129c7cde3ebd4a3028da" "467dc6fdebcf92f4d3e2a2016145ba15841987c71fbe675dcfe34ac47ffb9195" "4fda8201465755b403a33e385cf0f75eeec31ca8893199266a6aeccb4adedfa4" "b9761a2e568bee658e0ff723dd620d844172943eb5ec4053e2b199c59e0bcc22" "443e2c3c4dd44510f0ea8247b438e834188dc1c6fb80785d83ad3628eadf9294" "1aa4243143f6c9f2a51ff173221f4fd23a1719f4194df6cef8878e75d349613d" "5f128efd37c6a87cd4ad8e8b7f2afaba425425524a68133ac0efd87291d05874" "8b6506330d63e7bc5fb940e7c177a010842ecdda6e1d1941ac5a81b13191020e" "2dd4951e967990396142ec54d376cced3f135810b2b69920e77103e0bcedfba9" "ae426fc51c58ade49774264c17e666ea7f681d8cae62570630539be3d06fd964" "6945dadc749ac5cbd47012cad836f92aea9ebec9f504d32fe89a956260773ca4" "aec7b55f2a13307a55517fdf08438863d694550565dee23181d2ebd973ebd6b8" "bf948e3f55a8cd1f420373410911d0a50be5a04a8886cabe8d8e471ad8fdba8e" "00cec71d41047ebabeb310a325c365d5bc4b7fab0a681a2a108d32fb161b4006" "da75eceab6bea9298e04ce5b4b07349f8c02da305734f7c0c8c6af7b5eaa9738" "f64189544da6f16bab285747d04a92bd57c7e7813d8c24c30f382f087d460a33" "7ea883b13485f175d3075c72fceab701b5bf76b2076f024da50dff4107d0db25" "1a1ac598737d0fcdc4dfab3af3d6f46ab2d5048b8e72bc22f50271fd6d393a00" "2f8eadc12bf60b581674a41ddc319a40ed373dd4a7c577933acaff15d2bf7cc6" "2e05569868dc11a52b08926b4c1a27da77580daa9321773d92822f7a639956ce" "5b9a45080feaedc7820894ebbfe4f8251e13b66654ac4394cb416fef9fdca789" "251ed7ecd97af314cd77b07359a09da12dcd97be35e3ab761d4a92d8d8cf9a71" "be84a2e5c70f991051d4aaf0f049fa11c172e5d784727e0b525565bb1533ec78" "1cae4424345f7fe5225724301ef1a793e610ae5a4e23c023076dc334a9eb940a" "58c996beb973f7e988ee4fd21c367b7a5bbdb0622ddfbbd112672a7b4e3d3b81" "c865644bfc16c7a43e847828139b74d1117a6077a845d16e71da38c8413a5aaa" "7a424478cb77a96af2c0f50cfb4e2a88647b3ccca225f8c650ed45b7f50d9525" "021321ae56a45794f43b41de09fb2bfca184e196666b7d7ff59ea97ec2114559" "5d82f1ce0401d4fdf25e86f0d163a3db65026a38e1449bfb8f6c3f583dc2f8d9" "2dc03dfb67fbcb7d9c487522c29b7582da20766c9998aaad5e5b63b5c27eec3f" "b99e334a4019a2caa71e1d6445fc346c6f074a05fcbb989800ecbe54474ae1b0" "56044c5a9cc45b6ec45c0eb28df100d3f0a576f18eef33ff8ff5d32bac2d9700" "2721b06afaf1769ef63f942bf3e977f208f517b187f2526f0e57c1bd4a000350" "49acd691c89118c0768c4fb9a333af33e3d2dca48e6f79787478757071d64e68" "e3daa8f18440301f3e54f2093fe15f4fe951986a8628e98dcd781efbec7a46f2" "9d29a302302cce971d988eb51bd17c1d2be6cd68305710446f658958c0640f68" "8d3ef5ff6273f2a552152c7febc40eabca26bae05bd12bc85062e2dc224cde9a" "944d52450c57b7cbba08f9b3d08095eb7a5541b0ecfb3a0a9ecd4a18f3c28948" "47d5324dac28a85c1bb84b4c1dc3a8dc407cc7369db6e30d3244b16232b1eec4" "57e3f215bef8784157991c4957965aa31bac935aca011b29d7d8e113a652b693" "e01d36b3ca7991d21fba7f2708f0bfb587b61654898bf3dd92fb11c9fbf5a649" "1f35dedbeacbfe9ed72810478836105b5617da67ca27f717a29bbb8087e8a1ba" "eb122e1df607ee9364c2dfb118ae4715a49f1a9e070b9d2eb033f1cefd50a908" "fa49766f2acb82e0097e7512ae4a1d6f4af4d6f4655a48170d0a00bcb7183970" "3e374bb5eb46eb59dbd92578cae54b16de138bc2e8a31a2451bf6fdb0f3fd81b" "19a2c0b92a6aa1580f1be2deb7b8a8e3a4857b6c6ccf522d00547878837267e7" "2ff9ac386eac4dffd77a33e93b0c8236bb376c5a5df62e36d4bfa821d56e4e20" "72ed8b6bffe0bfa8d097810649fd57d2b598deef47c992920aef8b5d9599eefe" "d80952c58cf1b06d936b1392c38230b74ae1a2a6729594770762dc0779ac66b7" "b1a691bb67bd8bd85b76998caf2386c9a7b2ac98a116534071364ed6489b695d" "afeb7b07dbc1a4cfadb24f3ef6c8cf5e63051bf76411779f03a0fe3aadc07768" "82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" "bb08c73af94ee74453c90422485b29e5643b73b05e8de029a6909af6a3fb3f58" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" "1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e" "0ed3d96a506b89c1029a1ed904b11b5adcebeb2e0c16098c99c0ad95cb124729" "b6c43bb2aea78890cf6bd4a970e6e0277d2daf0075272817ea8bb53f9c6a7f0a" "91c008faf603a28d026957120a5a924a3c8fff0e12331abf5e04c0e9dd310c65" "c8b83e7692e77f3e2e46c08177b673da6e41b307805cd1982da9e2ea2e90e6d7" "e3a1b1fb50e3908e80514de38acbac74be2eb2777fc896e44b54ce44308e5330" "24168c7e083ca0bbc87c68d3139ef39f072488703dcdd82343b8cab71c0f62a7" "b6269b0356ed8d9ed55b0dcea10b4e13227b89fd2af4452eee19ac88297b0f99" "46b2d7d5ab1ee639f81bde99fcd69eb6b53c09f7e54051a591288650c29135b0" "fb83a50c80de36f23aea5919e50e1bccd565ca5bb646af95729dc8c5f926cbf3" "b02eae4d22362a941751f690032ea30c7c78d8ca8a1212fdae9eecad28a3587f" "9abe2b502db3ed511fea7ab84b62096ba15a3a71cdb106fd989afa179ff8ab8d" "b3775ba758e7d31f3bb849e7c9e48ff60929a792961a2d536edec8f68c671ca5" "3263bd17a7299449e6ffe118f0a14b92373763c4ccb140f4a30c182a85516d7f" "3d4df186126c347e002c8366d32016948068d2e9198c496093a96775cc3b3eaa" "e0d42a58c84161a0744ceab595370cbe290949968ab62273aed6212df0ea94b4" "3cd28471e80be3bd2657ca3f03fbb2884ab669662271794360866ab60b6cb6e6" "3d5ef3d7ed58c9ad321f05360ad8a6b24585b9c49abcee67bdcbb0fe583a6950" "96998f6f11ef9f551b427b8853d947a7857ea5a578c75aa9c4e7c73fe04d10b4" "e2c926ced58e48afc87f4415af9b7f7b58e62ec792659fcb626e8cba674d2065" "987b709680284a5858d5fe7e4e428463a20dfabe0a6f2a6146b3b8c7c529f08b" "9375315e4786e5cc84b739537102802c18650f3168cf7c29f7fbb00a54f9b8e0" "e9776d12e4ccb722a2a732c6e80423331bcb93f02e089ba2a4b02e85de1cf00e" "72a81c54c97b9e5efcc3ea214382615649ebb539cb4f2fe3a46cd12af72c7607" "9b59e147dbbde5e638ea1cde5ec0a358d5f269d27bd2b893a0947c4a867e14c1" "3cc2385c39257fed66238921602d8104d8fd6266ad88a006d0a4325336f5ee02" "58c6711a3b568437bab07a30385d34aacf64156cc5137ea20e799984f4227265" "c48551a5fb7b9fc019bf3f61ebf14cf7c9cdca79bcb2a4219195371c02268f11" "d6844d1e698d76ef048a53cefe713dbbe3af43a1362de81cdd3aefa3711eae0d" "7f4e41ee5ed365abdbb922a86d4cec9dc35f166c407c377095a894c28f636933" "35c096aa0975d104688a9e59e28860f5af6bb4459fd692ed47557727848e6dfe" "8e79884e89740cf6b7e0210f52e4ac995dc1f1a9a17151bfcfb4d660757a011b" "9b54ba84f245a59af31f90bc78ed1240fca2f5a93f667ed54bbf6c6d71f664ac" "846b3dc12d774794861d81d7d2dcdb9645f82423565bfb4dad01204fa322dbd5" "47db50ff66e35d3a440485357fb6acb767c100e135ccdf459060407f8baea7b2" "da53441eb1a2a6c50217ee685a850c259e9974a8fa60e899d393040b4b8cc922" "f7fed1aadf1967523c120c4c82ea48442a51ac65074ba544a5aefc5af490893b" "a7b20039f50e839626f8d6aa96df62afebb56a5bbd1192f557cb2efb5fcfb662" "246a9596178bb806c5f41e5b571546bb6e0f4bd41a9da0df5dfbca7ec6e2250c" "850bb46cc41d8a28669f78b98db04a46053eca663db71a001b40288a9b36796c" "e6f3a4a582ffb5de0471c9b640a5f0212ccf258a987ba421ae2659f1eaa39b09" "1704976a1797342a1b4ea7a75bdbb3be1569f4619134341bd5a4c1cfb16abad4" "4b6b6b0a44a40f3586f0f641c25340718c7c626cbf163a78b5a399fbe0226659" "b5803dfb0e4b6b71f309606587dd88651efe0972a5be16ece6a958b197caeed8" "d47f868fd34613bd1fc11721fe055f26fd163426a299d45ce69bef1f109e1e71" "266ecb1511fa3513ed7992e6cd461756a895dcc5fef2d378f165fed1c894a78c" "8621edcbfcf57e760b44950bb1787a444e03992cb5a32d0d9aec212ea1cd5234" "b186688fbec5e00ee8683b9f2588523abdf2db40562839b2c5458fcfb322c8a4" "8d7b028e7b7843ae00498f68fad28f3c6258eda0650fe7e17bfb017d51d0e2a2" "6c531d6c3dbc344045af7829a3a20a09929e6c41d7a7278963f7d3215139f6a7" "7eea50883f10e5c6ad6f81e153c640b3a288cd8dc1d26e4696f7d40f754cc703" "5784d048e5a985627520beb8a101561b502a191b52fa401139f4dd20acb07607" "3d54650e34fa27561eb81fc3ceed504970cc553cfd37f46e8a80ec32254a3ec3" "1f1b545575c81b967879a5dddc878783e6ebcca764e4916a270f9474215289e5" "1d5e33500bc9548f800f9e248b57d1b2a9ecde79cb40c0b1398dec51ee820daf" "cbdf8c2e1b2b5c15b34ddb5063f1b21514c7169ff20e081d39cf57ffee89bc1e" "f91395598d4cb3e2ae6a2db8527ceb83fed79dbaf007f435de3e91e5bda485fb" "a6d39b3e27d45aea4bf0c20a9f6ccbff858eae1728ac0cf72d6a86bd873202d2" "78e9a3e1c519656654044aeb25acb8bec02579508c145b6db158d2cfad87c44e" "28a104f642d09d3e5c62ce3464ea2c143b9130167282ea97ddcc3607b381823f" "2d035eb93f92384d11f18ed00930e5cc9964281915689fa035719cab71766a15" "835868dcd17131ba8b9619d14c67c127aa18b90a82438c8613586331129dda63" "c2aeb1bd4aa80f1e4f95746bda040aafb78b1808de07d340007ba898efa484f5" "e8df30cd7fb42e56a4efc585540a2e63b0c6eeb9f4dc053373e05d774332fc13" "0466adb5554ea3055d0353d363832446cd8be7b799c39839f387abb631ea0995" "a82ab9f1308b4e10684815b08c9cac6b07d5ccb12491f44a942d845b406b0296" "22a514f7051c7eac7f07112a217772f704531b136f00e2ccfaa2e2a456558d39" "0b3aee906629ac7c3bd994914bf252cf92f7a8b0baa6d94cb4dfacbd4068391d" "a9a67b318b7417adbedaab02f05fa679973e9718d9d26075c6235b1f0db703c8" "7a7b1d475b42c1a0b61f3b1d1225dd249ffa1abb1b7f726aec59ac7ca3bf4dae" "6c98bc9f39e8f8fd6da5b9c74a624cbb3782b4be8abae8fd84cbc43053d7c175" "1212c23e55a3a4a2234257ede376af7a4a4006264a0216a2fd7a64b7a9834b5d" "8e0afb9cb12b4a60c3b423b4bf101065178364698b5abdf7f786698599b4a2f5" "81d0efcea97486f780ca7dc7ced5fedc7343b0bf377981d7d7e68d760960b804" "f16c26e482a3ed028e07dfbd7042f9c6326a548ae73a5caa2c5a68774991d423" "2d029d5dbc60b725e1e07ee774762627fc544e39e81425aa65ffa72598a0046c" "77368dca7f568909711273091913582e31ab083b2ab83af8b350feefdbd67272" "66640c77dfa2a88cb734f930636e729d37376876c8f47c13d1eb3a38f38814e3" "6bef9385949dddfa20f4c7ca977b478af4793245ac6d74f29aef9b14c25b62fd" "3c8a306f4aeda86c59bf95ee4d6f0208b55e86a7c832308cc49bb72374c09cd3" "4b0751cee609e40f846f0b48118d613749afa89855182f3c7917ce0ae6588f0e" "5438a51840855b56380ef387c3d1acbb48d99945e95a89eb3667de44fb5aa221" "7757adfb0175e02446bf6404356fb5cd36f2c1d5f98ff5aeb1840ba362c2a738" "91919b410191c158f1b7e7871dcfb590cdc69fd9ba0c8dfcc6bff9d270604c3c" "30de955491cb3b897a9bfc59be2a74d1ca460619aeabc20d757416aef92d0abc" "5ec175074181c2f286e4f475cb462e4a920242c79abb4652db7c02ecb829aba1" "314d30559c0bde047144bad8cd115b1c682e7e7cc0a503cc42ae0c2ef1d1607f" "234dbb732ef054b109a9e5ee5b499632c63cc24f7c2383a849815dacc1727cb6" "f6665ce2f7f56c5ed5d91ed5e7f6acb66ce44d0ef4acfaa3a42c7cfe9e9a9013" "1d44ec8ec6ec6e6be32f2f73edf398620bb721afeed50f75df6b12ccff0fbb15" "a6e620c9decbea9cac46ea47541b31b3e20804a4646ca6da4cce105ee03e8d0e" "94a94c957cf4a3f8db5f12a7b7e8f3e68f686d76ae8ed6b82bd09f6e6430a32c" "8146edab0de2007a99a2361041015331af706e7907de9d6a330a3493a541e5a6" "454c1c9ce70f7d807c51c890910365fd3c64a9e63f596511e9ff57dd97bbeea8" "bcd0237b2a5b7897e482458cc62c4f3fa3d9d7f9a9667338e67d4c7a8e009819" "716f0a8a9370912d9e6659948c2cb139c164b57ef5fda0f337f0f77d47fe9073" "4641f2added941818ca5a618aa38206d6dd6c2fa553137e2d0e1c82073b8674a" "3433a30aa4ecd3ba38314cec0b473b8a55ec00d43c1b700a0caeef1b5ac3bc19" "5111a41453244802afd93eed1a434e612a8afbdf19c52384dffab129258bab6e" "d268b67e0935b9ebc427cad88ded41e875abfcc27abd409726a92e55459e0d01" "745d03d647c4b118f671c49214420639cb3af7152e81f132478ed1c649d4597d" "4133d2d6553fe5af2ce3f24b7267af475b5e839069ba0e5c80416aa28913e89a" "1278c5f263cdb064b5c86ab7aa0a76552082cf0189acf6df17269219ba496053" "b0e446b48d03c5053af28908168262c3e5335dcad3317215d9fdeb8bac5bacf9" "6f4421bf31387397f6710b6f6381c448d1a71944d9e9da4e0057b3fe5d6f2fad" "4a5aa2ccb3fa837f322276c060ea8a3d10181fecbd1b74cb97df8e191b214313" "e19ac4ef0f028f503b1ccafa7c337021834ce0d1a2bca03fcebc1ef635776bea" "333958c446e920f5c350c4b4016908c130c3b46d590af91e1e7e2a0611f1e8c5" "0d01e1e300fcafa34ba35d5cf0a21b3b23bc4053d388e352ae6a901994597ab1" "4b0e826f58b39e2ce2829fab8ca999bcdc076dec35187bf4e9a4b938cb5771dc" "fe2539ccf78f28c519541e37dc77115c6c7c2efcec18b970b16e4a4d2cd9891d" "a0be7a38e2de974d1598cf247f607d5c1841dbcef1ccd97cded8bea95a7c7639" "da186cce19b5aed3f6a2316845583dbee76aea9255ea0da857d1c058ff003546" "97db542a8a1731ef44b60bc97406c1eb7ed4528b0d7296997cbb53969df852d6" "93a0885d5f46d2aeac12bf6be1754faa7d5e28b27926b8aa812840fe7d0b7983" "ecba61c2239fbef776a72b65295b88e5534e458dfe3e6d7d9f9cb353448a569e" "151bde695af0b0e69c3846500f58d9a0ca8cb2d447da68d7fbf4154dcf818ebc" "d1b4990bd599f5e2186c3f75769a2c5334063e9e541e37514942c27975700370" "cd736a63aa586be066d5a1f0e51179239fe70e16a9f18991f6f5d99732cabb32" "d2e9c7e31e574bf38f4b0fb927aaff20c1e5f92f72001102758005e53d77b8c9" "6b289bab28a7e511f9c54496be647dc60f5bd8f9917c9495978762b99d8c96a0" "fe666e5ac37c2dfcf80074e88b9252c71a22b6f5d2f566df9a7aa4f9bea55ef8" "b35a14c7d94c1f411890d45edfb9dc1bd61c5becd5c326790b51df6ebf60f402" "4697a2d4afca3f5ed4fdf5f715e36a6cac5c6154e105f3596b44a4874ae52c45" "6b2636879127bf6124ce541b1b2824800afc49c6ccd65439d6eb987dbf200c36" "b54826e5d9978d59f9e0a169bbd4739dd927eead3ef65f56786621b53c031a7c" "356e5cbe0874b444263f3e1f9fffd4ae4c82c1b07fe085ba26e2a6d332db34dd" "fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" "a3fa4abaf08cc169b61dea8f6df1bbe4123ec1d2afeb01c17e11fdc31fc66379" "f0dc4ddca147f3c7b1c7397141b888562a48d9888f1595d69572db73be99a024" "3a3de615f80a0e8706208f0a71bbcc7cc3816988f971b6d237223b6731f91605" "1c082c9b84449e54af757bcae23617d11f563fc9f33a832a8a2813c4d7dfb652" "a37d20710ab581792b7c9f8a075fcbb775d4ffa6c8bce9137c84951b1b453016" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "e6df46d5085fde0ad56a46ef69ebb388193080cc9819e2d6024c9c6e27388ba9" default))
 '(package-selected-packages
   '(2048-game highlight-indent-guides fish-mode org-tag-beautify org-view-mode company-jedi company-org-block modus-themes org-indent org-modern-mode diminish dimmer org-variable-pitch variable-pitch company-box company-quickhelp company-ansible company-fuzzy company-nginx company-shell company-terraform company-web lsp-mode yasnippet lsp-treemacs helm-lsp projectile hydra flycheck company avy which-key helm-xref dap-mode zenburn-theme json-mode))
 '(pdf-view-midnight-colors '("#b2b2b2" . "#292b2e"))
 '(rustic-ansi-faces
   ["#3F3F3F" "#CC9393" "#7F9F7F" "#F0DFAF" "#8CD0D3" "#DC8CC3" "#93E0E3" "#DCDCDC"])
 '(show-paren-mode t)
 '(warning-suppress-log-types '((lsp-mode) (lsp-mode) (lsp-mode) (lsp-mode)))
 '(warning-suppress-types '((lsp-mode) (lsp-mode) (lsp-mode))))
;;(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
;; '(default ((t (:family "Fira Code" :foundry "CTDB" :slant normal :weight normal :height 120 :width normal))))

;; defines highlight for matching parenthesis and keypress of % for jumping back and forth as in Vim
;; and if no match, insert a % character
(show-paren-mode)
(global-set-key "%" 'match-paren)

(defun match-paren (arg)
  "Go to the matching paren if on a paren; otherwise insert %."
  (interactive "p")
  (cond ((looking-at "\\s(") (forward-list 1) (backward-char 1))
        ((looking-at "\\s)") (forward-char 1) (backward-list 1))
        (t (self-insert-command (or arg 1)))))

;; custom functions and utils block

;; (defun add-quotes()
;;  (interactive)
;;  (cond ((region-active-p) (insert-pair 1 ?\" ?\"))
;;        ((let (word (thing-at-point 'word 'no-properties))) (insert "sarasa"))
;;        ((insert "\"\"")))
;;    (backward-char))
;; (global-set-key (kbd "C-M-/") 'add-quotes)

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

(defun kill-and-movetoother ()
  (interactive)
  (other-window 1)
  (delete-other-windows)
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
(global-set-key (kbd "C-M-d") 'copy-line)

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

;; quotify (make literal or non-evaluated) the previous symbol
(defun add-quote-to-word()
  (interactive)
  (re-search-backward "^\\|[[:space:]\(]")
  (forward-char 1)
  (insert-char ?\')
  (re-search-forward "^\\|[[:space:]\)]")
  (backward-char 1))
(global-set-key (kbd "C-=") 'add-quote-to-word)


;; TODO: replace with use-package block
(require 'visual-regexp)
(define-key global-map (kbd "C-c r") 'vr/replace)
(define-key global-map (kbd "C-c q") 'vr/query-replace)
;; if you use multiple-cursors, this is for you:
(define-key global-map (kbd "C-c m") 'vr/mc-mark)

(global-set-key [C-tab] 'other-window)

(global-set-key (kbd "C-#") 'comment-or-uncomment-region)

;; nov.el (epub reading mode)
(use-package nov
  :mode ("\\.epub\\'" . nov-mode)
  :init
  ;; set a custom font if desired
  (defun my-nov-font-setup ()
    (face-remap-add-relative 'variable-pitch :family "Noto Sans" :height 1.2))  
  :hook my-nov-font-setup
  )


;; Note: you may also need to define the my-iswitchb-close function 
;; created by Ignacio as well: http://emacswiki.org/emacs/IgnacioPazPosse
(defun my-iswitchb-close()
 "Open iswitchb or, if in minibuffer go to next match. Handy way to cycle through the ring."
 (interactive)
 (if (window-minibuffer-p (selected-window))
     (keyboard-escape-quit)))

;; (defun only-current-buffer () 
;;   (interactive)                                                                 
;;     (mapc 'kill-buffer (cdr (buffer-list (current-buffer)))))

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


;; clone git repo from clipboard
(defun ar/git-clone-clipboard-url ()
  "Clone git URL in clipboard asynchronously and open in dired when finished."
  (interactive)
  (cl-assert (string-match-p "^\\(http\\|https\\|ssh\\)://" (current-kill 0)) nil "No URL in clipboard")
  (let* ((url (current-kill 0))
         (download-dir mygitclonedir)
         (project-dir (concat (file-name-as-directory download-dir)
                              (file-name-base url)))
         (default-directory download-dir)
         (command (format "git clone %s" url))
         (buffer (generate-new-buffer (format "*%s*" command)))
         (proc))
    (when (file-exists-p project-dir)
      (if (y-or-n-p (format "%s exists. delete?" (file-name-base url)))
          (delete-directory project-dir t)
        (user-error "Bailed")))
    (switch-to-buffer buffer)
    (setq proc (start-process-shell-command (nth 0 (split-string command)) buffer command))
    (with-current-buffer buffer
      (setq default-directory download-dir)
      (shell-command-save-pos-or-erase)
      (require 'shell)
      (shell-mode)
      (view-mode +1))
    (set-process-sentinel proc (lambda (process state)
                                 (let ((output (with-current-buffer (process-buffer process)
                                                 (buffer-string))))
                                   (kill-buffer (process-buffer process))
                                   (if (= (process-exit-status process) 0)
                                       (progn
                                         (message "finished: %s" command)
                                         (dired project-dir))
                                     (user-error (format "%s\n%s" command output))))))
    (set-process-filter proc #'comint-output-filter)))
(global-set-key "\C-cg" 'ar/git-clone-clipboard-url)


;; init-file block

(defun reload-init-file()
  "Reloads the user's .emacs init file"
  (interactive)
  (load-file "~/.emacs")
)
(global-set-key "\C-xr" 'reload-init-file)

(defun visit-init-readonly()
  "Opens the init file readonly for reference"
  (interactive)
  (find-file-other-window "~/.emacs")
  (read-only-mode 1)
  )
(defun visit-init()
  "Opens the init file for edition"
  (interactive)
  (find-file "~/.emacs")
  )

(defun open-recent-files()
  "Gets a list of recently opened files"
  (interactive)
  (recentf-mode)
  (recentf-open-files)
  )
(global-set-key (kbd "<escape>-r") 'open-recent-files)

;; More keybindings

;; open the init file in read/write mode
(global-set-key "\C-xe" 'visit-init)

;; open the init file in read-only mode
(global-set-key "\C-x\M-e" 'visit-init-readonly)

;; open recent files list
(global-set-key "\C-x\M-f" 'open-recent-files)

;; open packages list
(global-set-key "\C-x\M-p" 'package-list-packages)

;; customize fonts
(global-set-key "\C-cf" 'customize-face)

;(defun find-file-other-window-reverse()
;  "Same as find-file-other-window but swaps the panels using the toggle-window-split function"
;  (interactive)
;  (find-file-other-window (read-file-name "Open file: "))
;  (toggle-window-split)
;  )

(setq inferior-lisp-program "clisp")

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


;; startup and window layout

; avoid the annoying welcome screen
(setq inhibit-startup-screen t)

; disable toolbar, menubar and scroll bars
(tool-bar-mode -1)
(menu-bar-mode -1)
(toggle-scroll-bar -1)

; show clock in mode line
(display-time-mode 1)
(setq display-time-day-and-date 1)
(setq display-time-string-forms
       '((propertize (concat dayname " " day " " monthname " " year " - " 24-hours ":" minutes " " time-zone)
 		    'face 'Egoge-display-time)))

; type y/n instead of yes/no
(fset 'yes-or-no-p 'y-or-n-p)

; windows moving around with simplified keystrokes
(windmove-default-keybindings)

;; Make windmove work in Org mode:
;(add-hook 'org-shiftup-final-hook 'windmove-up)
;(add-hook 'org-shiftleft-final-hook 'windmove-left)
;(add-hook 'org-shiftdown-final-hook 'windmove-down)
;(add-hook 'org-shiftright-final-hook 'windmove-right)

; resize windows rebinding
(global-set-key (kbd "S-C-M-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "S-C-M-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "S-C-M-<down>") 'shrink-window)
(global-set-key (kbd "S-C-M-<up>") 'enlarge-window)

;; rebind mouse mid button to copy
(global-set-key [mouse-2] 'kill-ring-save)


;; spell checking block
;(with-eval-after-load "ispell"
;  ;; Configure `LANG`, otherwise ispell.el cannot find a 'default
;  ;; dictionary' even though multiple dictionaries will be configured
;  ;; in next line.
;  (setenv "LANG" "en_US.UTF-8")
;  (setq ispell-program-name "hunspell")
;  (setq ispell-dictionary "es_AR,en_US")
;  ;; ispell-set-spellchecker-params has to be called
;  ;; before ispell-hunspell-add-multi-dic will work
;  (ispell-set-spellchecker-params)
;  (ispell-hunspell-add-multi-dic "es_AR,en_US")
;  ;; For saving words to the personal dictionary, don't infer it from
;  ;; the locale, otherwise it would save to ~/.hunspell_de_DE.
;  (setq ispell-personal-dictionary "~/.hunspell_personal")
;  ;; The personal dictionary file has to exist, otherwise hunspell will
;  ;; silently not use it.
;  (unless (file-exists-p ispell-personal-dictionary)
;    (write-region "" nil ispell-personal-dictionary nil 0))
;)
;

;; fast jump anywhere
(use-package ace-jump-mode
  :bind ("C-." . ace-jump-mode))

;; autocomplete
(use-package company
  :hook (prog-mode org-mode))

;; highlight words
(use-package hi-lock
  :bind (("M-o l" . highlight-lines-matching-regexp)
         ("M-o r" . highlight-regexp)
	 ("M-o w" . highlight-phrase)
	 ("M-o u" . unhighlight-regexp)))

(use-package font-lock+ :ensure nil)

;; org-mode block
(use-package org
  :mode ("\\.org\\'" . org-mode)
  :config
  ;; hide emphasis markers
  (setq org-hide-emphasis-markers t)

  ;; change ellipsis symbol
  (setq org-ellipsis "⤵")

  ;; indentation on by default
  ;;(setq org-startup-indented t)
  
  ;; tags indent level
  (setq org-indent-indentation-per-level 2)

  ;; indentation extras
  (setq org-adapt-indentation t
      org-hide-leading-stars t
      org-odd-levels-only t)

  (setq org-agenda-files (list mygtdfile))
;;  (setq org-agenda-files (list mygtdfile ORGANISED_EXCHANGE_DESTINATION))
  
  ;; Headlines
;  '("^\\(\\**\\)\\(\\* \\)\\(.*\xa\\)" (1 (org-get-level-face 1))
;    (2 (org-get-level-face 2)) (3 (org-get-level-face 3)))

  ;; auto-save on refile
  ;; Save Org buffers after refiling!
  (advice-add 'org-refile :after 'org-save-all-org-buffers)

  ;; refiling options
  (setq org-refile-use-outline-path t)
  (setq org-outline-path-complete-in-steps nil)
  (setq org-refile-allow-creating-parent-nodes 'confirm)
  (setq org-refile-targets '((nil :maxlevel . 5)))
  (setq completion-styles '(substring partial-completion))
  (setq ido-mode 1)
  
  ;; org-mode modifier for windmove keys
  (setq org-replace-disputed-keys t)

  ;; save archive files immediately
  (setq org-archive-subtree-save-file-p 1)

  ;; disable global-linum-mode for org (line numbers)
  (global-linum-mode -1)

  ;; use all indentation levels
  (setq org-odd-levels-only nil)

  ;; disable org-indent (really annoying)
  (org-indent-mode -1)
  
  :bind (("<f6>" . org-capture)
	 ("C-x C-y" . org-cliplink)
	 ("C-<f11>" . org-view-mode)
	 )
)

;; smartparens
;; (use-package smartparens
;;   :config
;;   (sp-with-modes '(org-mode)
;;     (sp-local-pair "*" "*"))

;;   :hook (org-mode . smartparens-mode)
;;   )

(use-package org-bullets
  :ensure t
  :diminish
  :hook (org-mode . org-bullets-mode))

(use-package org-variable-pitch
  :ensure t
  :diminish
  :hook (org-mode . org-variable-pitch-minor-mode))

(use-package org-rainbow-tags
  :ensure t
  :diminish
  :hook (org-mode . org-rainbow-tags-mode))

;; (use-package org-modern
;;   :diminish
;;   :hook
;;   (org-mode . org-modern-mode)
;;   (org-mode . org-indent-mode)
;;   )
;; (add-hook 'org-agenda-finalize-hook #'org-modern-agenda)

;; (use-package org-indent
;;   :ensure nil
;;   :diminish
;;   :hook (org-mode . org-indent-mode))

(defun count-tags ()
  (let (tags count)
    (save-excursion
      (goto-char (point-min))
      (while (re-search-forward org-complex-heading-regexp nil t)
        (dolist (tag (org-get-tags))
          (push tag tags)))
      (cl-loop with result
               for tag in tags
               do (push (list (cl-count tag tags
                                        :test #'string=)
                              tag)
                        count)
               collect
               (setq result (cl-remove-duplicates count
                                                  :test #'equal))
               finally return
               (cl-sort result #'> :key #'car)))))



;; Org-mode settings
;;(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)


;; Scratch file
(defun orgscratch ()
  "Opens the org-formatted scratch file"
  (interactive)
  (find-file myscratchfile))
(global-set-key "\M-gs" 'orgscratch)
		
;; GTD
(defun gtd ()
  "Opens the personal OS"
  (interactive)
  (find-file mygtdfile))
(global-set-key "\M-gt" 'gtd)

(when (string= system-name home@system)
  (defun push-gtd()
    (interactive)
    (call-process gtdpushscript))
  (global-set-key "\C-cp" 'push-gtd)

  (defun pull-gtd()
    (interactive)
    (call-process gtdpullscript))
)

(setq org-capture-templates
      '(("i" "general INBOX item" entry (file+headline mygtdfile "0 INBOX")
	 "** %? %^G\n")
      ("r" "resource item" entry (file+olp mygtdfile "3 - RESOURCES" "General")
	 "*** %? %^G\n")
))



;; access hotkeys


;; (setq org-todo-keyword-faces
;;       '(
;; 	("TODO" . (:foreground "red" :weight bold))
;; 	("UPNEXT" . ("#E35DBF"))
;; 	("DOING" . (:foreground "white" :background "darkgreen" :weight bold))
;; 	("ONHOLD" . "orange")
;; 	("DONE" . "green")
;; 	)
;; )

 ;; '(hl-todo-keyword-faces
 ;;   '(("TODO" . "#dc752f")
 ;;     ("NEXT" . "#dc752f")
 ;;     ("THEM" . "#2d9574")
 ;;     ("PROG" . "#4f97d7")
 ;;     ("OKAY" . "#4f97d7")
 ;;     ("DONT" . "#f2241f")
 ;;     ("FAIL" . "#f2241f")
 ;;     ("DONE" . "#86dc2f")
 ;;     ("NOTE" . "#b1951d")
 ;;     ("KLUDGE" . "#b1951d")
 ;;     ("HACK" . "#b1951d")
 ;;     ("TEMP" . "#b1951d")
 ;;     ("FIXME" . "#dc752f")
 ;;     ("XXX+" . "#dc752f")
 ;;     ("\\?\\?\\?+" . "#dc752f")))
 ;; '(jdee-db-active-breakpoint-face-colors (cons "#100e23" "#906cff"))
 ;; '(jdee-db-requested-breakpoint-face-colors (cons "#100e23" "#95ffa4"))
 ;; '(jdee-db-spec-breakpoint-face-colors (cons "#100e23" "#565575"))
 ;; '(line-spacing 0.2)
 ;; '(objed-cursor-color "#CC9393")

 ;; '(org-drill-done-count-color "#663311")
 ;; '(org-drill-failed-count-color "#880000")
 ;; '(org-drill-mature-count-color "#005500")
 ;; '(org-drill-new-count-color "#004488")


;; PROGRAMMING

;; Global
;(add-hook 'after-init-hook 'global-company-mode)

;; Python
(defun python-hooks ()
  (global-linum-mode 1)
  (elpy-enable)
  (set-language-environment "UTF-8")
  (prefer-coding-system       'utf-8)
  (set-default-coding-systems 'utf-8)
  (set-terminal-coding-system 'utf-8)
  (set-keyboard-coding-system 'utf-8)
  (setq default-buffer-file-coding-system 'utf-8)
  )
(add-hook 'python-mode-hook 'python-hooks)


;; fonts
(add-hook 'prog-mode-hook 'variable-pitch-mode)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:background nil))))
 '(fixed-pitch ((t (:family "Fira Code Retina" :height 120))))
 '(org-block ((t (:inherit fixed-pitch))))
 '(org-code ((t (:inherit (shadow fixed-pitch)))))
 '(org-date ((t (:foreground "#afd7ff" :family "Roboto"))))
 '(org-document-info ((t (:foreground "dark orange"))))
 '(org-document-info-keyword ((t (:inherit (shadow fixed-pitch)))))
 '(org-document-title ((t (:inherit (shadow fixed-pitch) :weight bold :height 1.2))))
 '(org-indent ((t (:inherit (org-hide fixed-pitch)))))
 '(org-level-1 ((t (:extend nil :foreground "light sky blue" :height 1.2 :family "Noto Sans Black"))))
 '(org-level-2 ((t (:foreground "#a1db00" :height 1.15 :family "Noto Sans Medium"))))
 '(org-level-3 ((t (:foreground "#ff8700" :height 1.1 :family "Noto Sans"))))
 '(org-level-4 ((t (:foreground "#00d7af" :height 1.1 :family "Noto Sans"))))
 '(org-level-5 ((t (:foreground "#ef2929" :height 1.07 :family "Noto Sans Medium"))))
 '(org-link ((t (:foreground "cyan" :underline nil))))
 '(org-meta-line ((t (:inherit (font-lock-comment-face fixed-pitch)))))
 '(org-property-value ((t (:inherit fixed-pitch))) t)
 '(org-special-keyword ((t (:inherit (font-lock-comment-face fixed-pitch)))))
 '(org-table ((t (:inherit fixed-pitch :foreground "#83a598"))))
 '(org-tag ((t (:inherit (shadow fixed-pitch) :background "#4e4e4e" :foreground "#c6c6c6" :weight bold :height 1.0 :family "Roboto Condensed"))))
 '(org-verbatim ((t (:inherit (shadow fixed-pitch)))))
 '(variable-pitch ((t (:family "Fira Code" :height 110 :weight normal)))))
;;  '(org-block ((t (:inherit fixed-pitch))))
;;  '(org-code ((t (:inherit (shadow fixed-pitch)))))
;;  '(org-document-info ((t (:foreground "dark orange"))))
;;  '(org-document-info-keyword ((t (:inherit (shadow fixed-pitch)))))
;;  '(org-indent ((t (:inherit (org-hide fixed-pitch)))))
;;  '(org-link ((t (:foreground "cyan" :underline nil))))
;;  '(org-meta-line ((t (:inherit (font-lock-comment-face fixed-pitch)))))
;;  '(org-property-value ((t (:inherit fixed-pitch))) t)
;;  '(org-special-keyword ((t (:inherit (font-lock-comment-face fixed-pitch)))))
;;  '(org-table ((t (:inherit fixed-pitch :foreground "#83a598"))))
;;  '(org-tag ((t (:inherit (shadow fixed-pitch) :weight bold :height 1.1))))
;;  '(org-verbatim ((t (:inherit (shadow fixed-pitch)))))
;;  '(variable-pitch ((t (:family "Fira Code" :height 110 :weight normal)))))

(custom-theme-set-faces
 'user
   '(variable-pitch ((t (:family "Fira Code" :height 110 :weight normal))))
   '(fixed-pitch ((t (:family "Fira Code Retina" :height 120 :weight normal))))
   '(org-block ((t (:inherit fixed-pitch))))
   '(org-code ((t (:inherit (shadow fixed-pitch)))))
   '(org-document-info ((t (:foreground "dark orange"))))
   '(org-document-info-keyword ((t (:inherit (shadow fixed-pitch)))))
   '(org-document-title ((t (:foreground "white" :family "Noto Serif" :weight bold :height 1.4))))
   '(org-indent ((t (:inherit (org-hide fixed-pitch)))))
   '(org-link ((t (:foreground "cyan" :underline nil))))
   '(org-meta-line ((t (:inherit (font-lock-comment-face fixed-pitch)))))
   '(org-property-value ((t (:inherit fixed-pitch))) t)
   '(org-special-keyword ((t (:inherit (font-lock-comment-face fixed-pitch)))))
   '(org-table ((t (:inherit fixed-pitch :foreground "#83a598"))))
   '(org-tag ((t (:inherit (shadow fixed-pitch) :weight bold :height 1.0))))
   '(org-verbatim ((t (:inherit (shadow fixed-pitch))))))

;; emms
(if (package-installed-p 'emms)
    (progn (emms-all) (setq emms-player-list '(emms-player-vlc) emms-info-functions '(emms-info-native)))
  )

