<h1>README.md</h1>
This file will show how to manually install the dependencies required for my config.


## Table of Contents

* [Folders](#folders)
* [Symbolic Links](#symbolic-links)
* [GTK Theme](#gtk-theme)
* [Beep](#beep)
* [Zsh/P10k](#zsh-and-p10k)


## Folders
Create folders in your `$HOME` named:
* `.scripts`
* `.resources`
* `.themes`

## Symbolic Links
**Vim**:
`ln -s .config/vimrc .vimrc`

**Zsh**:
`ln -s .config/zshrc .zshrc`

## GTK Theme
Extract the zip into .themes:
[EliverLara/Ant](https://github.com/EliverLara/Ant)

## Beep
Insert `set bell-style none` into `/etc/inputrc`

## Zsh and p10k
<h5>credit to Chris Titus</h5>
<h5>https://christitus.com/zsh/</h5>


Packages needed before you start:
* **zsh** - ZSH Shell
* **zsh-syntax-highlighting** - syntax highlighting for ZSH in standard repos
* **autojump** - jump to directories with `j` or `jc` for child or `jo` to open in file manager 
* **zsh-autosuggestions** - Suggestions based on your history

code:
  ```sh
  touch "$HOME/.cache/zshhistory"
  #-- Setup Alias in $HOME/zsh/aliasrc
  git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.resources/powerlevel10k
  ```

Then set zsh to your default with:
  ```sh
  chsh $USER
  ```
Then type `/bin/zsh`

