#
envfile="${HOME}/.gpg-agent-info"
if [ -f "${envfile}" ] && kill -0 $(grep GPG_AGENT_INFO "$envfile" | cut -d: -f 2) 2>/dev/null
then
  . "${envfile}"
  export GPG_AGENT_INFO
  export SSH_AUTH_SOCK
else
  if command -v gpg-connect-agent >/dev/null;
  then
    gpg-connect-agent /bye
  else
    if command -v gpg-agent >/dev/null;
    then
      eval $(gpg-agent --daemon --write-env-file "${envfile}")
    fi
  fi
fi

# Gnu GPG vim
export GPG_TTY=$(tty)
