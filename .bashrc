#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

alias nf='neofetch'
alias sc='source ~/.bashrc'
alias p='sudo pacman -S'
alias bct='brightnessctl set'
alias sdn='shutdown -h now'
ww() {
    feh --bg-scale ~/Pictures/"$1"
}


export PATH="$HOME/.local/bin:$PATH"
eval "$(zoxide init bash)"
