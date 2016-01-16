# dotfiles

My personal configurations for Arch Linux.

## Installation

Your can use following script to install all configurations.
However, because this repository contains many personal settings, installing directly may cause some problems.
I recommend you to use this repository as a reference to create your own configurations.

```shell
git clone --recursive https://github.com/zlsun/dotfiles.git
cd dotfiles && ./install
```

## Screenshots

![](http://i.imgur.com/hqyqIHg.png)
\* You can find the wallpaper [here](https://www.reddit.com/r/i3wm/comments/3hqkst/solarized_i3_wallpaper_1080p/).
![](http://i.imgur.com/WkgDF10.png)

## Configurations Structure

### Shell

[Zsh](http://www.zsh.org)
- [files/zshrc](files/zshrc)
    - [files/dircolors](files/dircolors)
- [files/zshrc.mini](files/zshrc.mini)
- [files/zshenv](files/zshenv)

[tmux](https://tmux.github.io)
- [files/tmux.config](files/tmux.config)

[FbTerm](https://code.google.com/p/fbterm)
- [files/fbtermrc](files/fbtermrc)

### Editor

[Vim](http://www.vim.org)
- [files/vimrc](files/vimrc)
- [files/vimrc.mini](files/vimrc.mini)

### Version Control

[Git](https://git-scm.com)
- [files/gitconfig](files/gitconfig)
- [config/git/gitk](config/git/gitk)

### Windows Manager

[i3](https://i3wm.org)
- [files/i3/](files/i3/)

[i3blocks](https://github.com/vivien/i3blocks)
- [config/i3blocks/](config/i3blocks/)
    - [files/bin/i3blocks-datetime](files/bin/i3blocks-datetime)
    - [files/bin/i3blocks-mpd](files/bin/i3blocks-mpd)
    - [files/bin/i3blocks-net-speed](files/bin/i3blocks-net-speed)
    - [files/bin/i3blocks-volume](files/bin/i3blocks-volume)

### Notify Daemon

[dunst](http://knopwob.org/dunst/index.html)
- [config/dunst/](config/dunst/)

### [Rofi](https://davedavenport.github.io/rofi/)

[clerk](https://github.com/carnager/clerk)
- [config/clerk/](config/clerk/)

[rofi-surfraw](https://github.com/carnager/rofi-scripts/tree/master/rofi-surfraw)
- [config/rofi-surfraw/](config/rofi-surfraw/)
- [config/surfraw/](config/surfraw/)

[rofi-pass](https://github.com/carnager/rofi-pass)
- [config/rofi-pass/](config/rofi-pass/)

### X Window System

[X11](http://www.x.org)
- [files/xinitrc](files/xinitrc)
- [files/xprofile](files/xprofile)
- [files/Xresources](files/Xresources)

[GTK](http://www.gtk.org)
- [files/gtkrc-2.0](files/gtkrc-2.0)

### Applications

#### Terminal Emulator

[Terminator](http://gnometerminator.blogspot.com/p/introduction.html)
- [config/terminator/](config/terminator/)

#### File Manager

[ranger](http://ranger.nongnu.org)
- [config/ranger/](config/ranger/)

#### Music Player

[MPD](http://www.musicpd.org)
- [config/mpd/](config/mpd/)

[PMS](https://ambientsound.github.io/pms/)
- [config/pms/](config/pms/)

#### Document Reader

[zathura](https://pwmt.org/projects/zathura/)
- [config/zathura/](config/zathura/)

#### Others

[gimplecal](http://dmedvinsky.github.io/gsimplecal/)
- [config/gsimplecal/](config/gsimplecal/)

### Misc

[Artistic Style](http://astyle.sourceforge.net/)
- [files/astylerc](files/astylerc)

## License

[MIT License](LICENSE)

