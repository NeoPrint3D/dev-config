# Install required packages
sudo dnf install curl wget zsh bat fzf ripgrep ninja-build gettext libtool libtool-bin autoconf automake cmake g++ pkg-config unzip

# Install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash

# Install Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install Oh My Posh
curl -s https://ohmyposh.dev/install.sh | sudo bash -s

# Install zsh plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Compile some tools from build time
sh ./packages/go.sh
sh ./packages/nvim.sh
go install https://github.com/jesseduffield/lazygit@latest
source ~/.zshrc

# Sync everything
sh sync.sh
