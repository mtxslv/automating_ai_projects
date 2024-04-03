# This shell kinda has the steps necessary to install omz
# in a ubuntu machine.
# A tutorial indicating how to do the stuff is found here
# https://dev.to/abdfnx/oh-my-zsh-powerlevel10k-cool-terminal-1no0
# But I also collected stuff from different sources

# Install ZSH
sudo apt-get install zsh

# Install OMZ 
# https://ohmyz.sh/#install
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Autocompletion Plugins
# https://gist.github.com/n1snt/454b879b8f0b7995740ae04c5fb5b7df
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
git clone https://github.com/zdharma-continuum/fast-syntax-highlighting.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/fast-syntax-highlighting
git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git $ZSH_CUSTOM/plugins/zsh-autocomplete
echo "To enable the autocompletion plugins, you should follow modify a line of .zshrc file. Check tutorial:"
echo "https://gist.github.com/n1snt/454b879b8f0b7995740ae04c5fb5b7df"

# PowerLevel10k Plugin
git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
echo "To enable the PowerLevel10k plugin, you should follow modify a line of .zshrc file. Check tutorial:"
echo "https://dev.to/abdfnx/oh-my-zsh-powerlevel10k-cool-terminal-1no0"
