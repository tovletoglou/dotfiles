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
- Give a template for `.gitattributes`
- Configure vim `.vimrc`

## How to use
- Clone the project in your home directory

        cd ~
        git clone git@gitlab.com:tovletoglou/dotfiles.git .

    Or download the [zip](https://github.com/tovletoglou/dotfiles/repository/archive.zip?ref=master) and extract the content in your home directory.

    Or browse the [repository](https://github.com/tovletoglou/dotfiles/tree/master) and download manually the files you want .

- Edit `.gitconfig` and change the `[user]name` and `[user]email`.

- Finally, restart your terminal.

## File explanation
| file            | description |
| ---             | --- |
| .bash_aliases   | Here we keep all the command abbreviations. By doing this we avoiding typing a long command sequence. |
| .bash_history   | Store all the commands you execute in the shell. We can quickly recall commands and navigate the terminal. |
| .bash_logout    | Execute commands when exiting the shell, like clear the terminal. |
| .bash_profile   | Execute commands when login in the shell. |
| .bashrc         | Execute commands when login in a sub-shell. This is the most important file because we call call it every time when we call the `.bash_profile`. It contains the calls to other files and functions and configure the shell. |
| .dir_colors     | Create environmental variables for colouring the shell (currently we don't use it). |
| .git_completion | Auto complete for git. |
| .git_prompt     | If you browse a directory that is a git repository you can see the repository status in your prompt. |
| .gitattributes  | Boiler plate for .gitattributes. It configures which files are text and which are not. |
| .gitconfig      | Boiler plate for .gitconfig. It configures git and adds git alias. Git alias are different from bash aliases. |
| .gitignore      | Boiler plate for .gitconfig. |
| .viminfo        | Default viminfo file. Here vim will automatically store cache and buffers. |
| .vimrc          | Configuration for vim text editor |

## Disclaimer
This is code & configuration snippets collection from various projects on GitHub. Many thanks to the OpenSource community.
