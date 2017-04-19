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
