echo "Installing zsh config"
cp ~/dev-config/linux/zsh/root.zsh ~/.zshrc
echo "Installing nvim config"
rm -r ~/.config/nvim
cp -r ~/dev-config/nvim ~/.config/nvim


