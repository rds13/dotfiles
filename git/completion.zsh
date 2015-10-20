# Uses git's autocompletion for inner commands. Assumes an install of git's
# bash `git-completion` script at $completion below (this is where Homebrew
# tosses it, at least).
if [[ "$OSTYPE" =~ ^darwin ]]
then
  completion='$(brew --prefix)/share/zsh/site-functions/_git'

  [[ -a "$completion" ]] && source "$completion"
fi
