# Executes commands at login post-zshrc.

# Source prezto's zlogin
if [[ -s "${ZDOTDIR:-$HOME}/prezto/runcoms/zlogin" ]]; then
  source "${ZDOTDIR:-$HOME}/prezto/runcoms/zlogin"
fi
