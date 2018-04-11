(package-initialize)

;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; Setting the font
;;
;; These fonts have to be installed manually! (M-x describe-font)

;; inconsolata.
;; (set-default-font "Inconsolata")
;; (add-to-list 'default-frame-alist '(font . "Inconsolata-13"))
;; (set-face-attribute 'default t :font "Inconsolata-13")
;; (set-default-font "-*-Inconsolata-normal-normal-normal-*-13-*-*-*-m-0-iso10646-1")
;; (set-face-attribute 'default nil :font "-*-Inconsolata-normal-normal-normal-*-13-*-*-*-m-0-iso10646-1")
;(set-face-attribute 'default nil :font "-*-Inconsolata-normal-normal-normal-*-12-*-*-*-m-0-iso10646-1")
;; have to set the following two, in order to
;;(set-face-attribute 'fixed-pitch nil :font "-*-Inconsolata-normal-normal-normal-*-11-*-*-*-m-0-iso10646-1")
;;(set-face-attribute 'variable-pitch nil :font "-*-Inconsolata-normal-normal-normal-*-11-*-*-*-m-0-iso10646-1")
;;
;;;;


;;; * MAC specific settings
;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; MAC specific settings
;;
;; manually specify the path!
(setenv "PATH"
	(concat ":~/bin:/usr/local/bin:/usr/bin:/bin"
	(getenv "PATH"))
   )
;; in order to be able to write {} and []
(setq default-input-method "MacOSX")
(setq ns-alternate-modifier 'meta)        ;; left alt is meta
(setq ns-right-alternate-modifier 'nil)   ;; right alt is alt
;(setq mouse-drag-copy-region nil)  ; stops selection with a mouse being immediately injected to the kill ring
;(mouse-wheel-mode t)			; activate mouse scrolling
(global-font-lock-mode t)		; syntax highlighting
;(setq font-lock-global-modes '(not ESS))
(transient-mark-mode t)			; sane select (mark) mode
;(delete-selection-mode t)		; entry deletes marked text
;(show-paren-mode t)			; match parentheses
;;
;;;;

;;; * Custom variables
;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; custom settings
;;
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(magit-diff-use-overlays nil)
 '(magit-use-overlays nil)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
;;
;;;;


;;; * Themes
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; Themes, load with "M-x load-theme"
(add-to-list 'load-path "~/.emacs.d/site-lisp/")
(add-to-list 'load-path "~/.emacs.d/themes/")
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
;(load-theme 'zenburn t)
;(load-theme 'leuven t)
;(load-theme 'mccarthy t)
;; solarized customization
;; make the fringe stand out from the background
;(setq solarized-distinct-fringe-background t)
;; make the modeline high contrast
;;(setq solarized-high-contrast-mode-line t)
;;;;;;;;;;;;;
;;
;; flatui:
;; (setq flatui-high-contrast-mode-line t)
;; (setq flatui-use-variable-pitch nil)
;; (setq flatui-scale-org-headlines t)
;; (setq flatui-height-plus-1 1.07)
;; (setq flatui-height-plus-2 1.12)
;; (setq flatui-height-plus-3 1.16)
;; (setq flatui-height-plus-4 1.22)
;; ;; Use high contrast code block header background (or not)
;; (setq flatui-high-contrast-code-block-header t)  ;; not for presentation
;; (load-theme 'flatui-light t)
;; (load-theme 'flatui-dark t)
;;
;; gruvbox
;; (setq gruvbox-high-contrast-mode-line t)
;; (setq gruvbox-high-contrast-code-block-header t)
;; (setq gruvbox-use-variable-pitch nil)
;; (setq gruvbox-scale-org-headlines t)
;; (setq gruvbox-height-plus-1 1.07)
;; (setq gruvbox-height-plus-2 1.12)
;; (setq gruvbox-height-plus-3 1.16)
;; (setq gruvbox-height-plus-4 1.22)
;; (load-theme 'gruvbox-dark t)
;;
;; atom-one-dark
(load-theme 'atom-one-dark t)
;;
;; creamsody
;; (load-theme 'creamsody t)
;; (creamsody-modeline-four)
;;;;;;;;;;;;;;;
;; transparency
;;(set-frame-parameter (selected-frame) 'alpha '(<active> [<inactive>]))
; (set-frame-parameter (selected-frame) 'alpha '(100 85))
; (add-to-list 'default-frame-alist '(alpha 100 85))
;(eval-when-compile (require 'cl))
; (defun toggle-transparency ()
;   (interactive)
;   (if (/=
;        (cadr (frame-parameter nil 'alpha))
;        100)
;       (set-frame-parameter nil 'alpha '(100 100))
;     (set-frame-parameter nil 'alpha '(90 85))))
; (global-set-key (kbd "C-c t") 'toggle-transparency)
;;
;;;;



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; Packages and stuff

;;; * company-mode
;;;;;;;;;;;;;;;;;;;;;;;
;;
;; company-mode
;; (load "company.el")
;; Config comes from https://github.com/izahn/dotemacs/blob/master/init.el
(require 'company)
;; cancel if input doesn't match, be patient, and don't complete automatically.
;; set company-idle-delay nil for no automatic matching.
(setq company-require-match nil
      company-async-timeout 6
      company-idle-delay 1)
;; complete using C-tab
;; (global-set-key (kbd "<C-tab>") 'counsel-company)
;; use C-n and C-p to cycle through completions
;; (define-key company-mode-map (kbd "<C-tab>") 'company-complete)
;; (define-key company-active-map (kbd "C-n") 'company-select-next)
;; (define-key company-active-map (kbd "<tab>") 'company-complete-common)
;; (define-key company-active-map (kbd "C-p") 'company-select-previous)
;; (define-key company-active-map (kbd "<backtab>") 'company-select-previous)
;;
(require 'company-capf)
;; put company-capf and company-files at the beginning of the list
;; (setq company-backends
;;       '(company-files company-capf company-nxml company-css company-cmake company-semantic company-clang company-xcode company-eclim))
;; (setq-default company-backends
;;               '(company-files company-capf company-nxml company-css company-cmake company-semantic company-clang company-xcode company-eclim))
;; put company-capf and company-files at the beginning of the list
(setq company-backends
      '(company-files company-capf company-gtags company-ispell company-nxml company-css company-cmake company-semantic))
(setq-default company-backends
              '(company-files company-capf company-gtags company-ispell company-nxml company-css company-cmake company-semantic))
;;
(defun my-company-indent-or-complete-common ()
  "Indent the current line or region, or complete the common part."
  (interactive)
  (cond
   ((use-region-p)
    (indent-region (region-beginning) (region-end)))
   ((and (not (looking-at "\\w\\|\\s_"))
         (memq indent-line-function
               '(indent-relative indent-relative-maybe)))
    (company-complete-common))
   ((let ((old-point (point))
          (old-tick (buffer-chars-modified-tick))
          (tab-always-indent t))
      (call-interactively #'indent-for-tab-command)
      (when (and (eq old-point (point))
                 (eq old-tick (buffer-chars-modified-tick))
                 (not (looking-at "\\w\\|\\s_")))
        (company-complete-common))))))

;; (define-key company-mode-map (kbd "<tab>") 'my-company-indent-or-complete-common)
;;
(add-hook 'after-init-hook 'global-company-mode)
;;
;;;;

;;; * helm-complete
;;;;;;;;;;;;;;;;;;;;;;;
;;
;; helm-complete
(autoload 'helm-company "helm-company") ;; Not necessary if using ELPA package
(eval-after-load 'company
  '(progn
     (define-key company-mode-map (kbd "C-:") 'helm-company)
     (define-key company-active-map (kbd "C-:") 'helm-company)))
;; (global-set-key "\t" 'helm-company)
(define-key company-mode-map (kbd "<C-tab>") 'helm-company)
;;
;;;;

;;; * ESS
;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; ESS
;;
(add-to-list 'load-path "~/.emacs.d/site-lisp/ess")
;; (load "ess-site")
(require 'ess-site)
(add-to-list 'auto-mode-alist '("\\.R$" . R-mode))
(setq eldoc-echo-area-use-multiline-p t)
;; Don't use a R history file.
(setq ess-history-file nil)
;; Uncomment below if we're getting problems doing an ediff on an R-file with magit. merge conflict
;;(add-to-list 'auto-mode-alist '("\\.R" . ess-mode))
(add-to-list 'auto-mode-alist '("NAMESPACE" . ess-mode))
;;(require 'ess-custom)
;; Somehow that sucker seems to be missing...
;;(defvar ess-local-customize-alist nil "Buffer local settings for proper behaviour")
(setq-default inferior-R-args "--no-save ")
;; automatically start R in the present directory. useful for async org export
(setq ess-ask-for-ess-directory nil)
;; toggle the option to ask for R to start.
(defun toggle-ask-R ()
  "Toggle the option for ESS to ask to start R in directory or to just start it."
    (interactive)
      (if (eq ess-ask-for-ess-directory nil)
            (setq ess-ask-for-ess-directory t)
                (setq ess-ask-for-ess-directory nil)))
;; This will set Ctrl-g to toggle but you can set it to anything
;; you want.
;; (global-set-key [(control meta g)] 'toggle-ask-R)
;; Automagically delete trailing whitespace when saving R script
;; files. One can add other commands in the ess-mode-hook below.
;; (add-hook 'ess-mode-hook
;;       '(lambda()
;; 	(add-hook 'write-file-functions
;; 	(lambda ()
;; 	(ess-nuke-trailing-whitespace)))
;; 	(setq ess-nuke-trailing-whitespace-p t)))
;; disable the replacing of undescore with assignment
(ess-toggle-underscore nil)
;;
;; Code indenting etc.
;; (add-hook 'ess-mode-hook
;;           (lambda ()
;;             (ess-set-style 'C++ 'quiet)
;;             ;; Because
;;             ;;                                 DEF GNU BSD K&R C++
;;             ;; ess-indent-level                  2   2   8   5   4
;;             ;; ess-continued-statement-offset    2   2   8   5   4
;;             ;; ess-brace-offset                  0   0  -8  -5  -4
;;             ;; ess-arg-function-offset           2   4   0   0   0
;;             ;; ess-expression-offset             4   2   8   5   4
;;             ;; ess-else-offset                   0   0   0   0   0
;;             ;; ess-close-brace-offset            0   0   0   0   0
;;             (add-hook 'local-write-file-hooks
;;                       (lambda ()
;;                         (ess-nuke-trailing-whitespace)))))
;; (setq ess-nuke-trailing-whitespace-p 'ask)
;; (setq c-default-style "bsd"
;;       c-basic-offset 4)
;;
;;;;


;;; * tramp
;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; tramp for remote ssh/files etc.
;;
;; tramp (transparent remote ...)
(require 'tramp)
(setq tramp-default-method "ssh")
;(setq tramp-chunksize 500)
;(eval-after-load 'tramp '(setenv "SHELL" "/bin/bash"))
;(setq tramp-debug-buffer t)
;(setq tramp-verbose 10)
;;
;;;;


;;; * org-mode
;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; org-mode
;;
;; At first, we make sure that our modifications in .emacs
;; are applied _after_ default.el is read/
;; Note: org is a part of Emacs, so we have to overwrite! the files
;; in /Applications/Emacs.app/Contents/Resources etc:
;; load a separately installed org
;; (add-to-list 'load-path "/Applications/Emacs.app/Contents/Resources/lisp/org")
;; Configuring org mode to know about R and set some reasonable default behavior
(add-to-list 'load-path "~/.emacs.d/site-lisp/org")
;; (require 'ess-site)
;(require 'org-install)
(require 'ob-tangle)
(require 'ob-latex)
(require 'ob-R)
(require 'ob-shell)
;(require 'ob-sh)
;(require 'ox-latex)
(require 'ox-html)
(require 'ox-beamer)
(require 'ox-md)
;;(require 'ox-bibtex)
;2(require 'org-eval)
;; enable fontify:
;2(setq org-src-fontify-natively t)
;(setq org-startup-indented t)  ;; automatic indentation and hiding of **
;; bullets for TODO items
(require 'org-bullets)
;; Override the bullets.
(setq org-bullets-bullet-list '(
				"◉"
				"●"
				"○"
				"▶"
				"◆"
				"◇"
				))
;(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))
;; set org-mode for all .org files.
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)
;; ;; Disable the strike through:
;; (setq org-emphasis-alist (quote (("*" bold)
;; 				 ("/" italic)
;; 				 ("_" underline)
;; 				 ("=" org-code verbatim)
;; 				 ("~" org-verbatim verbatim))))
;; Hide the markup elements:
(setq org-hide-emphasis-markers t)
;; set to nil in case no default scaling should be done.
;; globally disabling sub and superscripts...
(setq org-export-with-sub-superscripts '{})
(setq org-use-sub-superscripts '{})
;; load R and some other languages language...
(org-babel-do-load-languages 'org-babel-load-languages '((R . t)
							 (emacs-lisp . t)
							 (sqlite . t)
							 (latex . t)
							 (ditaa . t)))
;; save the window set-up; forces the layout to be restore after agenda is closed.
(setq org-agenda-window-setup 'current-window)
;; treat lists like headers:
(setq org-cycle-include-plain-lists 'integrate)
;; automatically add all org files as agenda files.
;; just add all folders you want to be screened.
(load-library "find-lisp")

;; only calls find-lisp-find-files if the directory exists.
(defun find-lisp-find-files-if-exists (directory regexp)
  (if (file-exists-p directory)
      (find-lisp-find-files directory regexp)
    )
  )

(add-hook 'org-agenda-mode-hook (lambda ()
    (setq org-agenda-files
	  (append
	   (find-lisp-find-files-if-exists "~/R-workspaces/2014" "\.org$")
	   (find-lisp-find-files-if-exists "/Volumes/EURACrypt/2014" "\.org$")
	   (find-lisp-find-files-if-exists "/Volumes/EURACrypt/2015" "\.org$")
	   (find-lisp-find-files-if-exists "~/R-workspaces/Collaborations" "\.org$")
	   (find-lisp-find-files-if-exists "~/Documents/Unison/org-files" "\.org$")
	   (find-lisp-find-files-if-exists "~/Documents/Unison/Documents/Papers-own" "\.org$")
	   (find-lisp-find-files-if-exists "~/Documents/Unison/Documents/Reviews" "\.org$")
	   (find-lisp-find-files-if-exists "~/Documents/Unison/EURAC" "\.org$")
	   (find-lisp-find-files-if-exists "~/Projects/git" "\.org$")
    ))
))
;; define custom TODO keywords.
(setq org-todo-keywords
       '((sequence "TODO(t)" "WAIT(w@/!)" "VERIFY(v@)" "REDO(r@/!)" "|" "DONE(d!)" "CANCELED(c@)")))
(setq org-todo-keyword-faces
;	'(("TODO" . (:foreground "DeepPink1" :weight bold :slant italic :underline t))
	'(("TODO" . (:foreground "#f39c12" :weight bold :slant italic :underline t))
	("WAIT" . (:foreground "#3498db" :slant italic :underline t))
	("DONE" . (:foreground "#27ae60" :slant italic :undeline t))
	("CANCELED" . (:foreground "#9b59b6" :weight bold :slant italic :underline t))
	("REDO" . (:foreground "#e74c3c" :weight bold :slant italic :underline t))
	("VERIFY" . (:foreground "#e74c3c" :weight bold :slant italic :underline t))
	))
;; we don't want to always say "yes" please execute code...
(setq org-confirm-babel-evaluate nil)
;; define a org-to-latex template
;;(setq org-export-latex-listings t)
;;(setq org-export-latex-listings 'minted)

(setq org-latex-listings 'minted)
;(setq org-latex-custom-lang-environments
;       '(
;	(R "Rcode")
;	))

;; modify the pdf process. (idea: call latexmk -C %f afterwards?)
(setq org-latex-pdf-process (quote ("latexmk -pdflatex='pdflatex --shell-escape' -latex='latex --shell-escape' -gg -f -cd -pdf %f")))
(setq org-latex-listings 'minted
      org-latex-minted-options
      '(
	;; ("frame" "lines")
	("bgcolor" "lightgrey")
        ("fontsize" "\\scriptsize")
	;; ("linenos=true")
	;; ("linenos" "")
	)
      )
;; additional latex packages we always want to be added for latex export.
(add-to-list 'org-latex-packages-alist '("" "minted"))
(add-to-list 'org-latex-packages-alist '("" "float"))
(add-to-list 'org-latex-packages-alist '("" "xcolor"))

;(add-hook 'org-export-before-processing-hook 'org-export-process-apply-macros)
;; place captions below tables, not above
(setq org-latex-caption-above nil)
(setq org-export-latex-table-caption-above nil)
;; these custom agenda views will be displayed in the org-mobile app
(setq org-tag-alist '(("analysis" . ?n) ("ageing" . ?A) ("collab" . ?c) ("EURAC" . ?E)
		      ("EURA-K" . ?K) ("noexport" . ?N) ("paper" . ?a) ("private" . ?p)
		      ("project" . ?P) ("review" . ?r) ("work" . ?w) ))
(setq org-agenda-custom-commands
      '(("p" "Private TODOs"
	 ((tags-todo "private")
	  ))
	("w" "Work related TODOs"
	 (
	  (tags-todo "work+analysis")
	  (tags-todo "work+project")
	  (tags-todo "work+paper")
	  (tags-todo "work+collab")
	  (tags-todo "work-analysis-project-paper-collab")
	  ))
	))
;; org-export settings:
;; allows to define a init file other than the default one, specifically
;; useful if async export yields e.g. an error complaining that the font
;; can not be found.
(setq org-export-async-init-file "/Users/jo/.emacs-async-init.el")
;; try this for gplots evaluation
(setq org-babel-use-quick-and-dirty-noweb-expansion t)
;; org-journal settings:
;2(require 'org-journal)
;2(setq org-journal-dir "/Users/jo/org-files/journal/")
;2(global-set-key (kbd "C-c C-n") 'org-journal-new-entry)
;;
;; For update to orgmode 9.0
(defun org-repair-export-blocks ()
  "Repair export blocks and INCLUDE keywords in current buffer."
  (interactive)
  (when (eq major-mode 'org-mode)
    (let ((case-fold-search t)
          (back-end-re (regexp-opt
                        '("HTML" "ASCII" "LATEX" "ODT" "MARKDOWN" "MD" "ORG"
                          "MAN" "BEAMER" "TEXINFO" "GROFF" "KOMA-LETTER")
                        t)))
      (org-with-wide-buffer
       (goto-char (point-min))
       (let ((block-re (concat "^[ \t]*#\\+BEGIN_" back-end-re)))
         (save-excursion
           (while (re-search-forward block-re nil t)
             (let ((element (save-match-data (org-element-at-point))))
               (when (eq (org-element-type element) 'special-block)
                 (save-excursion
                   (goto-char (org-element-property :end element))
                   (save-match-data (search-backward "_"))
                   (forward-char)
                   (insert "EXPORT")
                   (delete-region (point) (line-end-position)))
                 (replace-match "EXPORT \\1" nil nil nil 1))))))
       (let ((include-re
              (format "^[ \t]*#\\+INCLUDE: .*?%s[ \t]*$" back-end-re)))
         (while (re-search-forward include-re nil t)
           (let ((element (save-match-data (org-element-at-point))))
             (when (and (eq (org-element-type element) 'keyword)
                        (string= (org-element-property :key element) "INCLUDE"))
               (replace-match "EXPORT \\1" nil nil nil 1)))))))))
;;
;; Disable company mode in org buffers
(add-hook 'org-mode-hook (lambda() (company-mode -1)))
;;
;;;;

;;; * markdown
;;;;;;;;;;;;;;;;;;;;;;;;
;; markdown
;;
(autoload 'markdown-mode "markdown-mode"
   "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))
(autoload 'gfm-mode "markdown-mode"
   "Major mode for editing GitHub Flavored Markdown files" t)
(add-to-list 'auto-mode-alist '("README\\.md\\'" . gfm-mode))

;;; * polymode
;;;;;;;;;;;;;;;;;;;;;;;;
;; polymode
;;
(setq load-path
      (append '("~/.emacs.d/site-lisp/polymode/" "~/.emacs.d/site-lisp/polymode/modes/")
	      load-path))
;;(require 'poly-base)
(require 'poly-R)
(require 'poly-markdown)
(require 'poly-noweb)
;;(require 'poly-C)
(require 'poly-slim)
(require 'poly-erb)
;;(require 'poly-org)

(add-to-list 'auto-mode-alist '("\\.md" . poly-markdown-mode))

;;;; ORG
;;;(add-to-list 'auto-mode-alist '("\\.org" . poly-org-mode))

;;;; R related modes
(add-to-list 'auto-mode-alist '("\\.Snw$" . poly-noweb+r-mode))
(add-to-list 'auto-mode-alist '("\\.Rnw$" . poly-noweb+r-mode))
(add-to-list 'auto-mode-alist '("\\.Rmd$" . poly-markdown+r-mode))
(add-to-list 'auto-mode-alist '("\\.rapport$" . poly-rapport-mode))
(add-to-list 'auto-mode-alist '("\\.Rhtml$" . poly-html+r-mode))
(add-to-list 'auto-mode-alist '("\\.Rbrew$" . poly-brew+r-mode))
(add-to-list 'auto-mode-alist '("\\.Rcpp$" . poly-r+c++-mode))
(add-to-list 'auto-mode-alist '("\\.cppR$" . poly-c++r-mode))

;;;;;;;;;;;;;;;;;;;;;;;;
;; markdown-preview
;;
;;(require 'websocket)
;;(require 'markdown-preview)

;;; * magit
;;;;;;;;;;;;;;;;;;;;;;;;
;; Magit, git control
;;
(add-to-list 'load-path "~/.emacs.d/site-lisp/magit")
(require 'magit)
(require 'magit-svn)
;; define the directories in which magit is looking for repos
;(setq magit-repo-dirs
;      (list "~/R-workspaces"
;	    "~/Projects-synced"
;	    "~/Projects"
;	    "~/Documents/Unison/"
;))
(setq magit-repo-dirs-depth 4)
;; (setq magit-last-seen-setup-instructions "1.4.0")
;;
;;;;

;;; * magithub
;;;;;;;;;;;;;;;;;;;;;;;;
;; Magit + github
;;
;; (require 'magithub)
;; (setq magithub-feature-autoinject t)
;;
;;;;

;;; * ox-ravel
;;;;
;; the ox-ravel Sweave export module
(require 'ox-ravel)
;;
;;;;

;;; * ssh
;;;;;;;;;;;;;;;;;;;;;;;;;
;; ssh
;;
(require 'ssh)
(setq ssh-display-follow-current-frame t)
(setq ssh-explicit-args '("-Y"))
;;
;;;;

;;; * Spell checking
;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Spell checking
;;
;; use aspell instead of ispell:
(setq-default ispell-program-name "aspell")  ;; or just symlink ispell to aspell...
;; prevent spell check in code chunks:
;; does not work... dammit
;(add-to-list 'ispell-skip-region-alist '("^#+BEGIN" . "^#+END_SRC"))
;(add-to-list 'ispell-skip-region-alist '("^<<.*>>=" . "^@"))
;(add-to-list 'ispell-skip-region-alist '("Sexpr{" . "} "))
;(add-to-list 'ispell-skip-region-alist '("^#\s" "$"))
;(add-to-list 'ispell-skip-region-alist '("=" "="))
;; skip code chunks in flyspell
;(defun flyspell-eligible ()
;  (let ((p (point)))
;      (save-excursion
;        (cond ((re-search-backward (ispell-begin-skip-region-regexp) nil t)
;        	(ispell-skip-region (match-string-no-properties 0))
;                (< (point) p))
;                (t)))))
;;
; enable spell checking using flyspell for Tex, latex and org-mode,
; disable for ess.
(add-hook 'TeX-mode-hook
	  (lambda()
	    (flyspell-mode 1))
	    )
(add-hook 'latex-mode-hook
	  (lambda()
	    (flyspell-mode 1))
	    )
(add-hook 'org-mode-hook
	  (lambda()
	    (flyspell-mode 1))
	    )
(add-hook 'ess-mode-hook
	  (lambda()
	    (flyspell-mode 0))
	    )
(setq ispell-list-command "--list")
;;
;;;

;;; ** auto-lang
;;;;;;;;;;;;;;;;;;;;;;;;;
;; auto-lang to automatically set the language for ispell.
;;
(require 'auto-lang)
(defun fd-switch-dictionary()
  (interactive)
  (let* ((dic ispell-current-dictionary)
    	 (change (if (string= dic "deutsch8") "english" "deutsch8")))
    (ispell-change-dictionary change)
    (message "Dictionary switched from %s to %s" dic change)
    ))

(global-set-key (kbd "<f8>")   'fd-switch-dictionary)
;;
;;;;


;;; * Other sorted and unsorted settings
;;; ** zoom-frame
(require 'zoom-frm)
(global-set-key (kbd "C-x C-+") 'zoom-in)
(global-set-key (kbd "C-x C--") 'zoom-out)

;;; ** Weekly time tracking
(global-set-key (kbd "<f7>") (lambda() (interactive)(find-file "~/org-files/Weekly/2015-weekly.org")))

;;; ** perl
(defalias 'perl-mode 'cperl-mode)

;;; ** psvn and framepop
(add-to-list 'vc-handled-backends 'SVN)
(require 'psvn)
(require 'framepop)

;;; ** TAGS
(visit-tags-table "~/Projects/git/TAGS")
(setq tags-table-list
      '("~/Projects/git/"))

;; ;;; ** Fill-Column-Indicator
;; Disable this vertical line for e.g. presentations.
(require 'fill-column-indicator)
(setq-default fci-rule-column 80)
(setq-default fci-rule-image-format 'pbm)
;;(setq-default fci-rule-image-format 'xpm)
;;(setq fci-rule-color "darkblue")
;;(setq fci-rule-bg-color "red")
(setq fci-handle-truncate-lines nil)
;; comment below if you want to use the image option.
;; (setq fci-always-use-textual-rule "yes")
(define-globalized-minor-mode global-fci-mode fci-mode (lambda () (fci-mode 1)))
(global-fci-mode 1)
(defun auto-fci-mode (&optional unused)
  (if (> (window-width) fci-rule-column)
      (fci-mode 1)
      (fci-mode 0))
  )
(add-hook 'after-change-major-mode-hook 'auto-fci-mode)
(add-hook 'window-configuration-change-hook 'auto-fci-mode)

;;; ** helm
(add-to-list 'load-path "~/.emacs.d/site-lisp/helm")
(require 'helm-config)
(require 'helm)
;; Overwrite key bindings
(global-set-key (kbd "M-x") 'helm-M-x)
;;(global-set-key (kbd "C-x b") 'helm-buffer-list)
(global-set-key (kbd "C-x r b") 'helm-filtered-bookmarks)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "M-y") 'helm-show-kill-ring)
;; bind also cmd-v to that
;;(global-set-key (kbd "s-v") 'helm-show-kill-ring)
;; rebind <tab> to run persistent action
(define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action)
;; open helm buffer inside current window
(setq helm-split-window-in-side-p t)
;; Turn on helm by default
(helm-mode 1)

;;; ** powerline
;; The fancy modeline at the bottom.
;; (require 'powerline)
;; (powerline-default-theme)
;; ;; (powerline-center-theme)
;; ;; (powerline-center-evil-theme)
;; ;; (powerline-vim-theme)
;; ;; (powerline-nano-theme)
;; ;; (setq powerline-arrow-shape 'arrow)
;; (setq powerline-default-separator 'utf-8)
;; (setq powerline-display-buffer-size nil)
;; (setq powerline-display-buffer-size-suffix nil)
;; (setq powerline-display-mule-info t)
;; (setq powerline-display-hud t)

;;; * Unsorted other settings
;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; other settings
;;
;; line wrapping and similar...
;;(setq-default word-wrap t)
;;(electric-indent-mode 1)
(show-paren-mode 1)
(setq-default show-paren-mode t)		; match parenthesis
(setq-default tool-bar-mode nil)		; hide the button/menu bar
;;(setq auto-fill-mode -1)
;;(setq-default fill-column 99999) ;; if everything else fails
;;(setq fill-column 99999)         ;; if everything else fails
(add-hook 'text-mode-hook 'turn-on-auto-fill) ; wrap long lines in text mode
(setq-default fill-column 80)
;;(remove-hook 'text-mode-hook 'turn-on-auto-fill)
;4(remove-hook 'noweb-select-doc-mode-hook 'noweb-auto-fill-doc-mode)     ;; disable the auto-fill-mode in noweb files
;4(remove-hook 'noweb-select-code-mode-hook 'noweb-auto-fill-code-mode)   ;; the same
;; show line numbers by default. use "M-x linum-mode" to toggle
;;(global-linum-mode nil)
(setq make-backup-files nil)
;; other settings
(add-hook 'text-mode-hook 'turn-on-visual-line-mode)  ;; visual line mode on only in text files.
;; disable debug on error
(setq debug-on-error nil)
;;
;; kill all other buffers, except the current one.
(defun kill-other-buffers ()
  "Kill all other buffers."
  (interactive)
  (dolist (buffer (buffer-list))
    (unless (or (eql buffer (current-buffer)) (not (buffer-file-name buffer)))
      (kill-buffer buffer)))
  )
;; add shortcut
(global-set-key (kbd "C-c k") 'kill-other-buffers)
;; from https://github.com/purcell/exec-path-from-shell.git
;; Load environment variables from the shells
(require 'exec-path-from-shell)
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))
;; loading additional environment variables.
(exec-path-from-shell-copy-env "PERL5LIB")
(exec-path-from-shell-copy-env "LC_ALL")    ; this somehow prevents segfauls of R parallel processing in Emacs
(exec-path-from-shell-copy-env "LANG")    ; this somehow prevents segfauls of R parallel processing in Emacs
(exec-path-from-shell-copy-env "SHELL")
;;

;;;;
;; eimp
(require 'eimp)
(add-hook 'image-mode-hook 'eimp-mode)
;; (kbd "+") 'eimp-increase-image-size
;; (kbd "-") 'eimp-decrease-image-size
;; (kbd "<") 'eimp-rotate-image-anticlockwise
;; (kbd ">") 'eimp-rotate-image-clockwise
;; (kbd "B +") 'eimp-blur-image
;; (kbd "B -") 'eimp-sharpen-image
;; (kbd "B E") 'eimp-emboss-image
;; (kbd "B G") 'eimp-gaussian-blur-image
;; (kbd "B R") 'eimp-radial-blur-image
;; (kbd "C B +") 'eimp-increase-image-brightness
;; (kbd "C B -") 'eimp-decrease-image-brightness
;; (kbd "C C +") 'eimp-increase-image-contrast
;; (kbd "C C -") 'eimp-decrease-image-contrast
;; (kbd "F ^") 'eimp-flip-image
;; (kbd "F >") 'eimp-flop-image
;; (kbd "F <") 'eimp-flop-image
;; (kbd "N") 'eimp-negate-image

;; ; Commands most relevant to you:
;; (kbd "S f") 'eimp-fit-image-to-window
;; (kbd "S h") 'eimp-fit-image-height-to-window
;; (kbd "S w") 'eimp-fit-image-width-to-window

;; (kbd "<right>") 'eimp-roll-image-right
;; (kbd "<left>") 'eimp-roll-image-left
;; (kbd "<up>") 'eimp-roll-image-up
;; (kbd "<down>") 'eimp-roll-image-down
;; (kbd "<down-mouse-1>") 'eimp-mouse-resize-image
;; (kbd "<S-down-mouse-1>") 'eimp-mouse-resize-image-preserve-aspect
;; (kbd "C-c C-k") 'eimp-stop-all

;;;;
;; windmove
(global-set-key (kbd "C-c <left>") 'windmove-left)
(global-set-key (kbd "C-c <right>") 'windmove-right)
(global-set-key (kbd "C-c <up>") 'windmove-up)
(global-set-key (kbd "C-c <down>") 'windmove-down)

;;;;
;; Org mode inline image size.
;; show created images inline in the org buffer, just have to find a way to reduce their size...
;; (add-hook 'org-babel-after-execute-hook 'org-display-inline-images)
;; (add-hook 'org-mode-hook 'org-display-inline-images)
;; scale images by default to 400px, otherwise (if there is an #+ATTR_ORG: :width 200px to 200)
;;(setq org-image-actual-width '(200))
;;(setq org-image-actual-width nil)
;; Scale images to half window width
(setq org-image-actual-width (/ (window-pixel-width) 2))
;;(setq org-image-actual-width (/ (display-pixel-width) 2))
(defun org-inline-image-resize ()
  "Update the org-mode inline image width"
  (interactive)
  (setq org-image-actual-width (/ (window-pixel-width) 2))
  )
(add-hook 'window-configuration-change-hook #'org-inline-image-resize)

