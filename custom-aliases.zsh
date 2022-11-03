# $ZSH/.oh-my-zsh/custom/custom-aliases.zsh

# My aliases and exports
if [ -x "$(command -v nala)" ] # Nala installed
then
    alias install="sudo nala install"
    alias update="sudo nala update"
    alias upgrade="sudo nala upgrade"
    alias autoremove="sudo nala autoremove"
    alias maj="update && upgrade -y && autoremove -y"
else
    alias dl="sudo apt -qq update && echo 'n' | sudo apt upgrade 2>/dev/null | sed -n '/^Need to get/p'"
    alias install="sudo apt install"
    alias update="sudo apt update"
    alias upgrade="sudo apt upgrade"
    alias autoremove="sudo apt autoremove"
    alias maj="update -y && upgrade -y && autoremove -y"
fi