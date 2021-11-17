# Automatically list files after directory change.
typeset -ga chpwd_functions
autoload -U add-zsh-hook && {
  _ls_chpwd() {
    ls
  }
  add-zsh-hook chpwd _ls_chpwd
}
