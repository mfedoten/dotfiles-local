# set PATH so it includes user's private bin directories
path_prepend $HOME/bin
path_prepend $HOME/.local/bin

# Anaconda stuff
if [ -f "$HOME/miniconda3/etc/profile.d/conda.sh" ]; then
    . $HOME/miniconda3/etc/profile.d/conda.sh
    conda activate
fi

# poetry
path_prepend $HOME/.poetry/bin:$PATH

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/opt/google-cloud-sdk/path.bash.inc' ]; then . '/opt/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/opt/google-cloud-sdk/completion.bash.inc' ]; then . '/opt/google-cloud-sdk/completion.bash.inc'; fi
