#
if [ -f "${HOME}/.gpg-agent-info" ]
then
  . "${HOME}/.gpg-agent-info"
  export GPG_AGENT_INFO
  export SSH_AUTH_SOCK
else
  $(which gpg-agent >/dev/null)
  if [ $? -eq 0 ]
  then
    eval $(gpg-agent --daemon --write-env-file "${HOME}/.gpg-agent-info")
  fi
fi

# Gnu GPG vim
export GPG_TTY=$(tty)
