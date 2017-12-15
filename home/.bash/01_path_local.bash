# GNU utils installed with Homebrew
# https://apple.stackexchange.com/questions/69223/how-to-replace-mac-os-x-utilities-with-gnu-core-utilities
path_prepend /usr/local/opt/coreutils/libexec/gnuman
path_prepend /usr/local/opt/coreutils/libexec/gnubin

# Python
path_prepend $HOME/anaconda/bin
# Add PYTHONPATH before you actually start using virtual env
PYDIR=/home/mariia/Documents/Code/work
if [ -d "$PYDIR" ] && [[ ":$PYTHONPATH:" != *":$PYDIR:"* ]]; then
    export PYTHONPATH=$PYDIR:$PYTHONPATH
fi
