# push the ~/dev-config to the neovim dev-config
#
# Usage: ./push-nvim.sh
# remove the .config/nvim directory and copy the dev-config/nvim directory to the .config/nvim directory


rm -rf ~/.config/nvim
cp -r ~/dev-config/nvim ~/.config/nvim
