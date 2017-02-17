#
# Mac OS
if [[ "$OSTYPE" =~ ^darwin ]]
then
  # Use Current JDK
  export PATH="/Library/Frameworks/JavaVM.framework/Versions/Current/Commands:$PATH"
fi
