# Only set this if we haven't set $EDITOR up somewhere else previously.
if [[ "$EDITOR" == "" ]] ; then
  # Use sublime for my editor.
  export EDITOR='subl'
fi
# Mac OS
if [ "$(uname -s)" = "Darwin" ]
then
  export XML_CATALOG_FILES=$(brew --prefix)/etc/xml/catalog
fi
# Gnu GPG vim
export GPG_TTY=`tty`

export JAVA_MAIL_SERVER="smtp.free.fr"
export PID_DIR=${HOME}/deveryflow
export LOG_DIR=${HOME}/deveryflow
export M2_HOME=/usr/share/maven
#
