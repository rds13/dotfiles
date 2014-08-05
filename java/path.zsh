#
# Mac OS
if [ "$(uname -s)" = "Darwin" ]
then
  # Use Current JDK
  export PATH="/Library/Frameworks/JavaVM.framework/Versions/Current/Commands:$PATH"
fi
