# THE FOLLOWING LINES DO THE JOB INSTALLING THE POETRY PROJECT
echo 'Local Virtualenv selected'
poetry config virtualenvs.in-project true
echo 'Installing project'
poetry install