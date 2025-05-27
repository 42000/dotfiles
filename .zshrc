alias vim='nvim'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias wifi='source ~/shellScripts/.wifihelp.sh'
alias proxy='source ~/shellScripts/.proxyhelp.sh'
alias unset_proxy='unset https_proxy && unset http_proxy && unset ftp_proxy'
# alias kb_layout='feh /home/glutus/Pictures/kbMax.png'
alias waybar_reset='killall waybar && waybar & disown'
alias fz="fzf --preview 'bat --style=numbers --color=always --line-range :500 {}'"
function xOpen() { xdg-open $1 & disown}
alias xopen="xOpen"

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

export EDITOR="nvim"
export VISUAL="nvim"
bindkey -e

source $HOME/.zsh/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source $HOME/.zsh/zsh-autocomplete/zsh-autocomplete.plugin.zsh

# AUTOCOMPLETE TAB
bindkey              '^I'         menu-complete
bindkey "$terminfo[kcbt]" reverse-menu-complete
bindkey              '^I' menu-select
bindkey "$terminfo[kcbt]" menu-select
bindkey -M menuselect              '^I'         menu-complete
bindkey -M menuselect "$terminfo[kcbt]" reverse-menu-complete

# AUTOCOMPLETE ^HJKL
# bindkey              '^k'         menu-select
# bindkey              '^l'         menu-select
bindkey              '^j'         menu-select
# bindkey              '^h'         menu-select
bindkey -M menuselect              '^j'         down-history
bindkey -M menuselect              '^k'         up-history
bindkey -M menuselect              '^h'         backward-char
bindkey -M menuselect              '^l'         forward-char
bindkey -M menuselect '^@' accept-line

# AUTOCOMPLETE ENTER
bindkey -M menuselect '^M' .accept-line

setopt PROMPT_SUBST
PROMPT='%F{green} %%%f '
RPROMPT='%~ %B%F{blue}%m%b%f'

source <(fzf --zsh)
export QSYS_ROOTDIR="/home/tim/intelFPGA_lite/24.1std/quartus/sopc_builder/bin"
