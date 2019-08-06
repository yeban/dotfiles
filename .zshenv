# Defines environment variables.

# Read zshrc files from ~/dotfiles
ZDOTDIR="$HOME/dotfiles"

# Ensure that a non-login, non-interactive shell has a defined environment.
# Taken from prezto's zshenv
if [[ ( "$SHLVL" -eq 1 && ! -o LOGIN ) && -s "${ZDOTDIR:-$HOME}/.zprofile" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprofile"
fi

# Are we running under ssh?
if [ -n "$SSH_CLIENT" ] || [ -n "$SSH_TTY" ]; then
  SESSION_TYPE="ssh"
else
  case $(ps -o comm= -p $PPID) in
    sshd|*/sshd) SESSION_TYPE=ssh;;
  esac
fi

# Editor command.
export EDITOR='o'
