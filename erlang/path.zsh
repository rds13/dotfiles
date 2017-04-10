#
# Mac OS
if [[ "$OSTYPE" =~ ^darwin ]]
then
  if [[ -d "${HOME}/.erlangInstaller/19.3" ]]
  then
    export PATH="${HOME}/.erlangInstaller/19.3/bin:$PATH"
  fi
fi
