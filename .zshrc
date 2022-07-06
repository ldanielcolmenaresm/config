if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

# Plugins -----------------------------------------------------------
#source $HOME/plugins_custom_zsh/F-Sy-H.plugin.zsh
#source $HOME/plugins_custom_zsh/command-time.plugin.zsh
#source $HOME/plugins_custom_zsh/web-search.plugin.zsh
#source $HOME/plugins_custom_zsh/zsh-history-substring-search.plugin.zsh
# -------------------------------------------------------------------

plugins=(git)

source $ZSH/oh-my-zsh.sh

setopt histignorealldups sharehistory
setopt GLOB_DOTS

### ALIASES ###
alias p='ping 8.8.8.8'
alias q=exit

alias v='nvim ./'
alias vim='nvim'
alias t='tmux new -s local'
alias e='ranger'

alias temp='watch sensors' #download fedora lm_sensors

# SETINGS
alias vv='nvim $HOME/.config/nvim/init.vim'
alias vbsp='nvim $HOME/.config/bspwm'
alias vz='nvim $HOME/.zshrc'
alias sz='source ~/.zshrc'

alias docs=' cd /run/media/$USER/dataBackup/'
alias js='$HOME/Documentos/runjs-2.2.2/runjs&! q'

alias dolar='node ~/workspace/projects/webScraping/dolar_today/src/index.js'

# ls cat
alias cat='/bin/bat'
alias catn='/bin/cat'
alias catnl='/bin/bat --paging=never'
alias ls='lsd --group-dirs=first'
alias la='lsd -a --group-dirs=first'
alias ll='lsd -lh --group-dirs=first'
alias l='lsd -lha --group-dirs=first'
alias l1='ls -1'


alias yd='youtube-dl '
alias yda='youtube-dl --extract-audio'


alias .editor='
editor () {
 echo "
root = true
[*]
charset = utf-8
indent_size = 4
indent_style = space
end_of_line = lf
insert_final_newline = true
trim_trailing_whitespace = true
[*.{js,ts,jsx,tsx}]
indent_style = space
indent_size = 2
[package.json]
indent_size = 2
[*.md]
trim_trailing_whitespace = false " > .editorconfig
}
editor &&  cat .editorconfig
'

ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1   ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *.deb)       ar x $1      ;;
      *.tar.xz)    tar xf $1    ;;
      *.tar.zst)   tar xf $1    ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}


source ~/powerlevel10k/powerlevel10k.zsh-theme
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
