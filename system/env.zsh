# Only set this if we haven't set $EDITOR up somewhere else previously.
if [[ "$EDITOR" == "" ]]
then
  # Use vim for my editor if available
  if  command -v vim >/dev/null
  then
    export EDITOR='vim'
  else
    export EDITOR='vi'
  fi
fi

# Mac OS
if [[ "$OSTYPE" =~ ^darwin ]]
then
  # To look for local package BEFORE system packages
#  export PYTHONPATH=/Library/Python/2.7/site-packages:$PYTHONPATH

  # asciidoc xml catalog
  if [ -d /usr/local/homebrew ]
  then
    export XML_CATALOG_FILES=/usr/local/homebrew/etc/xml/catalog
    export GRAPHVIZ_DOT=/usr/local/homebrew/bin/dot
  else
    export XML_CATALOG_FILES=/etc/xml/catalog
  fi
fi
