function Blue {
    process { Write-Host $_ -ForegroundColor Blue }
}

function Green {
    process { Write-Host $_ -ForegroundColor Green }
}

function Red {
    process { Write-Host $_ -ForegroundColor Red }
}

function Yellow {
    process { Write-Host $_ -ForegroundColor Yellow }
}

function Cyan {
    process { Write-Host $_ -ForegroundColor Cyan }
}

function Magenta {
    process { Write-Host $_ -ForegroundColor Magenta }
}

function White {
    process { Write-Host $_ -ForegroundColor White }
}

function Black {
    process { Write-Host $_ -ForegroundColor Black }
}

function DarkBlue {
    process { Write-Host $_ -ForegroundColor DarkBlue }
}

Set-Alias -Name vim -Value nvim

# Write-Output "----------------------------------------------------------------------------------------------------                                                                                                  
                                                                                                   

#                 .:~!?JY55555YJ?7~^.                                                                 
#            .^?5B#@@@@@@@@@@@@@@@@@&B5?~.                                                            
#         :7P#@@@@@&#GPYJ?????JY5GB&@@@@@&P?^           !.       ~57 .JY5555555555J    .~?Y5YJ!:      
#      .!P&@@@@B5?~.               .^75B@@@@@G7.        G&J.     ?@P .Y5J????????J7  .J&#PJ?J5B&G~    
#    .?#@@@@B?^   .~?YPBB#&&&##BP5?~:   :?G@@@@#Y:      !J#&Y:   7@P .##:           :B@J.      ~#@7   
#    !B@@&5^   ~YB&@@@@@@@@@@@@@@@@@&BY!.  ^Y&@@#7      BB^7#@5^ 7@P .&@BBBBBBBBB!  J@5         ~@#   
#      ~J:  :J#@@@@&G5?!~^:::^^!?YG&@@@@#Y^  :J!.       B@~  !B@PY@P .&@~:::::::^.  7@G         7@B   
#          ?@@@@&5!:      ...      .~Y#@@@@J            B@~    ~G@@P .&@:            Y@B!.    ^Y@B^   
#          .!PB?.   .!JPB#&&&#BPY!:   .7BG7.            B@~      ~P5 .&@GGGGGGGGGG5   ~5##BGGB#G7.    
#                 !P&@@@@@@@@@@@@@&G7.                  ^~.        .  ~~~!!!!!!!!!~      :~!~^.       
#                :P@@@BY7^:::^!JB@@@G^                                                                
#                  ^J!           ~J^                                                                  
                 
                 

# ----------------------------------------------------------------------------------------------------" | Cyan

# print out the date and time in a nice format

$time = Get-Date -Format "dddd, MMMM dd, yyyy HH:mm"

if ($env:TERM_PROGRAM -eq 'vscode') {
    # Write the date and time in a nice format
    Write-Output "
    ----------------------------------------

    Today is $time
    
    ----------------------------------------
    " | Blue
}
else {
    Write-Output "--------------------------------------------------------------------------------------" | White

    Write-Output "                                                                                                                                                                                                                                    
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
" | Magenta 


    Write-Output "--------------------------------------------------------------------------------------" | White

    Write-Output "

    Today is $time

    " | Blue

    Write-Output "--------------------------------------------------------------------------------------

    " | White
}


oh-my-posh init pwsh --config "$env:USERPROFILE\dev-config\theme.omp.json" | Invoke-Expression
# enable folder icons and enable intelisense
Import-Module Terminal-Icons
Import-Module PSReadLine
Set-PSReadLineKeyHandler -Key Tab -Function AcceptSuggestion


Import-Module Bash
