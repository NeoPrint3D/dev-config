# Set environment variables
export ZSH_HOME="$HOME/.oh-my-zsh"
export NVM_HOME="$HOME/.nvm"
export BUN_HOME="$HOME/.bun"

export GO_HOME="$HOME/go"
export GOPATH="$GO_HOME"
export GOMODCACHE="$HOME/go/pkg/mod"

export ANDROID_HOME=$HOME/Library/Android/sdk
export JAVA_HOME="$(/usr/libexec/java_home -v 17)"
export MAVEN_HOME="/usr/local/apache-maven-3.9.6/"

export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:$ANDROID_HOME/cmdline-tools/latest/bin"
export PATH="$PATH:$ANDROID_HOME/platform-tools"
export PATH="$PATH:$MAVEN_HOME/bin"
export PATH="$PATH:$JAVA_HOME/bin"
export PATH="$PATH:/usr/local/go/bin"
export PATH="$PATH:$GOPATH/bin"
export PATH="$PATH:$BUN_HOME/bin"
export PATH="$PATH:$DENO_INSTALL/bin"
export PATH="$PATH:/opt/nvim-linux-x86_64/bin"
export PATH="$PATH:$HOME/osmedeus-base/binaries"
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH="$PATH:/Applications/WezTerm.app/Contents/MacOS"
export CAPACITOR_ANDROID_STUDIO_PATH="/opt/android-studio/bin/studio.sh"
[ -s "$BUN_HOME/_bun" ] && source "$BUN_HOME/_bun"
export NVM_DIR="$HOME/.nvm"
[ -s "$(brew --prefix nvm)/nvm.sh" ] && \. "$(brew --prefix nvm)/nvm.sh"                                       # This loads nvm
[ -s "$(brew --prefix nvm)/etc/bash_completion.d/nvm" ] && \. "$(brew --prefix nvm)/etc/bash_completion.d/nvm" # This loads nvm bash_completion

export BAT_THEME="Catppuccin Macchiato"
export EDITOR=nvim
