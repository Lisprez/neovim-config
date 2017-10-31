# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

ZSH_THEME="cloud_kris"

plugins=(git laravel4 composer symfony2 zshmarks zsh-autosuggestions docker-compose z)

source $ZSH/oh-my-zsh.sh
. ~/z.sh

alias c7='sudo chmod -R 777'
alias rma='sudo rm -rf'
alias cw='compass watch'
alias gw='grunt watch'
alias install='sudo apt-get install'
alias search='sudo apt-cache search'
alias purge='sudo apt-get purge'
alias dl='cd ~/Downloads'
alias c7="sudo chmod -R 777"
alias r7="sudo rm -rf"
alias l="ls -l"
alias c="clear"
alias cp="cp -r"
alias t="phpunit"
alias npm-exec='PATH=$(npm bin):$PATH'
alias www="cd /var/www"
alias code="cd ~/code"
alias vup="vagrant up"
alias vssh="vagrant ssh"
alias stv="vboxmanage list runningvms | sed -r 's/.*\{(.*)\}/\1/' | xargs -L1 -I {} VBoxManage controlvm {} savestate && sudo shutdown -h now"
alias str="vboxmanage list runningvms | sed -r 's/.*\{(.*)\}/\1/' | xargs -L1 -I {} VBoxManage controlvm {} savestate && sudo shutdown -r now"

export PATH=$PATH:/usr/local/go/bin
export EDITOR=nvim
# use ctrl+t to toggle autosuggestions(hopefully this wont be needed as
# zsh-autosuggestions is designed to be unobtrusive)
bindkey '^t' autosuggest-execute
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=6'

export NVM_DIR="/home/kristijan/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[ -z "$TMUX" ] && exec tmux

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
