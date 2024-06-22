###### Configuration ######

# Color definitions
YELLOW='\[\033[0;33m\]'
BLUE='\[\033[0;34m\]'
GREEN='\[\033[0;32m\]'
RED='\[\033[0;31m\]'
PURPLE='\[\033[0;35m\]'
RESET='\[\033[0m\]'

# Custom PS1 prompt
PS1="${GREEN}\u${YELLOW}@${BLUE}\h ${RED}\w${RESET} \$ "

# Set terminal title
echo -ne "\033]0;${GREEN}\u${YELLOW}@${BLUE}\h${RESET}\007"

# Alias to list directories with colors matching the scheme
alias ls='ls --color=auto'
export LS_COLORS='di=1;34:ln=1;36:so=1;35:pi=1;33:ex=1;32:bd=1;33;40:cd=1;33;40:su=0;41:sg=0;46:tw=0;42:ow=0;43:'

###### Other settings and customizations ######

# environment variables
export PATH=$PATH:$HOME/local/bin:$HOME/local/share:/usr/bin:/usr/sbin:/usr/local/bin
export DOTNET_CLI_TELEMETRY_OPTOUT="true"
export EDITOR="vim"
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# aliases
alias ll='ls -la'
alias pkg-update='doas apt-get update && doas apt-get upgrade -y && nix-channel --update nixpkgs && flatpak update'
alias iommu-groups='$HOME/.scripts/iommu.sh'
alias qemu-commands='batcat /mnt/SEAGATE_HDD/Personal\ Files/System\ Stuffs/QEMU/Commands.txt'

# autostart
fastfetch

# Load Angular CLI autocompletion.
source <(ng completion script)
