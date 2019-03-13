echoerr() {
  >&2 echo -e "\033[0;31m$1\033[0m"
}

ensure_ruby_install_setup() {
  #set_ruby_install_env
  brew list|grep ruby-install >  /dev/null
  if [ "$?" != "0" ]; then
    brew install ruby-install
  fi
}
