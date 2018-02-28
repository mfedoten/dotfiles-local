# set PATH so it includes user's private bin directories
path_prepend $HOME/bin
path_prepend $HOME/.local/bin

# Anaconda
path_prepend $HOME/anaconda/bin

# SonarLint
path_append /opt/sonarlint-cli-2.1.0.566/bin

# Add PYTHONPATH before you actually start using virtual env
PYDIR=/home/mariia/Documents/Code/DataScience
if [ -d "$PYDIR" ] && [[ ":$PYTHONPATH:" != *":$PYDIR:"* ]]; then
    export PYTHONPATH=$PYDIR:$PYTHONPATH
fi

# Pyenv stuff
# export PATH="/home/mariia/.pyenv/bin:$PATH"
# eval "$(pyenv init -)"
# eval "$(pyenv virtualenv-init -)"
