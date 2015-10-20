# use .localrc for SUPER SECRET CRAP that you don't
# want in your public, versioned repo.
[[ -a "${HOME}/.localrc" ]] && source "${HOME}/.localrc"

# shortcut to this dotfiles path is $DOTS
export DOTS="${HOME}/.dotfiles"

# shortcut to this secfiles path is $SECS
export SECS="${HOME}/.secfiles"

# your project folder that we can `c [tab]` to
export PROJETS="${HOME}/Projets"

[[ -a /opt/boxen/env.sh ]] && source /opt/boxen/env.sh

# all of our zsh files
typeset -U config_files
config_files=($DOTS/**/*.zsh)
[[ -d "${SECS}" ]] && config_files=($config_files $SECS/**/*.zsh)

# load the path files
for file in ${(M)config_files:#*/path.zsh}
do
  [[ -a ~/.debug ]] && echo $file
  source $file
done

# load everything but the path and completion files and this file !
for file in ${${${config_files:#*/path.zsh}:#*/completion.zsh}#*/myconfig.zsh}
do
  [[ -a ~/.debug ]] && echo $file
  source $file
done

# initialize autocomplete here, otherwise functions won't be loaded
#autoload -U compinit
#compinit

# load every completion after autocomplete loads
for file in ${(M)config_files:#*/completion.zsh}
do
  [[ -a ~/.debug ]] && echo $file
  source $file
done

unset config_files
