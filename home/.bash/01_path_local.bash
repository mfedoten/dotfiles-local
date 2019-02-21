# set PATH so it includes user's private bin directories
path_prepend $HOME/bin
path_prepend $HOME/.local/bin

# Anaconda stuff
if [ -f "$HOME/anaconda/etc/profile.d/conda.sh" ]; then
    . $HOME/anaconda/etc/profile.d/conda.sh
    conda activate
fi

# Add PYTHONPATH before you actually start using virtual env
# pydir=/home/mariia/Documents/Code/DataScience
# if [ -d "$pydir" ] && [[ ":$PYTHONPATH:" != *":$pydir:"* ]]; then
#     export PYTHONPATH=$pydir:$PYTHONPATH
# fi
