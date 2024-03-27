# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export NVM_DIR="$HOME/.nvm"
export EDITOR=nvim


Blue() {
    print -P "%F{blue}$@%f"
}

Green() {
    print -P "%F{green}$@%f"
}

Red() {
    print -P "%F{red}$@%f"
}

Yellow() {
    print -P "%F{yellow}$@%f"
}

Cyan() {
    print -P "%F{cyan}$@%f"
}

Magenta() {
    print -P "%F{magenta}$@%f"
}

White() {
    print -P "%F{white}$@%f"
}

Black() {
    print -P "%F{black}$@%f"
}

DarkBlue() {
    print -P "%F{blue}%K{black}$@%k%f"
}

if [[ $TERM_PROGRAM == 'vscode' ]]; then
    # Write the date and time in a nice format
    Blue "
    ----------------------------------------

    Today is $(date)

    ----------------------------------------
    "



else
    White "--------------------------------------------------------------------------------------"

    Magenta "
             .:~?YPGGBBGP5J!^.                                                       
         :?G&@@@@@@@@@@@@@@@@@@#5~.                                                  
      ~P&@@@@#57^..      .:~JG&@@@@#?.        G~      &B .BBBBBBBBBBJ   7G#BBBB5:    
   .J&@@@#J:   .^!J5PPPPY?~:   .~G@@@@B^      J&&7    @& .#?          :&&~.   .5@5   
   P@@@Y.  .JB@@@@@@@@@@@@@@@&P~   ~#@@&^     #Y~#&J  @& :@&GGGGGGB~  &@        J@~  
    .7  .J&@@@@BJ~:.   ..^7P&@@@@G^  ^~       @&  ^B@P@& :@P ......   B@:       P@^  
        P@@@5:    .:^~^:.    .7#@@&^          @&    .P@& :@G.........  G@P~:.:?#&~   
         .!   .7B&@@@@@@@@&5^   ^~            P5      .! .BGGGGGGGGG?   .7PGGPY~     
             ~@@@@B5?!7JG&@@@G                                                       
              .J?         :5~                                                                                     
"

    White "--------------------------------------------------------------------------------------"

    Blue "

    Today is $(date)

    "

    White "--------------------------------------------------------------------------------------

    "
fi



plugins=(
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
)


eval "$(oh-my-posh init zsh --config $HOME/dev-config/theme.omp.json)"


alias config="cd ~/dev-config && vim"
alias ls="exa --icons"
alias vim=nvim
alias lzg=lazygit
alias lzd=lazydocker


# I want tab to auto complete with out having to hit enter

bindkey '\t' autosuggest-accept



[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm


# place this after nvm initialization!
autoload -U add-zsh-hook

load-nvmrc() {
  local nvmrc_path
  nvmrc_path="$(nvm_find_nvmrc)"

  if [ -n "$nvmrc_path" ]; then
    local nvmrc_node_version
    nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

    if [ "$nvmrc_node_version" = "N/A" ]; then
      nvm install
    elif [ "$nvmrc_node_version" != "$(nvm version)" ]; then
      nvm use
    fi
  elif [ -n "$(PWD=$OLDPWD nvm_find_nvmrc)" ] && [ "$(nvm version)" != "$(nvm version default)" ]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}

add-zsh-hook chpwd load-nvmrc
load-nvmrc
# bun completions
[ -s "/home/drew/.bun/_bun" ] && source "/home/drew/.bun/_bun"
. "$HOME/.cargo/env"
