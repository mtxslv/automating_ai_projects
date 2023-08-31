# UPDATING
echo 'Updating...'
sudo apt update

# INSTALLING PIP
echo 'Installing pip'
sudo apt -y install python3-pip

# PIP-INSTALLING VIRTUALENV
echo 'Installing virtualenv'
pip install virtualenv

# INSTALL PYENV: https://dev.to/womakerscode/instalando-o-python-com-o-pyenv-2dc7
echo 'Installing Pyenv...'
curl https://pyenv.run | bash
echo 'export PATH="$HOME/.pyenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(pyenv init --path)"' >> ~/.bashrc
echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.bashrc

# INSTALLING SUGGESTED BUILD DEPENDENCIES
echo 'Installing suggested build dependencies' # from https://github.com/pyenv/pyenv/wiki#suggested-build-environment 
sudo apt install build-essential libssl-dev zlib1g-dev \
libbz2-dev libreadline-dev curl \
libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev

# INSTALLING LIBRARIES NEED FOR PYTHON
echo 'Installing needed libraries' # i don't know if they are the only ones needed, need 2 try
sudo apt install libbz2-dev libssl-dev libreadline-dev -y # https://zditect.com/code/python/pyenv-installing-python-3100-openssl-issues--bashonubuntuonwindows.html
echo 'Installing libffi-dev for _ctypes'
sudo apt-get install libffi-dev # https://discuss.dizzycoding.com/python3-importerror-no-module-named-_ctypes-when-using-value-from-module-multiprocessing/
echo 'Installing libsqlite3-dev for _sqlite3'
sudo apt install libsqlite3-dev # https://stackoverflow.com/questions/43993890/modulenotfounderror-no-module-named-sqlite3
echo 'Installing liblzma-dev for _lzma'
sudo apt-get install liblzma-dev # https://stackoverflow.com/questions/57743230/userwarning-could-not-import-the-lzma-module-your-installed-python-is-incomple

# INSTALL PYTHON 3.9.10
echo 'Pyenv succesfully installed. To install a Python 3.9.10 run'
echo 'pyenv install 3.9.10'
exec $SHELL # https://github.com/pyenv/pyenv-installer
