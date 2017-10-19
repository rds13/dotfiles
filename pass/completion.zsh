if type _pass > /dev/null 2>&1; then
  # Load the custom .*-team I have
  for i in ~/.*-team; do
    [ -e $i/.load.zsh ] && fpath=($i $fpath) && source $i/.load.zsh
  done
fi
