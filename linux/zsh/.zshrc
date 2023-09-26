# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export NVM_DIR="$HOME/.nvm"


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
    )

source $ZSH/oh-my-zsh.sh

eval "$(oh-my-posh init zsh --config $HOME/dev-configs/theme.omp.json)"


alias zshconfig="code ~/.zshrc"
alias ls="exa --icons"
alias vim=nvim



# I want tab to auto complete with out having to hit enter

bindkey '\t' autosuggest-accept



[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
