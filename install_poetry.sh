# INSTALL POETRY
echo 'Installing poetry'
curl -sSL  https://install.python-poetry.org | python -
echo 'Adding poetry to PATH environmental variable'
#export PATH="$HOME/.local/bin:$PATH" # export PATH="$HOME/.local/bin:$PATH"
echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc
echo "Poetry added to environmental variable"
exec $SHELL