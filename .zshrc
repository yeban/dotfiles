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

# Ignore current directory and any ancestral directory from completion when
# path name contains '../'.
zstyle ':completion:*' ignore-parents 'parent pwd ..'

### Aliases
alias df='df -h'
alias du='du -hs'

# For sysadmin work (Linux only)
alias halt='sudo shutdown -h now'
alias reboot='sudo reboot'

# Yank (on Mac)
alias -g Y='| pbcopy'

# Expands to project root
alias -g R='$(git rev-parse --show-toplevel 2> /dev/null)'

# Automatically display system resource usage summary for commands that took
# more than 5s to run.
REPORTTIME=5

