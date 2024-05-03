zsh ~/dev-config/linux/scripts/print-logo.zsh
plugins=(
  zsh-syntax-highlighting
  zsh-autosuggestions
)
source $ZSH_HOME/oh-my-zsh.sh
source ~/dev-config/linux/zsh/.zshenv
eval "$(oh-my-posh init zsh --config $HOME/dev-config/theme.omp.json)"

# defualt overrides
alias ls="exa --icons"
alias cat="bat --theme=Dracula"
alias vim=nvim
# tuis aliases
alias lzg=lazygit
alias lzd=lazydocker
# dev-config aliases
alias config="cd ~/dev-config && vim"
alias reload="source ~/.zshrc"
alias sync="sh ~/dev-config/linux/scripts/sync.sh"
alias upgrade="sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y"

bindkey '\t' autosuggest-accept
