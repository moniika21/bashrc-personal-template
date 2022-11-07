# Template for bash and zsh

## Colors aliases
You can use the `.colors` file to have a bunch of aliases for colors.  
These aliases use the `24-bit` or `true color` escape sequences.

This naming convention follow this rule:
- `\e[38;2;⟨r⟩;⟨g⟩;⟨b⟩m` Select RGB foreground color
- `\e[48;2;⟨r⟩;⟨g⟩;⟨b⟩m` Select RGB background color

And `\e[0m` after a sentence to reset all attributes.

## Aliases
These aliases checks if [Nala](https://gitlab.com/volian/nala) is installed, if not, it will juste use the standard package manager tool.

It is only implemented at the moment for debian-based ditributions with use of [Apt](https://en.wikipedia.org/wiki/APT_(software)).

### Zsh

#### [Oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh)
- If you have it installed, you have to put `custom-aliases.zsh` into the `$HOME/.oh-my-zsh/custom` folder.
- If not, you can copy/paste the code into `.zshrc/.bashrc` file or use a separate file.

### Bash
- You can rename the file into `.custom-aliases`, it is already charged in `.bashrc` file.

## Nvm autouse

### Zsh
For zsh, there is a section about nvm autouse:
- It run `nvm use` automatically every time there's
a `.nvmrc` file in the directory. Also, revert to default
version when entering a directory without `.nvmrc`.