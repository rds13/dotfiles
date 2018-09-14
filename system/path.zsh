#
export PATH="$HOME/bin:$DOTS/bin:/usr/local/bin:/usr/local/sbin:$PATH"
export MANPATH="/usr/local/man:$MANPATH"
if [ -d /usr/local/mysql ] ; then
  export PATH="/usr/local/mysql/bin:$PATH"
  export MANPATH="/usr/local/mysql/man:$MANPATH"
fi
HB=$(brew --prefix)
if [ -d "${HB}/opt/gnupg@2.0/bin" ] ; then
  export PATH="${HB}/opt/gnupg@2.0/bin:$PATH"
fi
if [ -d "${HB}/opt/gpg-agent/bin" ] ; then
  export PATH="${HB}/opt/gpg-agent/bin:$PATH"
fi
# See https://docs.brew.sh/Homebrew-and-Python.html
if [ -d "${HB}/opt/python/libexec/bin" ] ; then
  export PATH="${HB}/opt/python/libexec/bin:$PATH"
fi
