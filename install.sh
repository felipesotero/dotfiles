#!/bin/bash
set -euo pipefail

echo "Symlinking dotfiles"

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

for terminal_file in "${terminal_files[@]}"; do
    ln -s "$(pwd)/terminal/$terminal_file" "$HOME/$terminal_file"
done

ln -s "$(pwd)/Sublime/Packages" "$HOME/Library/Application Support/Sublime Text 3/Packages"

for git_file in "${git_files[@]}"; do
    ln -s "$(pwd)/git/$git_file" "$HOME/$git_file"
done
