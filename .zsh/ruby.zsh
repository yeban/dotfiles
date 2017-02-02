# Provide ruby-install and chruby.

# NOTE:
#   Use --no-install-deps option of ruby-install if installing on a machine
#   without root access.
export PATH="$HOME/.zsh/bundle/ruby-install/bin:$PATH"

source "$HOME/.zsh/bundle/chruby/share/chruby/chruby.sh"
source "$HOME/.zsh/bundle/chruby/share/chruby/auto.sh"
export PATH="$HOME/.zsh/bundle/chruby/bin:$PATH"
