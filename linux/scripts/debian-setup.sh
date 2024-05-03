sudo apt update && sudo upgrade
sudo apt install curl wget zsh
sudo apt install bat fzf ripgrep


sudo apt-get install ninja-build gettext libtool libtool-bin autoconf automake cmake g++ pkg-config unzip


curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh 

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


curl -s https://ohmyposh.dev/install.sh | sudo bash -s

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting




# Compile some tools from build time
sh ./packages/go.sh
sh ./packages/nvim.sh
go install https://github.com/jesseduffield/lazygit@latest
source ~/.zshrc
# Sync everything
sh sync.sh
