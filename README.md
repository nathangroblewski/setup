# Setup
Repo for terminal setup and plugins

## Terminal
Install [Iterm 2](https://iterm2.com) and [pick a theme](https://iterm2colorschemes.com/)

## Utilities
1. `brew install jq` - for json parsing
2. Install [Boop](https://github.com/IvanMathy/Boop)

## Zsh

### Setup

1. Add [oh-my-zsh](https://ohmyz.sh/#install)
2. Clone/Install [powerline-fonts](https://github.com/powerline/fonts)
3. Update Iterm2 to [use powerline fonts](https://stackoverflow.com/questions/42271657/oh-my-zsh-showing-weird-character-on-terminal)
4. Update .zshrc and ensure plugins are correct
5. If running on OSX [add macos to plugins](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/macos)
### Plugins

Install for use with `oh-my-zsh`
   * [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md)
   * [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md)

Check for any language specific [plugins](https://github.com/ohmyzsh/ohmyzsh/wiki/Plugins) you might want.

### Themes
   * Add [Powerlevel10k](https://github.com/romkatv/powerlevel10k) for `oh-my-zsh` - To Change configuration run `p10k configure`

## Bash

* [bash-git-prompt](https://github.com/magicmonty/bash-git-prompt)  
* [repository manager](https://github.com/mixu/gr)
* `brew install bash-completion`
      * add to bash_profile using `echo "[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion" >> ~/.bash_profile`
