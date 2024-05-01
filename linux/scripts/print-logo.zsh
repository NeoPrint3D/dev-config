
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
