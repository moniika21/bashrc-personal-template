# Template for bash and zsh

## Colors aliases

You can use the `.colors` file to have a bunch of aliases for colors.  
These aliases use the **24-bit** or **true color** escape sequences.

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
- If not, you can copy/paste the code into `.zshrc` file or use a separate file.

### Bash

- You can rename the file into `.custom-aliases`, it is already charged in `.bashrc` file.

## Nvm autouse

### Zsh

For zsh, there is a section about nvm autouse:

- It run `nvm use` automatically every time there's
a `.nvmrc` file in the directory. Also, revert to default
version when entering a directory without `.nvmrc`.

## Languages

For languages there is `LANGUAGE` and `LC_ALL` environment variables to specify the language to be used widely on the system.

No need to have `LANG` [set](https://wiki.debian.org/Locale#line-35), the display language will be by default [other locale related environment variables](https://wiki.debian.org/Locale#Configuration).

Priority of these variables:

1. `LANGUAGE`
   - it can have one or more language values and is responsible for the order of the languages in which the messages will be displayed.
2. `LC_ALL`
   - it is the strongest locale environment variable, except for LANGUAGE

3. `LC_xxx`
4. `LANG`

The `C` and `C.UTF-8` value is for default language who are usually `en_US` and `en_US.UTF-8`

You can run [locale](https://manpages.debian.org/stable/manpages/locale.1.en.html) to list what locales currently defined for the current user account.

If you have problem with a locale then generate the missing locale with `locale-gen` and reconfigure locales to take notice.

[locale-gen](https://manpages.debian.org/stable/locales/locale-gen.8.en.html) is a program that reads the file `/etc/locale.gen` and invokes [localedef](https://manpages.debian.org/stable/manpages/localedef.1.en.html) for the chosen localisation profiles.

```bash
$ sudo locale-gen "en_US.UTF-8"
Generating locales...
  en_US.UTF-8... done
Generation complete.

$ sudo dpkg-reconfigure locales
Generating locales...
  en_US.UTF-8... up-to-date
Generation complete.
```
