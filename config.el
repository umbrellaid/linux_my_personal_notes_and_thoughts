;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets. It is optional.
;; (setq user-full-name "John Doe"
;;       user-mail-address "john@doe.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom:
;;
;; - `doom-font' -- the primary font to use
;; - `doom-variable-pitch-font' -- a non-monospace font (where applicable)
;; - `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;; - `doom-symbol-font' -- for symbols
;; - `doom-serif-font' -- for the `fixed-pitch-serif' face
;;
;; See 'C-h v doom-font' for documentation and more examples of what they
;; accept. For example:
;;
(setq doom-font (font-spec :family "UbuntuMono Nerd Font" :size 20)
      doom-variable-pitch-font (font-spec :family "Ubuntu" :size 20)
      doom-big-font (font-spec :family "UbuntuMono Nerd Font" :size 24)
      doom-symbol-font (font-spec :family "UbuntuMono Nerd Font" :size 20)
      doom-serif-font (font-spec :family "UbuntuMono Nerd Font" :size 20)
      )
;;
;; If you or Emacs can't find your font, use 'M-x describe-font' to look them
;; up, `M-x eval-region' to execute elisp code, and 'M-x doom/reload-font' to
;; refresh your font settings. If Emacs still can't find your font, it likely
;; wasn't installed correctly. Font issues are rarely Doom issues!

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'modus-operandi)

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/MEGA/org/")
(setq org-capture-templates
      '(
        ("t" "TODO Item"
         entry (file "~/MEGA/org/todos.org")
         "* TODO [#B] %? %^g\n"
         :empty-lines 0)

        ("j" "Journal Entry"
         entry (file+datetree "~/MEGA/org/journal.org")
         "* %?"
         :empty-lines 1)

        ("m" "Meeting"
         entry (file+datetree "~/MEGA/org/meetings.org")
         "* %? :meeting:%^g \n** Attendees\n - \n** Notes\n** Action Items\n*** TODO [#A] "
         :tree-type week
         :clock-in t
         :clock-resume t
         :empty-lines 0)

        ("n" "Note"
         entry (file+headline "~/MEGA/org/notes.org" "Random Notes")
         "** %?"
         :empty-lines 0)
        ))
(setq org-tag-alist
      '(
        (:startgroup . nil)
        ("easy" . ?e)
        ("medium" . ?m)
        ("difficult" . ?d)
        (:endgroup . nil)

        (:startgroup . nil)
        ("@work" . ?w)
        ("@home" . ?h)
        ("@anywhere" . ?a)
        (:endgroup . nil)

        ("CRITICAL" . ?c)
        ))
(setq org-todo-keywords
      '((sequence "TODO(t)" "IN-PROGRESS(i@/!)" "BLOCKED(b@/!)" "|" "DONE(d!)" "WONT-DO(w@/!)" ))
      )
;; Org settings from here:
;; https://github.com/james-stoup/org-mode-better-defaults/blob/main/org-better-defaults.org
;; Whenever you reconfigure a package, make sure to wrap your config in an
;; `after!' block, otherwise Doom's defaults may override your settings. E.g.
;;
;;   (after! PACKAGE
;;     (setq x y))
;;
;; The exceptions to this rule:
;;
;;   - Setting file/directory variables (like `org-directory')
;;   - Setting variables which explicitly tell you to set them before their
;;     package is loaded (see 'C-h v VARIABLE' to look up their documentation).
;;   - Setting doom variables (which start with 'doom-' or '+').
;;
;; Here are some additional functions/macros that will help you configure Doom.
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;; Alternatively, use `C-h o' to look up a symbol (functions, variables, faces,
;; etc).
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.
(setq elfeed-feeds
      '(
        ("http://nullprogram.com/feed/" emacs)
        ("https://planet.emacslife.com/atom.xml" emacs)
        ("https://www.reddit.com/r/emacs.rss" emacs)
        ("https://protesilaos.com/master.xml" emacs)
        ("https://sachachua.com/blog/feed" emacs)
        ("https://www.reddit.com/r/orgmode.rss" emacs)
        ("https://karthinks.com/index.xml" emacs)
        ("https://draculatheme.com/rss.xml" theme)
        )
      )
(setq greader-espeak-rate 400)
(setq python-shell-interpreter "/usr/bin/python3.11")
(setq writeroom-width 1)
(toggle-frame-maximized)
