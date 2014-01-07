export PATH="./bin:$HOME/bin:/usr/local/bin:/usr/local/sbin:$DOTS/bin:$PATH"
export MANPATH="/usr/local/man:/usr/local/git/man:$MANPATH"
if [ -d /usr/local/mysql ] ; then
  export PATH=/usr/local/mysql/bin:$PATH
  export MANPATH="/usr/local/mysql/man:$MANPATH"
fi

#
# Mac OS
if [ "$(uname -s)" = "Darwin" ]
then
  # Use JDK 1.6
  export PATH=/System/Library/Frameworks/JavaVM.framework/Versions/1.6.0/Commands:$PATH
fi
