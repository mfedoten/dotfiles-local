#!/usr/bin/env bash

# Ask for the administrator password upfront
sudo -v
# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &
# Exit the script if there's any error
set -e

ENV_NAME="dreem"
PRJ_DIR="$HOME/code/algo"

cd "$PRJ_DIR/dreemonpy"
echo -e "\n\033[1mCurrent directory is $PWD\033[0m"

echo -e "\n\033[1mCreating $ENV_NAME environment\033[0m"
python3 -m venv "$WORKON_HOME"/"$ENV_NAME"
source "$WORKON_HOME"/"$ENV_NAME"/bin/activate

echo -e "\n\033[1mInstalling requirements\033[0m"
python3 -m pip install -r ./dreemonpy/requirements.txt
python3 -m pip install -U numpy
python3 -m pip install -U matplotlib
python3 -m pip install jedi black flake8 ipython PyQt5
python3 -m pip install https://download.pytorch.org/whl/cpu/torch-1.0.1.post2-cp36-cp36m-linux_x86_64.whl
python3 -m pip install torchvision
cd $PRJ_DIR/dreem-api-client
python3 -m pip install .
cd "$PRJ_DIR/dreemonpy"

echo -e "\n\033[1mInstalling jsmn\033[0m"
sudo scripts/install_jsmn.sh ~/
cd "$PRJ_DIR/dreemonpy"

echo -e "\n\033[1mUpdating submodules\033[0m"
git submodule update --init --recursive

echo -e "\n\033[1mBuilding dreem algo\033[0m"
sudo scripts/build_algo_dreem.sh .

echo -e "\n\033[1mBulding cython\033[0m"
scripts/build_cython.sh

echo -e "\n\033[1mSetting PYTHONPATH\033[0m"
echo "export OLDPYTHONPATH=\$PYTHONPATH" >> $VIRTUAL_ENV/bin/postactivate
echo "export PYTHONPATH=$PRJ_DIR/dreemonpy" >> $VIRTUAL_ENV/bin/postactivate
echo "export PYTHONPATH=\$OLDPYTHONPATH" >> $VIRTUAL_ENV/bin/postdeactivate
echo "unset OLDPYTHONPATH" >> $VIRTUAL_ENV/bin/postdeactivate
