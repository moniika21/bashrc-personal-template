# $ZSH/.oh-my-zsh/custom/custom-aliases.zsh

# My aliases and exports
alias dl="sudo apt -qq update && echo 'n' | sudo apt upgrade 2>/dev/null | sed -n '/^Need to get/p'"
alias maj="sudo apt -y update && sudo apt -y full-upgrade"
alias s="cd .."
alias findlogs="find /var/log/ -type f \! -regex '^.*\.\([0-9]\|gz\|dat\)' | xargs tail -n0 -f"
