# automating_ai_projects
Shell files capable of automating the creation of data science projects. Some tutorials are provided.

# [TUTORIAL FOR WSL](https://github.com/mtxslv/automating_ai_projects/blob/main/tutorial.md)
If you are on Windows and have to work with an Ubuntu project you'll need to use Windows Subsystem for Linux. This tutorial will guide you to set up pyenv and poetry semi-automatically. It assumes you already installed [VSCode](https://code.visualstudio.com/download) and [Git Bash](https://git-scm.com/download/win) and have your project locally available.

In order to download [Windows Subsystem for Linux](https://docs.microsoft.com/pt-br/windows/wsl/install), do the following:

1. Open powershell in adm mode;
2. Type and run ```wsl --install -d Ubuntu```;
3. Once installed, choose login and password for the sub-system;

Now you will have to connect [WSL-Ubuntu to VSCode](https://code.visualstudio.com/docs/remote/wsl):

4. Install the [**Remote Development**](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.vscode-remote-extensionpack) in your VSCode, by using VSCode's Extensions;
5. Go into your project folder, and on the path (top part of the window), type: ```powershell```;
6. In the shell window type ```wsl``` (notice the shell changes);
7. Type ```code .``` (the VS Code Server will be installed the first time you run this);

In this moment your WSL-Ubuntu is correctly connected to VSCode (notice the message at the bottom left green box). Now you need to configure the Ubuntu for your project (that is, installing python, pyenv and poetry). Luckly you don't need to do it by hand, since there are some shell scripts that do the job for you. 

8. Put the shell scripts in you project's folder;
9. Change the selected end of line sequence in VSCode to 'LF' so [the shell file will be executed correctly](https://stackoverflow.com/questions/55258430/e-invalid-operation-update-error-while-running-shell-scripts-in-wsl);
10. Run the pyenv instalation script by running ```./install_pyenv.sh``` (this installs pyenv for you).
11. Once the ```install_pyenv.sh``` script stops, run ```pyenv install 3.9.10```;
12. Make your python version global by running ```pyenv global 3.9.10```;
13. Close the terminal and run the poetry installation script ```./install_poetry.sh``` (this installs poetry for you);

Now you just need to install/create your poetry project:

14. After closing the previous shell and opening another one, run ```install_project.sh```. If you prefer, you can iteratively create a brand-new, fresh project with ```create_default_project.sh```. 

**OBS:** 
In case you are not happy with the software and decide to try something different, and it is necessary to uninstall poetry and pyenv, you can do the following:
* To uninstall poetry, run in your terminal: ```curl -sSL  https://install.python-poetry.org | python - --uninstall```. You will need to remove `export PATH="$HOME/.local/bin:$PATH"` from your _.bashrc_ file also;
* To uninstall pyenv, follow [the documentation steps for uninstalling](https://github.com/pyenv/pyenv-installer#uninstall). [In case you need to modify a text file using shell, open it using vi and, once modified, write and quit using `:wq`](https://stackoverflow.com/questions/35695160/how-to-edit-a-text-file-in-my-terminal). You can check if the text file was modified using `cat`.

Happy coding! ;)
