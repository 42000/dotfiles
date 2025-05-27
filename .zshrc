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

# Path to your Oh My Zsh installation.
# export ZSH="$HOME/.oh-my-zsh"
export EDITOR="nvim"
export VISUAL="nvim"
# ZSH_THEME="terminalparty"
# SOLARIZED_THEME="dark"

ENABLE_CORRECTION="true"
plugins=(
    git
    # zsh-autosuggestions
    # zsh-syntax-highlighting
    # fast-syntax-highlighting
    # zsh-autocomplete
)

# source $ZSH/oh-my-zsh.sh
bindkey -e

source $HOME/.zsh/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source $HOME/.zsh/zsh-autocomplete/zsh-autocomplete.plugin.zsh

# TAB KEYS + ENTER
bindkey              '^I'         menu-complete
bindkey "$terminfo[kcbt]" reverse-menu-complete
bindkey              '^I' menu-select
bindkey "$terminfo[kcbt]" menu-select
bindkey -M menuselect              '^I'         menu-complete
bindkey -M menuselect "$terminfo[kcbt]" reverse-menu-complete
bindkey -M menuselect '^M' .accept-line

setopt PROMPT_SUBST
PROMPT='%F{green} %%%f '
RPROMPT='%~ %B%F{blue}%m%b%f'

source <(fzf --zsh)
export QSYS_ROOTDIR="/home/tim/intelFPGA_lite/24.1std/quartus/sopc_builder/bin"

# User configuration

# bindkey -M menuselect              '^I'         menu-complete
# bindkey -M menuselect "$terminfo[kcbt]" reverse-menu-complete
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch $(uname -m)"

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# CA CEST NOUVEAU
# PATH="/home/tim/perl5/bin${PATH:+:${PATH}}"; export PATH;
# PERL5LIB="/home/tim/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
# PERL_LOCAL_LIB_ROOT="/home/tim/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
# PERL_MB_OPT="--install_base \"/home/tim/perl5\""; export PERL_MB_OPT;
# PERL_MM_OPT="INSTALL_BASE=/home/tim/perl5"; export PERL_MM_OPT;

