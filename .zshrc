#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#   Anurag Priyam <a.priyam@icloud.com>
#

# Indicate that we are running inside a 256 colour terminal.
export TERM="xterm-256color"

# Source Prezto
if [[ -s "${ZDOTDIR:-$HOME}/prezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/prezto/init.zsh"
fi

# Enable iTerm shell integration
# test -e "${HOME}/.iterm2_shell_integration.zsh" && \
#  source "${HOME}/.iterm2_shell_integration.zsh"

# Change behaviour of the `e` alias: send files
# to the running gvim server.
export VISUAL="gvim --remote-tab-wait-silent"

alias du="du -hs"

echo $ZDOTDIR
