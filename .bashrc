#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

test -r "~/.dir_colors" && eval $(dircolors ~/.dir_colors)

# Install Ruby Gems to ~/.local/gems
export GEM_HOME="$HOME/.local/gems"
export PATH="$HOME/.local/gems/bin:$PATH"
export GEM_HOME="$(ruby -e 'puts Gem.user_dir')"
export PATH="$PATH:$GEM_HOME/bin"
