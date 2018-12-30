# GNU utils installed with Homebrew
# https://apple.stackexchange.com/questions/69223/how-to-replace-mac-os-x-utilities-with-gnu-core-utilities
path_prepend /usr/local/opt/coreutils/libexec/gnubin
MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"

# Add PYTHONPATH before you actually start using virtual env
# PYDIR=$HOME/Documents/Code/work
# if [ -d "$PYDIR" ] && [[ ":$PYTHONPATH:" != *":$PYDIR:"* ]]; then
#     export PYTHONPATH=$PYDIR:$PYTHONPATH
# fi
