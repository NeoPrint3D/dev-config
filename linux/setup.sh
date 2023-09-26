sudo apt update && sudo upgrade

sudo apt install zsh
sudo apt install exa
sudo apt install unzip

git config --global user.name "NeoPrint3D"
git config --global user.email "drew@ronsman.com"

git config --global credential.helper "/mnt/c/Program\ Files/Git/mingw64/bin/git-credential-manager.exe"



curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash


sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


curl -s https://ohmyposh.dev/install.sh | sudo bash -s


oh-my-posh font install

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions