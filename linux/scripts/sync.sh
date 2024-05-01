echo "Syncing root zsh config"
cp ~/dev-config/linux/zsh/root.zsh ~/.zshrc
echo "Syncing nvim config"
rm -r ~/.config/nvim
cp -r ~/dev-config/nvim ~/.config/nvim


