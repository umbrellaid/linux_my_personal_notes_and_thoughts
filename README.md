<!-- markdown-toc start - Don't edit this section. Run M-x markdown-toc-refresh-toc -->
**Table of Contents**

- [Linux my personal notes and thoughts](#linux-my-personal-notes-and-thoughts)
    - [openSUSE Leap 15.5 x86_64 Plasma KDE](#opensuse-leap-155-x86_64-plasma-kde)
    - [Apps](#apps)
    - [Apps within Apps](#apps-within-apps)
        - [neovim](#neovim)
        - [emacs](#emacs)
    - [Fonts](#fonts)
    - [Hardware considerations](#hardware-considerations)
    - [Configurations and Tweaks](#configurations-and-tweaks)
        - [Alacritty](#alacritty)
            - [Main Config from here](#main-config-from-here)
            - [Other interesting configs](#other-interesting-configs)
        - [Spacemacs](#spacemacs)
            - [Section 1](#section-1)
            - [Section 2](#section-2)
            - [Section 3](#section-3)
            - [Section 4](#section-4)
            - [Section 5](#section-5)
    - [contact me](#contact-me)

<!-- markdown-toc end -->
# Linux my personal notes and thoughts #

## openSUSE Leap 15.5 x86_64 Plasma KDE ##

[openSUSE Leap](https://www.opensuse.org/#Leap)

[Install Snap on openSUSE](https://snapcraft.io/install/snap-store/opensuse)

[Install Flatpak on openSUSE](https://flatpak.org/setup/openSUSE)

## Apps ##

- Adobe DNG Convertor (windows app run through emulation on wine) - [https://helpx.adobe.com/camera-raw/using/adobe-dng-converter.html](https://helpx.adobe.com/camera-raw/using/adobe-dng-converter.html) - [https://helpx.adobe.com/camera-raw/digital-negative.html](https://helpx.adobe.com/camera-raw/digital-negative.html) - [https://www.adobe.com/creativecloud/file-types/image/raw/dng-file.html](https://www.adobe.com/creativecloud/file-types/image/raw/dng-file.html)
- Alacritty terminal emulator - installed from snap - neovim seems to works better in terminal emulators like Alacritty. - [https://alacritty.org/](https://alacritty.org/)
- Brave Browser - [https://brave.com/linux/](https://brave.com/linux/)
- Emacs - installed from snap - [https://snapcraft.io/emacs](https://snapcraft.io/emacs)
- Espeak - installed from system package manager
- FD find entries on your file system [https://github.com/sharkdp/fd](https://github.com/sharkdp/fd) - installed from system package manager
- Geeqie - fast image viewer including raw files - [https://flathub.org/apps/org.geeqie.Geeqie](https://flathub.org/apps/org.geeqie.Geeqie)
- Handbrake - [https://handbrake.fr/downloads.php](https://handbrake.fr/downloads.php) - Flatpak - [https://flathub.org/apps/fr.handbrake.ghb](https://flathub.org/apps/fr.handbrake.ghb)
- MEGA (online backup) - [https://help.mega.io/installs-apps/desktop-syncing](https://help.mega.io/installs-apps/desktop-syncing) - [https://help.mega.io/installs-apps/desktop-syncing/linux](https://help.mega.io/installs-apps/desktop-syncing/linux) - [https://mega.io/desktop#download](https://mega.io/desktop#download) - [https://mega.nz/linux/repo/](https://mega.nz/linux/repo/)
- Mbsync - installed from system package manager - called isync in package manager
- Microsoft Edge Browser - [https://www.microsoft.com/en-us/edge/download?form=MA13FJ](https://www.microsoft.com/en-us/edge/download?form=MA13FJ)
- Neovim - [https://github.com/neovim/neovim/blob/master/INSTALL.md](https://github.com/neovim/neovim/blob/master/INSTALL.md)
- Newsboat - installed from snap - [https://snapcraft.io/newsboat](https://snapcraft.io/newsboat)
- Notmuch - installed from system package manager
- Opera Browser - [https://www.opera.com/download](https://www.opera.com/download) - RPM is hidden further down on page or can be installed from snap - [https://snapcraft.io/opera](https://snapcraft.io/opera)
- Pandoc - [https://pandoc.org/installing.html](https://pandoc.org/installing.html) - installed from system package manager
- Ranger - installed from system package manager
- Ripgrep (rg) Has some similarities to grep, but also includes its own defaults and optimizations that make it behave slightly differently in some cases. [https://github.com/BurntSushi/ripgrep](https://github.com/BurntSushi/ripgrep) - installed from system package manager
- The Silver Searcher (ag) Behavior and syntax are very close to GNU grep. [https://github.com/ggreer/the_silver_searcher](https://github.com/ggreer/the_silver_searcher)
- Vivaldi Browser - [https://vivaldi.com/download/](https://vivaldi.com/download/) - [https://help.vivaldi.com/desktop/install-update/manual-setup-vivaldi-linux-repositories/](https://help.vivaldi.com/desktop/install-update/manual-setup-vivaldi-linux-repositories/) 
- Wine (windows emulation) - [https://wiki.winehq.org/Download](https://wiki.winehq.org/Download)

## Apps within Apps ##

### neovim ###

- lazyvim distribution - https://www.lazyvim.org/

### emacs ###

- spacemacs distribution - https://www.spacemacs.org/

## Fonts ##

- Ubuntu Monospace [https://design.ubuntu.com/font](https://design.ubuntu.com/font)
  - Nerd Font version of Ubuntu Monospace is Listed as UbuntuMono Nerd Font [https://www.nerdfonts.com/font-downloads](https://www.nerdfonts.com/font-downloads)
- Fira Code [https://github.com/tonsky/FiraCode](https://github.com/tonsky/FiraCode) 
  - Nerd Font version of Fira Code is Listed as FiraCode Nerd Font [https://www.nerdfonts.com/font-downloads](https://www.nerdfonts.com/font-downloads)

## Hardware considerations ##

- Printer HP Smart Tank 6000 Series

## Configurations and Tweaks ##

### Alacritty ###

#### Main Config from here ####

- [https://github.com/Widkidone/AlacrittyToml/blob/main/alacritty.toml](https://github.com/Widkidone/AlacrittyToml/blob/main/alacritty.toml)

#### Other interesting configs ####

- [https://github.com/sabinpocris/alacritty.toml/blob/main/alacritty.toml](https://github.com/sabinpocris/alacritty.toml/blob/main/alacritty.toml)
- [https://github.com/scalarwaves/dotfiles/blob/main/alacritty/alacritty.toml](https://github.com/scalarwaves/dotfiles/blob/main/alacritty/alacritty.toml)

Neovim does not work fully without a Nerd Font set as your terminal font
[https://www.nerdfonts.com/](https://www.nerdfonts.com/)

``` toml
[font.bold]
family = "UbuntuMono Nerd Font"
style = "Bold"

[font.bold_italic]
family = "UbuntuMono Nerd Font"
style = "Bold Italic"

[font.italic]
family = "UbuntuMono Nerd Font"
style = "Italic"

[font.normal]
family = "UbuntuMono Nerd Font"
style = "Regular"
```

### Spacemacs ###

#### Section 1 ####

dotspacemacs-configuration-layers

``` emacs-lisp
   ;; List of configuration layers to load.
   dotspacemacs-configuration-layers
   '(
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press `SPC f e R' (Vim style) or
     ;; `M-m f e R' (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     auto-completion
     better-defaults
     emacs-lisp
     git
     helm
     lsp
     markdown
     multiple-cursors
     org
     (shell :variables
            shell-default-height 30
            shell-default-position 'bottom)
     spell-checking
     syntax-checking
     version-control
     ranger
     emoji
     python
     (evil-snipe
      :variables
      evil-snipe-enable-alternate-f-and-t-behaviors t)
     notmuch
     (elfeed :variables
             elfeed-feeds '(
                            ("http://nullprogram.com/feed/" emacs)
                            ("https://planet.emacslife.com/atom.xml" emacs)
                            ("https://www.reddit.com/r/emacs.rss" emacs)
                            ("https://www.reddit.com/r/neovim.rss" neovim)
                            ("https://www.reddit.com/r/vim.rss" vim)
                            ("https://neovim.io/news.xml" neovim)
                            ("https://dotfyle.com/this-week-in-neovim/rss.xml" neovim)
                            ("https://protesilaos.com/master.xml" emacs)
                            ("https://sachachua.com/blog/feed" emacs)
                            )
             )
     treemacs)
```

#### Section 2 ####

After that section this section I add apps from MELPA

``` emacs-lisp
dotspacemacs-additional-packages '(
                                      greader
                                      sqlite3
                                      )
```

#### Section 3 ####

After that section is this section where I adjust a couple of settings:

``` emacs-lisp
(defun dotspacemacs/user-init ()
  "Initialization for user code:
This function is called immediately after `dotspacemacs/init', before layer
configuration.
It is mostly for variables that should be set before packages are loaded.
If you are unsure, try setting them in `dotspacemacs/user-config' first."
  ;; For python
  (add-hook 'python-mode-hook #'(lambda () (modify-syntax-entry ?_ "w")))
)
```

#### Section 4 ####

After that section is this section where I set a variable for greader and I add
a custom function that wraps http links so that the link has both the [] and ()
for markdown files. Otherwise when I am in format checkers it throws an error
for urls that are not in the right format.

``` emacs-lisp
(defun dotspacemacs/user-config ()
  "Configuration for user code:
This function is called at the very end of Spacemacs startup, after layer
configuration.
Put your configuration code here, except for variables that should be set
before packages are loaded."
  (setq greader-espeak-rate 350)

  (defun drr-markdown-linkify-http ()
    (interactive)
    (save-excursion
      (while (re-search-forward "\\(https?://[^[:space:]\n]+\\)" nil t)
        (replace-match "[\\1](\\1)" nil nil))))

)
```

Everything else is the standard configuration file without any changes.

#### Section 5 ####

After install run this command once SPC SPC all-the-icons-install-fonts

## contact me ##

If you have any interesting linux, text editor or technology related
information to share please let me know.

[Email Dave](mailto:david.rrrrrr@yandex.com?subject=Hello%20From%20[GitHub])
