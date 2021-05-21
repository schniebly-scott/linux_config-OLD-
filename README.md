<h1>README.md</h1>
This file will show how to manually install the dependencies required for my config.

##############################################################
                     <h3>zsh/p10k</h3>
                     credit to Chris Titus
                     https://christitus.com/zsh/
##############################################################
Packages needed before you start:

zsh - ZSH Shell
zsh-syntax-highlighting - syntax highlighting for ZSH in standard repos
autojump - jump to directories with j or jc for child or jo to open in file manager
zsh-autosuggestions - Suggestions based on your history

code:
  touch "$HOME/.cache/zshhistory"
  #-- Setup Alias in $HOME/zsh/aliasrc
  git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
  echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >> ~/.zshrc
