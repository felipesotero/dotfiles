#!/bin/bash
set -euo pipefail


terminal_files=(
    ".bash_profile"
    ".zshrc"
    ".bashrc"
)

Sublime=(
    "Packages"
)

git_files=(
    ".gitconfig"
)

# Check git version and install if necessary:
git --version

# Install Oh My Zosh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install all the terminal files
echo "Symlinking dotfiles"
for terminal_file in "${terminal_files[@]}"; do
    ln -sf "$(pwd)/terminal/$terminal_file" "$HOME/$terminal_file"
done

# Install auto suggestion
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Link Sublime settings
echo "Symlinking Sublime Packages"
ln -sf "$(pwd)/Sublime/Packages" "$HOME/Library/Application Support/Sublime Text 3/"

# Install sublime config
echo "Symlinking git configuration files"
for git_file in "${git_files[@]}"; do
    ln -sf "$(pwd)/git/$git_file" "$HOME/$git_file"
done

# Install brew
echo "Installing brew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install SDKMAN
echo "Installing SDKMAN"
curl -s "https://get.sdkman.io" | bash

# Install global Python packages
echo "Installing global pip packages"
pip install -r python/requirements.txt
