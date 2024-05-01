sudo apt update && sudo upgrade
sudo apt install curl unzip zsh
sudo apt install bat fzf ripgrep


curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash


sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

curl -s https://ohmyposh.dev/install.sh | sudo bash -s

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

sh sync.sh
