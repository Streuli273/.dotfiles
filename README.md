# .dotfiles
riced i3wm dotfiles

###setup for new install:
```bash
$ git clone https://github.com/Streuli273/.dotfiles.git
$ cd .dotfiles
$ sudo chmod +x link.sh setzshenv.sh
$ sudo ./setzshenv.sh
$ ./link.sh
```

####setzshenv.sh
adds `export ZDOTDIR=$HOME/.config/zsh` to `/etc/zsh/zshenv` so zsh dotfiles can be kept in `~/.config/zsh`

**must run as root**

####link.sh
sets symlinks of `.config` and `.xinitrc` to `~`
