echo "Installing Homebrew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "Installing Brew Packages"
brew bundle --file=~/dev-config/macos/Brewfile
echo "Installing zsh config"
cp ~/dev-config/macos/zsh/root.zsh ~/.zshrc
echo "Installing nvim config"
rm -r ~/.config/nvim
cp -r ~/dev-config/nvim ~/.config/nvim


