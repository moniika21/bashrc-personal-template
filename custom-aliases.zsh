# $ZSH/.oh-my-zsh/custom/custom-aliases.zsh

# My aliases and exports
alias dl="sudo apt -qq update && echo 'n' | sudo apt upgrade 2>/dev/null | sed -n '/^Need to get/p'"
alias maj="sudo apt -y update && sudo apt -y full-upgrade && sudo apt -y autoremove"
