zsh-pipenv-shell-activate() {
  if [ ! "$(command -v pipenv)" ]; then
    echo "Install http://docs.pipenv.org/en/latest/ to use this plugin." > /dev/stderr
    return 1
  fi

  if [ -e "$(pwd)/Pipfile" ]; then
    if [ ! "$PIPENV_ACTIVE" ]; then
      pipenv shell
    fi
  fi  
}

# Add activate to change pwd functions
chpwd_functions+=(zsh-pipenv-shell-activate)

# enable pipenv tab completion
eval "$(pipenv --completion)"
