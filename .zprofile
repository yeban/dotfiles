# Executes commands at login pre-zshrc.

# Source prezto's zprofile
if [[ -s "${ZDOTDIR:-$HOME}/prezto/runcoms/zprofile" ]]; then
  source "${ZDOTDIR:-$HOME}/prezto/runcoms/zprofile"
fi

# Override prezto

#export EDITOR='o'
export EDITOR='vim'
export VISUAL='vim'

export LESS='-F -g -i -M -R -S -w -X -z-4'
