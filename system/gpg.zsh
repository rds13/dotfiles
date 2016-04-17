#
if [ -f "${HOME}/.gpg-agent-info" ]
then
  . "${HOME}/.gpg-agent-info"
  export GPG_AGENT_INFO
  export SSH_AUTH_SOCK
else
  if test $(which gpg-agent)
  then
    eval $(gpg-agent --daemon --write-env-file "${HOME}/.gpg-agent-info")
  fi
fi

# Gnu GPG vim
export GPG_TTY=$(tty)
