(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme 'spolsky t)
;;(load-theme 'monokai t)
(set-default 'cursor-type 'box)
(set-cursor-color "greenYellow")
;; Dsabilitando o auto save.
(setq auto-save-default nil)
;; Desabilitando o auto backup
(setq backup-inhibited t)
;; Desabilitando a quebra de linha automática.
(setq-default truncate-lines 1)
;; Importando outros repositorios.
(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.milkbox.net/packages/")
	     t)
(add-to-list 'package-archives
	     '("marmalade" . "http://marmalade-repo.org/packages/")
	     t)
;; Inciando repositórios externos.
(package-initialize)
;; Desabilitando a barra de menu.
(menu-bar-mode -1)
;; Desabilitando a barra de scroll.
(scroll-bar-mode -1)
;; Desabilitando a barra de ferramentas.
(tool-bar-mode -1)

(ac-config-default)

(show-paren-mode 1)
(global-hl-line-mode)

(require 'smex)
(smex-initialize)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)


(global-set-key [f8] 'neotree-toggle)

(global-anzu-mode)
(global-anzu-mode 1)


;; Carregando plugin de transparência.
(require 'alpha)
;; Aumentando a transparência.
(global-set-key (kbd "C-M-)") 'transparency-increase)
;; Reduzindo a transparência.
(global-set-key (kbd "C-M-(") 'transparency-decrease)


(global-set-key (kbd "C-M->") 'split-window-horizontally)
(global-set-key (kbd "C-M-<") 'split-window-vertically)
(global-set-key (kbd "C-M-:") 'delete-window)

(require 'nlinum)
(global-nlinum-mode 1)

;;(require 'ido-vertical-mode)
;;(ido-vertical-mode 1)
;;(setq ido-vertical-show-count t)
;;(setq ido-use-faces t)
;;(set-face-attribute 'ido-vertical-first-match-face nil
;;		    :background nil
;;		    :foreground "orange")
;;(set-face-attribute 'ido-vertical-only-match-face nil
;;		    :background nil
;;		    :foreground "#22A76E")
;;(set-face-attribute 'ido-vertical-match-face nil
;;		    :foreground "#0fb5b3")
;;(ido-vertical-mode 1)

(ido-grid-mode 1)

(require 'smex)
(smex-initialize)

;; Undo & Redo -- Falta definir as teclas
(when (fboundp 'winner-mode)
  (winner-mode 1))

;; Sublimity mode
(require 'sublimity)
(require 'sublimity-scroll)
(sublimity-mode 1)
(setq sublimity-scroll-weight 4
      sublimity-scroll-drift-length 4)

(require 'dashboard)
(dashboard-setup-startup-hook)
(setq dashboard-banner-logo-title "Welcome to EMACS 25 Wesley A. Alves")
;;(setq dashboard-startup-banner "~/.emacs.d/emacs-logo.png")
(ivy-mode 1)

(require 'switch-window)
(global-set-key (kbd "C-M-z")'switch-window)

(require 'multiple-cursors)
(global-set-key (kbd "C-M-}") 'mc/mark-next-like-this)
(global-set-key (kbd "C-M-{") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-M-+") 'mc/mark-all-like-this)

(beacon-mode 1)

(require 'smartparens-config)
(smartparens-global-mode)
(smartparens-mode 1)


(global-aggressive-indent-mode 1)

(require 'indent-guide)
(indent-guide-global-mode)
(set-face-background 'indent-guide-face nil)
(setq indent-guide-delay 0.1)
(setq indent-guide-char ":")


;; Auto completa texto
(company-quickhelp-mode 1)
;; Fold Code
(vimish-fold-global-mode 1)

;; Habilita o erro de sintax
(global-flycheck-mode)

;;(package-install 'spaceline-all-the-icons)

;; Exibe o número da janela na powerline.
(window-numbering-mode)

(spaceline-all-the-icons-theme 'your-segment-symbol "Wesley A. Alves" 'etc)

;; Informações de componentes do projeto
'(ecb-compile-window-height 0.25)
'(ecb-compile-window-temporally-enlarge (quote after-selection))
'(ecb-compile-window-width (quote edit-window))
'(ecb-enlarged-compilation-window-max-height (quote best))
'(ecb-layout-name "mylayout")
'(ecb-options-version "2.40")  ;; I think this is automatic?

(global-set-key (kbd "M-;") 'evilnc-comment-or-uncomment-lines)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auth-source-save-behavior nil)
 '(beacon-blink-delay 0.3)
 '(beacon-blink-duration 0.6)
 '(beacon-blink-when-focused t)
 '(beacon-color "#c0eb8a")
 '(cua-mode t nil (cua-base))
 '(custom-safe-themes
   (quote
    ("53f97243218e8be82ba035ae34c024fd2d2e4de29dc6923e026d5580c77ff702" "c001b4055abf1b02f5ed8bba48734adad3ed4af8529693b0c7bff6f320152073" "3629b62a41f2e5f84006ff14a2247e679745896b5eaa1d5bcfbc904a3441b0cd" default)))
 '(ecb-options-version "2.50")
 '(indent-guide-char "|")
 '(minimap-window-location (quote right))
 '(neo-auto-indent-point t)
 '(neo-autorefresh t)
 '(neo-theme (quote classic))
 '(neo-window-position (quote right))
 '(package-selected-packages
   (quote
    (yaml-mode 0blayout rainbow-mode evil-nerd-commenter ac-html-bootstrap ac-php ac-html ac-helm ac-emmet apache-mode ecb monokai-theme window-numbering alpha neotree mysql-to-org cparen spaceline-all-the-icons magit php-mode json-mode js2-mode impatient-mode emmet-mode web-mode ac-anaconda flycheck vimish-fold company-quickhelp company auto-complete indent-guide aggressive-indent smartparens auto-yasnippet beacon multiple-cursors undo-tree nlinum switch-window minimap ivy anzu dashboard sublimity smex ido-grid-mode tramp-theme)))
 '(send-mail-function (quote smtpmail-send-it))
 '(smtpmail-smtp-server "mx1.hostinger.com.br")
 '(smtpmail-smtp-service 587)
 '(spaceline-all-the-icons-flycheck-alternate t)
 '(spaceline-all-the-icons-icon-set-flycheck-slim (quote outline))
 '(spaceline-all-the-icons-icon-set-git-ahead (quote commit))
 '(spaceline-all-the-icons-icon-set-modified (quote circle))
 '(spaceline-all-the-icons-icon-set-sun-time (quote sun/moon))
 '(spaceline-all-the-icons-icon-set-vc-icon-git (quote git-name))
 '(spaceline-all-the-icons-slim-render t)
 '(spaceline-all-the-icons-window-number-always-visible t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "FreeMono" :foundry "GNU " :slant normal :weight bold :height 105 :width normal))))
 '(minimap-active-region-background ((t (:background "#303030"))))
 '(neo-banner-face ((t (:foreground "dark gray" :weight bold))))
 '(neo-dir-link-face ((t (:foreground "medium spring green"))))
 '(neo-file-link-face ((t (:foreground "white")))))
