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
            - [Main Config from here:](#main-config-from-here)
            - [Other interesting configs:](#other-interesting-configs)
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

- Adobe DNG Convertor (windows app run through emulation on wine)
- Alacritty terminal emulator (installed from snap) - neovim seems to works better in terminal emulators like Alacritty or Kitty.
- Audacity - sound editor downloaded an app image last time
- Emacs
- Espeak
- FD find entries on your file system [https://github.com/sharkdp/fd](https://github.com/sharkdp/fd)
- Fish
- GIMP
- Geeqie - fast image viewer including raw files
- Handbrake
- MEGA (online backup)
- Mbsync
- Microsoft Edge Browser
- Neovim
- Newsboat
- Notmuch
- Opera Browser
- Python
- Rename
- Ripgrep (rg) Has some similarities to grep, but also includes its own defaults and optimizations that make it behave slightly differently in some cases. [https://github.com/BurntSushi/ripgrep](https://github.com/BurntSushi/ripgrep)
- The Silver Searcher (ag) Behavior and syntax are very close to GNU grep. [https://github.com/ggreer/the_silver_searcher](https://github.com/ggreer/the_silver_searcher)
- Vivaldi Browser
- Vmware horizon client
- Wine (windows emulation)
- Zathura - pdf viewer

## Apps within Apps ##

### neovim ###

- lazyvim distribution

### emacs ###

- greader
- notmuch
- spacemacs distribution

## Fonts ##

- Source Code Pro ttf
- SauceCodePro Nerd Font ttf

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
family = "SauceCodePro Nerd Font"
style = "Bold"

[font.bold_italic]
family = "SauceCodePro Nerd Font"
style = "Bold Italic"

[font.italic]
family = "SauceCodePro Nerd Font"
style = "Italic"

[font.normal]
family = "SauceCodePro Nerd Font"
style = "Regular"
```

### Spacemacs ###

#### Section 1 ####

Uncomment anything in dotspacemacs-configuration-layers and a few additions are noted below in addition to the default listing

``` emacs-lisp
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
```

#### Section 2 ####

After that section this section I add an app from MELPA

``` emacs-lisp
dotspacemacs-additional-packages '(
                                      greader
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
  ;; Make evil-mode up/down operate in screen lines instead of logical lines
  (define-key evil-motion-state-map "j" 'evil-next-visual-line)
  (define-key evil-motion-state-map "k" 'evil-previous-visual-line)
  ;; Also in visual mode
  (define-key evil-visual-state-map "j" 'evil-next-visual-line)
  (define-key evil-visual-state-map "k" 'evil-previous-visual-line)
  ;; For python
  (add-hook 'python-mode-hook #'(lambda () (modify-syntax-entry ?_ "w")))
)
```

#### Section 4 ####

After that section is this section where I set a variable for greader and I add a custom function that wraps http links so that the link has both the [] and () for markdown files. Otherwise when I am in format checkers it throws an error for urls that are not in the right format.

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
set -gx PATH $PATH /home/<myusername>/.local/bin
```
## contact me ##

If you have any interesting linux, text editor or technology related information to share please let me know.

[Email Dave](mailto:david.rrrrrr@yandex.com?subject=Hello%20From%20[GitHub])
