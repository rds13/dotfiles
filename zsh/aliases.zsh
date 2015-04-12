alias reload!='. ~/.zshrc'

if [[ "$(uname -s)" == "Darwin" ]]
then
  # http://hints.macworld.com/comment.php?mode=view&cid=131169
  # See how long a given process has been running
  alias psup='_() { ps acxo etime,command | grep -i -- "$1"; }; _'
fi
