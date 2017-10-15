
# vis
export TERM=xterm-color
alias prom_test='PS1="\h:\W\$ "'
alias prom_reset='PS1="\h:\W \u\$ "'



# use
alias ls="ls -G"
alias l="ls"
alias la="ls -a"
alias ll="ls -l"

alias emacs=vim

# rbenv
eval "$(rbenv init -)"
export PATH="$HOME/.cargo/bin:$PATH"

# rust
source $HOME/.cargo/env

