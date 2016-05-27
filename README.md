# My (dot)files

This is my home folder configuration (dot)files for `bash`, `git`, etc.

It works on Linux and Windows systems, (tested on Centos, RedHat, Ubuntu, Cygwin, MSYS2).

## What id does
- Configure bash (really...)
- Print login info
- Ignore typos then change directory
- Keep `.bash_history` fairly clean, without noise
- Add aliases on commands `.bash_aliases`
- Add auto autocomplete for git `.git_completion`
- Add auto autocomplete for npm
- Fancy prompt `PS1`, showing `user@host working_directory git_status new_line` and updates the terminal's title bar with the working directory
- Fancy `ls`
- Configure `git` `.gitconfig`
- Configure vim `.vimrc`

## How to use
- Clone the project in your home directory

        cd ~
        git clone git@gitlab.com:tovletoglou/dotfiles.git .
        
    Or download the [zip](https://gitlab.com/tovletoglou/dotfiles/repository/archive.zip?ref=master) and extract the content in your home directory.
   
    Or browse the [repository](https://gitlab.com/tovletoglou/dotfiles/tree/master) and download manually the files you want .

- Edit `.gitconfig` and change the `[user]name` and `[user]email`.

- Finally, restart your terminal.

## Disclaimer
This is code & configuration snippets collection from projects on GitHub. Many thanks to the OpenSource community.
