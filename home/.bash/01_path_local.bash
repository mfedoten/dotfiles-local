# set PATH so it includes user's private bin directories
path_prepend $HOME/bin
path_prepend $HOME/.local/bin

# SonarLint
path_append /opt/sonarlint-cli-2.1.0.566/bin

# Add PYTHONPATH before you actually start using virtual env
pydir=/home/mariia/Documents/Code/DataScience
if [ -d "$pydir" ] && [[ ":$PYTHONPATH:" != *":$pydir:"* ]]; then
    export PYTHONPATH=$pydir:$PYTHONPATH
fi

# Pyenv stuff
# export PATH="/home/mariia/.pyenv/bin:$PATH"
# eval "$(pyenv init -)"
# eval "$(pyenv virtualenv-init -)"
