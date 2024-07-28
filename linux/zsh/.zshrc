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
alias bat="batcat --theme=Dracula --plain --paging=never"
alias vim=nvim
# tuis aliases
alias lzg=lazygit
alias lzd=lazydocker
# dev-config aliases
alias config="cd ~/dev-config && vim"
alias reload="source ~/.zshrc"
alias sync="sh ~/dev-config/linux/scripts/sync.sh"
alias upgrade="sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y"
alias omp-upgrade="sudo rm /usr/local/bin/oh-my-posh && curl -s https://ohmyposh.dev/install.sh | sudo bash -s -- -d /usr/local/bin"
bindkey '\t' autosuggest-accept

# bun completions
[ -s "/home/drew/.bun/_bun" ] && source "/home/drew/.bun/_bun"

# pnpm
export PNPM_HOME="/home/drew/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
