#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias dotfiles='/usr/bin/git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'

PROMPT_COMMAND='PS1_CMD1=$(git branch --show-current 2>/dev/null)'
PS1='\[\e[36m\]\W\[\e[0m\]${PS1_CMD1:+ \[\e[32m\]${PS1_CMD1}\[\e[0m\]} \[\e[36m\]\[\e[0m\] '

export EDITOR='nvim'
export VISUAL='nvim'
export PATH="/home/ravi/.cargo/bin:$PATH"
