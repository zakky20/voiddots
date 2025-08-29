# ▒███████▒  ██████  ██░ ██ 
# ▒ ▒ ▒ ▄▀░▒██    ▒ ▓██░ ██▒
# ░ ▒ ▄▀▒░ ░ ▓██▄   ▒██▀▀██░
#   ▄▀▒   ░  ▒   ██▒░▓█ ░██ 
# ▒███████▒▒██████▒▒░▓█▒░██▓
# ░▒▒ ▓░▒░▒▒ ▒▓▒ ▒ ░ ▒ ░░▒░▒
# ░░▒ ▒ ░ ▒░ ░▒  ░ ░ ▒ ░▒░ ░

# Oh My Zsh
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git zsh-completions zsh-autosuggestions fast-syntax-highlighting)
fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src
autoload -U compinit && compinit
source "$ZSH/oh-my-zsh.sh"

# Export Colors, Editor, Man & Vim in term
export PATH="$HOME/.cargo/bin:$PATH"
export TERM="xterm-256color"
export EDITOR="nvim"
bindkey -v
setopt PROMPT_SUBST

# Path For .config
if [ -z "$XDG_CONFIG_HOME" ] ; then
    export XDG_CONFIG_HOME="$HOME/.config"
fi

# Path For .cache
if [ -z "$XDG_CACHE_HOME" ] ; then
    export XDG_CACHE_HOME="$HOME/.cache"
fi

# Countdown
cdown () {
    N=$1
  while [[ $((--N)) -gt  0 ]]
    do
        echo "$N" |  figlet -c | lolcat &&  sleep 1
    done
}

# Function extract for common file formats
SAVEIFS=$IFS
IFS=$(echo -en "\n\b")

# Don't Delete
[[ $- != *i* ]] && return

# FastFetch
fastfetch

# Prompt
# prompt_dir() {
#   if [[ $PWD == $HOME ]]; then
#     echo "home"
#   else
#     basename "$PWD"
#   fi
# }
#
# PROMPT='%F{cyan}@zakky%f %F{blue}%f %F{blue}$(prompt_dir)%f '

# Prompt
PS1='%F{blue} %F{white}%~ %F{cyan}>>%f '
# PS1='%F{cyan}%n%f %F{blue}%~%f ❯ '
# PS1="%B%{$fg[blue]%}[%{$fg[white]%}%n%{$fg[green]%}@%{$fg[white]%}%M %{$fg[blue]%}%~%{$fg[blue]%}]%{$reset_color%}$%b ";  # Classic

# Evals
# eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
eval "$(fzf --zsh)"

# Package Manager Aliases
alias xi="sudo xbps-install -Sy"
alias xr="sudo xbps-remove"
alias xu="sudo xbps-install -Su"
alias xq="sudo xbps-query -Rs"

# Eza
alias ls="eza --color=always --icons=always"
alias la="eza -a --color=always --group-directories-first"
alias ll="eza -l --color=always --group-directories-first"
alias lt="eza -aT --color=always --group-directories-first"
alias l.="eza -al --color=always --group-directories-first ../"
alias l..="eza -al --color=always --group-directories-first ../../"
alias l...="eza -al --color=always --group-directories-first ../../../"

# Ps
alias psa="ps auxf"
alias psgrep="ps aux | grep -v grep | grep -i -e VSZ -e"
alias psmem="ps auxf | sort -nr -k 4"
alias pscpu="ps auxf | sort -nr -k 3"

# Df, Free, Grep better
alias df="df -h"               
alias free="free -m"           
alias grep="grep --color=auto"

# Zoxide instead of cd 
alias cd="z"

# Clear
alias c="clear"

# Neovim To Vim
alias vim="nvim"

# FastFetch
alias ff="fastfetch"

# Compiling Alias
alias smi="sudo make install"

# Lutgen - Nord
alias lutap="lutgen apply --palette nord"

# Spicetify
export PATH=$PATH:/home/zakky/.spicetify

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
