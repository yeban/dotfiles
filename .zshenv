# Defines environment variables.

# Read config files from ~/dotfiles
ZDOTDIR="$HOME/dotfiles"

# Source prezto's zshenv
if [[ -s "${ZDOTDIR:-$HOME}/prezto/runcoms/zshenv" ]]; then
  source "${ZDOTDIR:-$HOME}/prezto/runcoms/zshenv"
fi

# Are we running under ssh?
if [ -n "$SSH_CLIENT" ] || [ -n "$SSH_TTY" ]; then
  SESSION_TYPE="ssh"
else
  case $(ps -o comm= -p $PPID) in
    sshd|*/sshd) SESSION_TYPE=ssh;;
  esac
fi
