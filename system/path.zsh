#
export PATH="$HOME/bin:/usr/local/bin:/usr/local/sbin:$DOTS/bin:$PATH"
export MANPATH="/usr/local/man:/usr/local/git/man:$MANPATH"
if [ -d /usr/local/mysql ] ; then
  export PATH="/usr/local/mysql/bin:$PATH"
  export MANPATH="/usr/local/mysql/man:$MANPATH"
fi
