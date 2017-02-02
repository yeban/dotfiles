os=`uname`
if [[ $os == 'Darwin' ]]; then
  eval "$(docker-machine env default 2> /dev/null)"
fi
