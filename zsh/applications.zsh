# from http://www.iterm2.com/#/section/documentation/shell_tips
if [[ "$(uname -s)" == "Darwin" ]]
then
  compctl -f -x 'p[2]' -s "`/bin/ls -d1 /Applications/*/*.app /Applications/*.app | sed 's|^.*/\([^/]*\)\.app.*|\\1|;s/ /\\\\ /g'`" -- open
  alias run='open -a'
fi
