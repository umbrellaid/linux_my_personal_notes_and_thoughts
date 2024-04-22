<!-- markdown-toc start - Don't edit this section. Run M-x markdown-toc-refresh-toc -->
**Table of Contents**

- [Linux my personal notes and thoughts](#linux-my-personal-notes-and-thoughts)
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
        - [Fish config](#fish-config)
    - [contact me](#contact-me)

<!-- markdown-toc end -->
# Linux my personal notes and thoughts #

## Apps ##

- Adobe DNG Convertor (windows app run through emulation on wine) - https://helpx.adobe.com/camera-raw/using/adobe-dng-converter.html - https://helpx.adobe.com/camera-raw/digital-negative.html - https://www.adobe.com/creativecloud/file-types/image/raw/dng-file.html
- Alacritty terminal emulator - installed from snap - neovim seems to works better in terminal emulators like Alacritty or Kitty. - https://alacritty.org/
- Audacity - sound editor - appimage - https://www.audacityteam.org/download/
- Emacs - https://www.emacswiki.org/emacs/BuildingEmacs - https://practical.li/blog/build-emacs-from-source-on-debian-linux/
- Espeak - installed from system package manager
- FD find entries on your file system [https://github.com/sharkdp/fd](https://github.com/sharkdp/fd)
- Fish - https://fishshell.com/
- GIMP - https://www.gimp.org/downloads/
- Geeqie - fast image viewer including raw files
- Handbrake - https://handbrake.fr/downloads.php - Flatpak
- MEGA (online backup) - https://help.mega.io/installs-apps/desktop-syncing - https://help.mega.io/installs-apps/desktop-syncing/linux - https://mega.io/desktop#download - https://mega.nz/linux/repo/
- Mbsync - installed from system package manager
- Microsoft Edge Browser - https://www.microsoft.com/en-us/edge/download?form=MA13FJ
- Neovim - https://github.com/neovim/neovim/blob/master/INSTALL.md
- Newsboat - installed from snap
- Notmuch - installed from system package manager
- Opera Browser - https://www.opera.com/download - RPM is hidden further down on page
- Pandoc - https://pandoc.org/installing.html
- Python - installed from system package manager
- Ranger - installed from system package manager
- Rename - installed from system package manager
- Ripgrep (rg) Has some similarities to grep, but also includes its own defaults and optimizations that make it behave slightly differently in some cases. [https://github.com/BurntSushi/ripgrep](https://github.com/BurntSushi/ripgrep)
- Texlive - installed from system package manager
- The Silver Searcher (ag) Behavior and syntax are very close to GNU grep. [https://github.com/ggreer/the_silver_searcher](https://github.com/ggreer/the_silver_searcher)
- Vivaldi Browser - https://vivaldi.com/download/
- Vmware horizon client - https://customerconnect.vmware.com/en/downloads/info/slug/desktop_end_user_computing/vmware_horizon_clients/horizon_8?cd=1&hl=en&ct=clnk&gl=us
- Wine (windows emulation) - https://wiki.winehq.org/Download
- Zathura - pdf viewer - https://github.com/pwmt/zathura - installed from system package manager

## Apps within Apps ##

### neovim ###

- lazyvim distribution - https://www.lazyvim.org/

### emacs ###

- spacemacs distribution - https://www.spacemacs.org/

## Fonts ##

- Ubuntu Monospace [https://design.ubuntu.com/font](https://design.ubuntu.com/font)
- Nerd Font version of Ubuntu Monospace is Listed as UbuntuMono Nerd Font
  [https://www.nerdfonts.com/font-downloads](https://www.nerdfonts.com/font-downloads)

## Hardware considerations ##

- Printer HP Smart Tank 6000 Series

## Configurations and Tweaks ##

### Alacritty ###

#### Main Config from here ####

- [https://github.com/Widkidone/AlacrittyToml/blob/main/alacritty.toml](https://github.com/Widkidone/AlacrittyToml/blob/main/alacritty.toml)

#### Other interesting configs ####

- [https://github.com/sabinpocris/alacritty.toml/blob/main/alacritty.toml](https://github.com/sabinpocris/alacritty.toml/blob/main/alacritty.toml)
- [https://github.com/scalarwaves/dotfiles/blob/main/alacritty/alacritty.toml](https://github.com/scalarwaves/dotfiles/blob/main/alacritty/alacritty.toml)

Neovim does not work fully without a Nerd Font
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

Uncomment anything in dotspacemacs-configuration-layers and a few additions are
noted below in addition to the default listing

``` emacs-lisp
     ranger
     auto-completion
     better-defaults
     emacs-lisp
     git
     helm
     multiple-cursors
     spell-checking
     emoji
     markdown
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

After that section this section I add an app from MELPA

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

### Fish config ###

``` fish
function fish_user_key_bindings
    fish_vi_key_bindings
end
set TERM xterm-256color
set -Ua fish_user_paths /opt/nvim-linux64/bin $fish_user_paths
set -gx PATH $PATH /home/<username>/.local/bin
```

## contact me ##

If you have any interesting linux, text editor or technology related
information to share please let me know.

[Email Dave](mailto:david.rrrrrr@yandex.com?subject=Hello%20From%20[GitHub])
