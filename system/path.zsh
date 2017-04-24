#
export PATH="$HOME/bin:$DOTS/bin:/usr/local/bin:/usr/local/sbin:$PATH"
export MANPATH="/usr/local/man:$MANPATH"
if [ -d /usr/local/mysql ] ; then
  export PATH="/usr/local/mysql/bin:$PATH"
  export MANPATH="/usr/local/mysql/man:$MANPATH"
fi
