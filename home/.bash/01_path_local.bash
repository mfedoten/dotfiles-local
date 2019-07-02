# set PATH so it includes user's private bin directories
path_prepend $HOME/bin
path_prepend $HOME/.local/bin

# Anaconda stuff
if [ -f "$HOME/miniconda3/etc/profile.d/conda.sh" ]; then
    . $HOME/miniconda3/etc/profile.d/conda.sh
    conda activate
fi

# path_prepend $HOME/miniconda3/bin
# # Virtualenv wrapper stuff
# export WORKON_HOME=$HOME/code/.virtualenvs
# mkdir -p $WORKON_HOME
# source $HOME/miniconda3/bin/virtualenvwrapper.sh 2>/dev/null

# Add PYTHONPATH before you actually start using virtual env
# pydir=/home/mariia/Documents/Code/DataScience
# if [ -d "$pydir" ] && [[ ":$PYTHONPATH:" != *":$pydir:"* ]]; then
#     export PYTHONPATH=$pydir:$PYTHONPATH
# fi
