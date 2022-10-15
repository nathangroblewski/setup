# Setup
My Mac Setup

Begin by installing [Iterm 2](https://iterm2.com) and then [pick a theme](https://iterm2colorschemes.com/)

## Base tools

### Install :coffee: [Homebrew](https://brew.sh/)

``` bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
### Install [nvm](https://tecadmin.net/install-nvm-macos-with-homebrew/) and Node

Remove current Node version and install `nvm`

``` bash
brew uninstall --ignore-dependencies node
brew uninstall --force node
brew install nvm
```

Create a home directory for `nvm`

``` bash
mkdir ~/.nvm
```

Update `.zshrc` to utilize nvm

``` bash
printf 'export NVM_DIR=~/.nvm\nsource $(brew --prefix nvm)/nvm.sh' >> ~/.zshrc && exec zsh
```

Use `nvm` to install `Node.js`

``` bash
nvm install node ## Install the latest version
nvm install 16   ## Alternatively install specific version (Node.js 16.X)
```

## Terminal setup

1. Add [oh-my-zsh](https://ohmyz.sh/#install)
2. Clone/Install [powerline-fonts](https://github.com/powerline/fonts)
3. Update Iterm2 to [use powerline fonts](https://stackoverflow.com/questions/42271657/oh-my-zsh-showing-weird-character-on-terminal)
4. Install [Powerlevel10k](https://github.com/romkatv/powerlevel10k#oh-my-zsh) for `oh-my-zsh` - To Change configuration run `p10k configure`
5. Update .zshrc and ensure plugins are correct
6.  If running on OSX [add macos to plugins](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/macos)

Install any additional plugins you might want for `oh-my-zsh`
   * [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md)
   * [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md)

:rocket: Check for any language or team specific [plugins](https://github.com/ohmyzsh/ohmyzsh/wiki/Plugins) you might want.


:cactus: Make sure to [choose a theme](https://github.com/ohmyzsh/ohmyzsh/wiki/Themes)

## Install Script

Run the install script to add the remaining `cli` and desktop tools

``` bash
## from root directory
./install-dev-tools.sh
```

## Additional Apps (Optional)
* [XCode command line tools](https://mac.install.guide/commandlinetools/3.html)
* [Boop](https://github.com/IvanMathy/Boop)
* [Bear Note](https://bear.app/)
* [Pyenv](https://github.com/pyenv/pyenv#homebrew-in-macos)
