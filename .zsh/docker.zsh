os=`uname`
if [[ $os == 'Darwin' ]]; then
  export DOCKER_HOST=tcp://192.168.99.100:2376
  export DOCKER_CERT_PATH=$HOME/.docker/machine/machines/default
  export DOCKER_TLS_VERIFY=1
fi
