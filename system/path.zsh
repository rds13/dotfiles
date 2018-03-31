#
export PATH="$HOME/bin:$DOTS/bin:/usr/local/bin:/usr/local/sbin:$PATH"
export MANPATH="/usr/local/man:$MANPATH"
if [ -d /usr/local/mysql ] ; then
  export PATH="/usr/local/mysql/bin:$PATH"
  export MANPATH="/usr/local/mysql/man:$MANPATH"
fi
if [ -d "/opt/boxen/homebrew/opt/gnupg@2.0/bin" ] ; then
  export PATH="/opt/boxen/homebrew/opt/gnupg@2.0/bin:$PATH"
fi
if [ -d "/opt/boxen/homebrew/opt/gpg-agent/bin" ] ; then
  export PATH="/opt/boxen/homebrew/opt/gpg-agent/bin:$PATH"
fi
# See https://docs.brew.sh/Homebrew-and-Python.html
if [ -d "/opt/boxen/homebrew/opt/python/libexec/bin" ] ; then
  export PATH="/opt/boxen/homebrew/opt/python/libexec/bin:$PATH"
fi
