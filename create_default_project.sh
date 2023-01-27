# Creating folder
echo 'Tell me the name of the folder'
read FOLDER # ask name of the folder
echo 'Creating folder...'
mkdir $FOLDER # create folder
cd $FOLDER # go to folder
# Initializing git, pyenv and poetry
echo 'Initializing git...'
git init
echo 'Initializing pyenv...'
echo 'Python 3.9.10 selected'
pyenv local 3.9.10
echo 'Initializing poetry...'
poetry init -n
poetry config virtualenvs.in-project true
poetry env use 3.9.10
# Creating package 
echo 'Tell me the name of the poetry package' # ask name of the 'package'
read PACKAGE # ask name of the 'package'
echo 'Creating package...'
mkdir $PACKAGE # create package folder
touch $PACKAGE/__init__.py # create __init__.py inside package
echo 'Installing package...'
poetry install
poetry shell
# Installing default libraries
echo 'Installing default libraries...'
poetry add pandas # numpy installed alongside
poetry add xgboost # scipy installed alongside
poetry add matplotlib
poetry add scikit-learn
poetry add mlflow
# Creating default folders
echo 'Creating default folders...'
mkdir notebooks
mkdir workflow
mkdir tests
# Adding everything in Git
echo 'Adding everything in Git...'
git add .python-version
git commit -m "python version definition"
git add poetry.lock pyproject.toml
git commit -m "poetry files added"
git add .
git commit -m "package first commit"
